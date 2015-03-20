# global atom

"use strict"
pkg = require('../package.json')
# Dependencies
plugin = module.exports
_ = require("lodash")
beautifier = require("./language-options")
languages = beautifier.languages
defaultLanguageOptions = beautifier.defaultLanguageOptions
options = require "./options"
# Lazy loaded dependencies
fs = null
path = require("path")
strip = null
yaml = null
async = null
dir = null # Node-Dir
LoadingView = null
MessagePanelView = null
PlainMessageView = null
$ = null
#MessageView = require "./message-view"

# function cleanOptions(data, types) {
#   nopt.clean(data, types);
#   return data;
# }
getCursors = (editor) ->
  cursors = editor.getCursors()
  posArray = []
  for cursor in cursors
    bufferPosition = cursor.getBufferPosition()
    posArray.push [
      bufferPosition.row
      bufferPosition.column
    ]
  posArray

setCursors = (editor, posArray) ->
  # console.log "setCursors: #{posArray}"
  for bufferPosition, i in posArray
    if i is 0
      editor.setCursorBufferPosition bufferPosition
      continue
    editor.addCursorAtBufferPosition bufferPosition
  return

beautify = ({onSave}) ->
  path ?= require("path")
  MessagePanelView ?= require('atom-message-panel').MessagePanelView
  PlainMessageView ?= require('atom-message-panel').PlainMessageView
  LoadingView ?= require "./loading-view"
  @messagePanel ?= new MessagePanelView title: 'Atom Beautify Error Messages'
  @loadingView ?= new LoadingView()
  @loadingView.show()
  forceEntireFile = onSave && atom.config.get("atom-beautify.beautifyEntireFileOnSave")
  # Show error
  showError = (e) =>
      @loadingView.hide()
      if not atom.config.get("atom-beautify.muteAllErrors")
        # console.log(e)
        @messagePanel.attach()
        @messagePanel.add(new PlainMessageView({
          message: e.message,
          className: 'text-error'
        }))

  # Get the path to the config file
  # All of the options
  # Listed in order from default (base) to the one with the highest priority
  # Left = Default, Right = Will override the left.
  # Atom Editor
  #
  # User's Home path
  # Project path
  # Asynchronously and callback-style
  beautifyCompleted = (text) =>
    # console.log 'beautifyCompleted'
    if not text?
      # Do nothing, is undefined
    else if text instanceof Error
      showError(text)
    else if typeof text is "string"
      if oldText isnt text
        # console.log "Replacing current editor's text with new text"
        posArray = getCursors(editor)
        # console.log "posArray: #{posArray}"
        origScrollTop = editor.getScrollTop()
        # console.log "origScrollTop: #{origScrollTop}"
        if not forceEntireFile and isSelection
          selectedBufferRange = editor.getSelectedBufferRange()
          # console.log "selectedBufferRange: #{selectedBufferRange}"
          editor.setTextInBufferRange selectedBufferRange, text
        else
          # console.log "setText"
          editor.setText text
        # console.log "setCursors"
        setCursors editor, posArray
        # console.log "Done setCursors"
        # Let the scrollTop setting run after all the save related stuff is run,
        # otherwise setScrollTop is not working, probably because the cursor
        # addition happens asynchronously
        setTimeout (->
          # console.log "setScrollTop"
          editor.setScrollTop origScrollTop
          return
        ), 0
    else
      showError(new Error("Unsupported beautification result '#{text}'."))
    # else
      # console.log "Already Beautiful!"
    @loadingView.hide()
    return
  # console.log 'Beautify time!'

  # Get current editor
  editor = atom.workspace.getActiveTextEditor()
  # Check if there is an active editor
  if not editor?
    return showError(new Error("Active Editor not found. "
                "Please select a Text Editor first to beautify."))

  isSelection = !!editor.getSelectedText()
  # Get editor path and configurations for paths
  editedFilePath = editor.getPath()
  # Get all options
  allOptions = options.getOptionsForPath(editedFilePath, editor)

  # Get current editor's text
  text = undefined
  if not forceEntireFile and isSelection
    text = editor.getSelectedText()
  else
    text = editor.getText()
  oldText = text
  # Get Grammar
  grammarName = editor.getGrammar().name
  # Finally, beautify!
  try
    beautifier.beautify text, grammarName, allOptions, beautifyCompleted
  catch e
    showError(e)
  return

beautifyFilePath = (filePath, callback) ->
  # Show in progress indicate on file's tree-view entry
  $ ?= require("space-pen").$
  $el = $(".icon-file-text[data-path=\"#{filePath}\"]")
  $el.addClass('beautifying')
  # Cleanup and return callback function
  cb = (err, result) ->
    $el = $(".icon-file-text[data-path=\"#{filePath}\"]")
    $el.removeClass('beautifying')
    return callback(err, result)
  # Get contents of file
  fs ?= require "fs"
  fs.readFile(filePath, (err, data) ->
    return cb(err) if err
    input = data?.toString()
    grammar = atom.grammars.selectGrammar(filePath, input)
    grammarName = grammar.name
    # Get the options
    allOptions = options.getOptionsForPath(filePath)
    # Beautify File
    completionFun = (output) ->
      if output instanceof Error
        return cb(output, null) # output == Error
      else if typeof output is "string"
        fs.writeFile(filePath, output, (err) ->
            return cb(err) if err
            return cb(null, output)
        )
      else
        return cb(new Error("Unknown beautification result #{output}."), output)
    try
      beautifier.beautify input, grammarName, allOptions, completionFun
    catch e
      return cb(e)
  )

beautifyFile = ({target}) ->
  filePath = target.dataset.path
  return unless filePath
  beautifyFilePath(filePath, (err, result) ->
      return console.error('beautifyFile error', err, result) if err
      # console.log("Beautify File #{filePath} complete with result: ", result)
  )
  return

beautifyDirectory = ({target}) ->
  dirPath = target.dataset.path
  return unless dirPath
  # Show in progress indicate on directory's tree-view entry
  $ ?= require("space-pen").$
  $el = $(".icon-file-directory[data-path=\"#{dirPath}\"]")
  $el.addClass('beautifying')
  # Process Directory
  dir ?= require "node-dir"
  async ?= require "async"
  dir.files(dirPath, (err, files) ->
    return console.error('beautifyDirectory error', err) if err
    async.each(files, (filePath, callback) ->
      # Ignore errors
      beautifyFilePath(filePath, -> callback())
    , (err) ->
      $el = $(".icon-file-directory[data-path=\"#{dirPath}\"]")
      $el.removeClass('beautifying')
      # console.log('Completed beautifying directory!', dirPath)
    )
  )
  return

debug = () ->

    # Get current editor
    editor = atom.workspace.getActiveTextEditor()
    # Check if there is an active editor
    if not editor?
        return confirm("Active Editor not found.\n"+
                    "Please select a Text Editor first to beautify.")

    return unless confirm('Are you ready to debug Atom Beautify?\n\n'+
        'Warning: This will change your current clipboard contents.')

    debugInfo = ""
    addInfo = (key, val) ->
        debugInfo += "**#{key}**: #{val}\n\n"

    addHeader = (level, title) ->
        debugInfo += "#{Array(level+1).join('#')} #{title}\n\n"

    addHeader(1, "Atom Beautify - Debugging information")

    debugInfo += "The following debugging information was " +
        "generated by `Atom Beautify` on `#{new Date()}`."+
        "\n\n---\n\n"

    # Platform
    addInfo('Platform', process.platform)

    addHeader(2, "Versions")

    # Atom Version
    addInfo('Atom Version', atom.appVersion)

    # Atom Beautify Version
    addInfo('Atom Beautify Version', pkg.version)

    addHeader(2, "Original file to be beautified")

    # Original file

    # Get editor path and configurations for paths
    filePath = editor.getPath()
    # Path
    addInfo('Original File Path', "`#{filePath}`")

    # Get Grammar
    grammarName = editor.getGrammar().name
    # Grammar
    addInfo('Original File Grammar', grammarName)

    # Contents
    # Get current editor's text
    text = editor.getText()
    addInfo('Original File Contents', "\n```#{grammarName}\n#{text}\n```")

    addHeader(2, "Beautification options")

    # Beautification Options
    # Get all options
    allOptions = options.getOptionsForPath(filePath, editor)
    [
      editorOptions
      configOptions
      homeOptions
      editorConfigOptions
    ] = allOptions
    projectOptions = allOptions[4..]

    addInfo('Editor Options', "\n"+
        "Options from Atom Editor settings\n"+
        "```json\n#{JSON.stringify(editorOptions, undefined, 4)}\n```")
    addInfo('Config Options', "\n"+
        "Options from Atom Beautify package settings\n"+
        "```json\n#{JSON.stringify(configOptions, undefined, 4)}\n```")
    addInfo('Home Options', "\n"+
        "Options from `#{path.resolve(options.getUserHome(), '.jsbeautifyrc')}`\n"+
        "```json\n#{JSON.stringify(homeOptions, undefined, 4)}\n```")
    addInfo('EditorConfig Options', "\n"+
        "Options from [EditorConfig](http://editorconfig.org/) file\n"+
        "```json\n#{JSON.stringify(editorConfigOptions, undefined, 4)}\n```")
    addInfo('Project Options', "\n"+
        "Options from `.jsbeautifyrc` files starting from directory `#{path.dirname(filePath)}` and going up to root\n" +
        "```json\n#{JSON.stringify(projectOptions, undefined, 4)}\n```")


    addHeader(2, "Logs")

    # Error logs
    addInfo('Error logs', '*Not yet supported*')

    # Save to clipboard
    atom.clipboard.write(debugInfo)

    confirm('Atom Beautify debugging information is now in your clipboard.\n'+
    'You can now paste this into an Issue you are reporting here\n'+
    'https://github.com/Glavin001/atom-beautify/issues/ \n\n'+
    'Warning: Be sure to look over the debug info before you send it,
    to ensure you are not sharing undesirable private information.')

handleSaveEvent = =>
  atom.workspace.observeTextEditors (editor) =>
    buffer = editor.getBuffer()
    plugin.unsubscribe buffer
    if atom.config.get("atom-beautify.beautifyOnSave")
      events = "will-be-saved"
      plugin.subscribe buffer, events, beautify.bind(@, {onSave:true})
    return
  return

{Subscriber} = require path.join(atom.packages.resourcePath, 'node_modules', 'emissary')
Subscriber.extend plugin
plugin.config = _.merge(
  analytics:
    type: 'boolean'
    default: true
    description: "Automatically send usage information (NEVER CODE) to Google Analytics"
  _analyticsUserId:
    type: 'string'
    default: ""
    description: "Unique identifier for this user for tracking usage analytics"
  beautifyOnSave:
    type: 'boolean'
    default: false
    description: "Beautify active editor on save"
  beautifyEntireFileOnSave:
    type: 'boolean'
    default: true
    description: "When beautifying on save, use the entire file, even if there is selected text in the editor"
  muteUnsupportedLanguageErrors:
    type: 'boolean'
    default: false
    description: "Do not show \"Unsupported Language\" errors when they occur"
  muteAllErrors:
    type: 'boolean'
    default: false
    description: "Do not show any/all errors when they occur"
  disabledLanguages:
    type: 'array'
    default: []
    items:
      type: 'string'
    description: "An array of languages/grammars to disable Beautification for"
, defaultLanguageOptions)
plugin.activate = ->
  handleSaveEvent()
  plugin.subscribe atom.config.observe("atom-beautify.beautifyOnSave", handleSaveEvent)
  atom.commands.add "atom-workspace", "beautify:beautify-editor", beautify
  atom.commands.add "atom-workspace", "beautify:help-debug-editor", debug
  atom.commands.add ".tree-view .file .name", "beautify:beautify-file", beautifyFile
  atom.commands.add ".tree-view .directory .name", "beautify:beautify-directory", beautifyDirectory

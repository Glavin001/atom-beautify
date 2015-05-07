# global atom
"use strict"
pkg = require('../package.json')

# Dependencies
plugin = module.exports
_ = require("lodash")
Beautifiers = require("./beautifiers")
beautifier = new Beautifiers()
defaultLanguageOptions = beautifier.options

# Lazy loaded dependencies
fs = null
path = require("path")
strip = null
yaml = null
async = null
dir = null # Node-Dir
LoadingView = null
$ = null

# function cleanOptions(data, types) {
# nopt.clean(data, types);
# return data;
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

  # console.log "setCursors:
  for bufferPosition, i in posArray
    if i is 0
      editor.setCursorBufferPosition bufferPosition
      continue
    editor.addCursorAtBufferPosition bufferPosition
  return
beautify = ({onSave}) ->

  # Deprecation warning for beautify on save
  if atom.config.get("atom-beautify.beautifyOnSave") is true
    detail = """See issue https://github.com/Glavin001/atom-beautify/issues/308

      To stop seeing this message:
      - Uncheck (disable) the deprecated \"Beautify On Save\" option

      To enable Beautify on Save for a particular language:
      - Go to Atom Beautify's package settings
      - Find option for \"Language Config - <Your Language> - Beautify On Save\"
      - Check (enable) Beautify On Save option for that particular language

      """

    atom?.notifications.addWarning("The option \"atom-beautify.beautifyOnSave\" has been deprecated", {detail, dismissable : true})

  # Continue beautifying
  path ?= require("path")
  LoadingView ?= require "./views/loading-view"
  @loadingView ?= new LoadingView()
  @loadingView.show()
  forceEntireFile = onSave and atom.config.get("atom-beautify.beautifyEntireFileOnSave")


  # Show error
  showError = (error)=>
    @loadingView.hide()
    if not atom.config.get("atom-beautify.muteAllErrors")

      # console.log(e)
      stack = error.stack
      detail = error.message
      atom.notifications?.addError(error.message, {
        stack, detail, dismissable : true})

  # Get the path to the config file
  # All of the options
  # Listed in order from default (base) to the one with the highest priority
  # Left = Default, Right = Will override the left.
  # Atom Editor
  #
  # User's Home path
  # Project path
  # Asynchronously and callback-style
  beautifyCompleted = (text)=>

    # console.log 'beautifyCompleted'
    if not text?


    # Do nothing, is undefined
    else if text instanceof Error
      showError(text)
    else if typeof text is "string"
      if oldText isnt text

        # console.log "Replacing current editor's text with new text"
        posArray = getCursors(editor)


        # console.log "posArray:
        origScrollTop = editor.getScrollTop()


        # console.log "origScrollTop:
        if not forceEntireFile and isSelection
          selectedBufferRange = editor.getSelectedBufferRange()


          # console.log "selectedBufferRange:
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
        setTimeout ( ->

          # console.log "setScrollTop"
          editor.setScrollTop origScrollTop
          return
        ), 0
    else
      showError( new Error("Unsupported beautification result '#{text}'."))

    # else
    # console.log "Already Beautiful!"
    @loadingView.hide()
    return

  # console.log 'Beautify time!'
  #
  # Get current editor
  editor = atom.workspace.getActiveTextEditor()


  # Check if there is an active editor
  if not editor?
    return showError( new Error("Active Editor not found. "
      "Please select a Text Editor first to beautify."))
  isSelection = !!editor.getSelectedText()


  # Get editor path and configurations for paths
  editedFilePath = editor.getPath()


  # Get all options
  allOptions = beautifier.getOptionsForPath(editedFilePath, editor)


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
    beautifier.beautify(text, allOptions, grammarName, editedFilePath, onSave : onSave)
    .then(beautifyCompleted)
    .catch(beautifyCompleted)
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
    allOptions = beautifier.getOptionsForPath(filePath)


    # Beautify File
    completionFun = (output) ->
      if output instanceof Error
        return cb(output, null ) # output == Error
      else if typeof output is "string"
        fs.writeFile(filePath, output, (err) ->
          return cb(err) if err
          return cb( null , output)
        )
      else
        return cb( new Error("Unknown beautification result #{output}."), output)
    try
      beautifier.beautify(input, allOptions, grammarName, filePath)
      .then(completionFun)
      .catch(completionFun)
    catch e
      return cb(e)
    )
beautifyFile = ({target}) ->
  filePath = target.dataset.path
  return unless filePath
  beautifyFilePath(filePath, (err, result) ->
    return console.error('beautifyFile error', err, result) if err

  # console.log("Beautify File
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
    return confirm("Active Editor not found.\n" +
    "Please select a Text Editor first to beautify.")
  return unless confirm('Are you ready to debug Atom Beautify?\n\n' +
  'Warning: This will change your current clipboard contents.')
  debugInfo = ""
  addInfo = (key, val) ->
    debugInfo += "**#{key}**: #{val}\n\n"
  addHeader = (level, title) ->
    debugInfo += "#{Array(level+1).join('#')} #{title}\n\n"
  addHeader(1, "Atom Beautify - Debugging information")
  debugInfo += "The following debugging information was " +
  "generated by `Atom Beautify` on `#{new Date()}`." +
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
  #
  # Get editor path and configurations for paths
  filePath = editor.getPath()


  # Path
  addInfo('Original File Path', "`#{filePath}`")


  # Get Grammar
  grammarName = editor.getGrammar().name


  # Grammar
  addInfo('Original File Grammar', grammarName)


  # Get current editor's text
  text = editor.getText()


  # Contents
  codeBlockSyntax = grammarName.toLowerCase().split(' ')[0]
  addInfo('Original File Contents', "\n```#{codeBlockSyntax}\n#{text}\n```")
  addHeader(2, "Beautification options")


  # Beautification Options
  # Get all options
  allOptions = beautifier.getOptionsForPath(filePath, editor)
  [
    editorOptions
    configOptions
    homeOptions
    editorConfigOptions
  ] = allOptions
  projectOptions = allOptions[4..]
  addInfo('Editor Options', "\n" +
  "Options from Atom Editor settings\n" +
  "```json\n#{JSON.stringify(editorOptions, undefined, 4)}\n```")
  addInfo('Config Options', "\n" +
  "Options from Atom Beautify package settings\n" +
  "```json\n#{JSON.stringify(configOptions, undefined, 4)}\n```")
  addInfo('Home Options', "\n" +
  "Options from `#{path.resolve(beautifier.getUserHome(), '.jsbeautifyrc')}`\n" +
  "```json\n#{JSON.stringify(homeOptions, undefined, 4)}\n```")
  addInfo('EditorConfig Options', "\n" +
  "Options from [EditorConfig](http://editorconfig.org/) file\n" +
  "```json\n#{JSON.stringify(editorConfigOptions, undefined, 4)}\n```")
  addInfo('Project Options', "\n" +
  "Options from `.jsbeautifyrc` files starting from directory `#{path.dirname(filePath)}` and going up to root\n" +
  "```json\n#{JSON.stringify(projectOptions, undefined, 4)}\n```")
  logs = ""
  logger = require('./logger')(__filename)
  subscription = logger.onLogging((msg) ->

    # console.log('logging', msg)
    logs += msg
  )
  cb = (result) ->
    subscription.dispose()
    addHeader(2, "Results")


    # Logs
    addInfo('Beautified File Contents', "\n```#{codeBlockSyntax}\n#{result}\n```")
    addInfo('Logs', "\n```\n#{logs}\n```")


    # Save to clipboard
    atom.clipboard.write(debugInfo)
    confirm('Atom Beautify debugging information is now in your clipboard.\n' +
    'You can now paste this into an Issue you are reporting here\n' +
    'https://github.com/Glavin001/atom-beautify/issues/ \n\n' +
    'Warning: Be sure to look over the debug info before you send it,
        to ensure you are not sharing undesirable private information.'
    )
  try
    beautifier.beautify(text, allOptions, grammarName, filePath)
    .then(cb)
    .catch(cb)
  catch e
    return cb(e)
handleSaveEvent = =>
  atom.workspace.observeTextEditors (editor) =>
    buffer = editor.getBuffer()
    disposable = buffer.onDidSave(({path : filePath}) =>
      path ?= require('path')
      # Get Grammar
      grammar = editor.getGrammar().name
      # Get language
      fileExtension = path.extname(filePath)
      languages = beautifier.languages.getLanguages({grammar, fileExtension})
      if languages.length < 1
        return
      # TODO: select appropriate language
      language = languages[0]
      # Get language config
      beautifyOnSave = atom.config.get("atom-beautify.language_#{language.namespace}_beautify_on_save")
      if beautifyOnSave
        beautifyFilePath(filePath, ->
          buffer.reload()
        )
      )
    plugin.subscribe disposable
{Subscriber} = require path.join(atom.packages.resourcePath, 'node_modules', 'emissary')
Subscriber.extend plugin
plugin.config = _.merge(
  analytics :
    type : 'boolean'
    default : true
    description : "Automatically send usage information (NEVER CODE) to Google Analytics"
  _analyticsUserId :
    type : 'string'
    default : ""
    description : "Unique identifier for this user for tracking usage analytics"
  _loggerLevel :
    type : 'string'
    default : 'warn'
    description : 'Set the level for the logger'
    enum : ['verbose', 'debug', 'info', 'warn', 'error']
  beautifyOnSave :
    title : "DEPRECATED: Beautfy On Save"
    type : 'boolean'
    default : false
    description : "Beautify active editor on save"
  beautifyEntireFileOnSave :
    type : 'boolean'
    default : true
    description : "When beautifying on save, use the entire file, even if there is selected text in the editor"
  muteUnsupportedLanguageErrors :
    type : 'boolean'
    default : false
    description : "Do not show \"Unsupported Language\" errors when they occur"
  muteAllErrors :
    type : 'boolean'
    default : false
    description : "Do not show any/all errors when they occur"
, defaultLanguageOptions)
plugin.activate = ->
  handleSaveEvent()
  plugin.subscribe atom.config.observe("atom-beautify.beautifyOnSave", handleSaveEvent)
  atom.commands.add "atom-workspace", "atom-beautify:beautify-editor", beautify
  atom.commands.add "atom-workspace", "atom-beautify:help-debug-editor", debug
  atom.commands.add ".tree-view .file .name", "atom-beautify:beautify-file", beautifyFile
  atom.commands.add ".tree-view .directory .name", "atom-beautify:beautify-directory", beautifyDirectory


  # Deprecated command
  atom.commands.add "atom-workspace", "beautify:beautify-editor", ->
    atom?.notifications.addWarning("The command \"beautify:beautify-editor\" has been removed and changed to \"atom-beautify:beautify-editor\".", dismissable : true)

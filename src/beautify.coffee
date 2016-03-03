# global atom
"use strict"
pkg = require('../package.json')

# Dependencies
plugin = module.exports
{CompositeDisposable} = require 'event-kit'
_ = require("lodash")
Beautifiers = require("./beautifiers")
beautifier = new Beautifiers()
defaultLanguageOptions = beautifier.options
logger = require('./logger')(__filename)
Promise = require('bluebird')

# Lazy loaded dependencies
fs = null
path = require("path")
strip = null
yaml = null
async = null
dir = null # Node-Dir
LoadingView = null
loadingView = null
$ = null

# function cleanOptions(data, types) {
# nopt.clean(data, types);
# return data;
# }
getScrollTop = (editor) ->
  view = editor.viewRegistry.getView(editor)
  view.getScrollTop()
setScrollTop = (editor, value) ->
  view = editor.viewRegistry.getView(editor)
  view.setScrollTop value
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

# Show beautification progress/loading view
beautifier.on('beautify::start', ->
  LoadingView ?= require "./views/loading-view"
  loadingView ?= new LoadingView()
  loadingView.show()
)
beautifier.on('beautify::end', ->
  loadingView?.hide()
)
# Show error
showError = (error) ->
  if not atom.config.get("atom-beautify.muteAllErrors")
    # console.log(e)
    stack = error.stack
    detail = error.description or error.message
    atom.notifications?.addError(error.message, {
      stack, detail, dismissable : true})

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
  forceEntireFile = onSave and atom.config.get("atom-beautify.beautifyEntireFileOnSave")

  # Get the path to the config file
  # All of the options
  # Listed in order from default (base) to the one with the highest priority
  # Left = Default, Right = Will override the left.
  # Atom Editor
  #
  # User's Home path
  # Project path
  # Asynchronously and callback-style
  beautifyCompleted = (text) ->

    if not text?
      # Do nothing, is undefined
      # console.log 'beautifyCompleted'
    else if text instanceof Error
      showError(text)
    else if typeof text is "string"
      if oldText isnt text

        # console.log "Replacing current editor's text with new text"
        posArray = getCursors(editor)

        # console.log "posArray:
        origScrollTop = getScrollTop(editor)

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
          setScrollTop editor, origScrollTop
          return
        ), 0
    else
      showError( new Error("Unsupported beautification result '#{text}'."))

    # else
    # console.log "Already Beautiful!"
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
  $ ?= require("atom-space-pen-views").$
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
        # do not allow empty string
        return cb(null, output) if output is ''
        # save to file
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
    return showError(err) if err
    # console.log("Beautify File
  )
  return

beautifyDirectory = ({target}) ->
  dirPath = target.dataset.path
  return unless dirPath

  return if atom?.confirm(
    message: "This will beautify all of the files found \
        recursively in this directory, '#{dirPath}'. \
        Do you want to continue?",
    buttons: ['Yes, continue!','No, cancel!']) isnt 0

  # Show in progress indicate on directory's tree-view entry
  $ ?= require("atom-space-pen-views").$
  $el = $(".icon-file-directory[data-path=\"#{dirPath}\"]")
  $el.addClass('beautifying')

  # Process Directory
  dir ?= require "node-dir"
  async ?= require "async"
  dir.files(dirPath, (err, files) ->
    return showError(err) if err

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

  linkifyTitle = (title) ->
    title = title.toLowerCase()
    p = title.split(/[\s,+#;,\/?:@&=+$]+/) # split into parts
    sep = "-"
    p.join(sep)

  # Check if there is an active editor
  if not editor?
    return confirm("Active Editor not found.\n" +
    "Please select a Text Editor first to beautify.")
  return unless confirm('Are you ready to debug Atom Beautify?\n\n' +
  'Warning: This will change your current clipboard contents.')
  debugInfo = ""
  headers = []
  tocEl = "<TABLEOFCONTENTS/>"
  addInfo = (key, val) ->
    if key?
      debugInfo += "**#{key}**: #{val}\n\n"
    else
      debugInfo += "#{val}\n\n"
  addHeader = (level, title) ->
    debugInfo += "#{Array(level+1).join('#')} #{title}\n\n"
    headers.push({
      level, title
      })
  addHeader(1, "Atom Beautify - Debugging information")
  debugInfo += "The following debugging information was " +
  "generated by `Atom Beautify` on `#{new Date()}`." +
  "\n\n---\n\n" +
  tocEl +
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

  # Language
  language = beautifier.getLanguage(grammarName, filePath)
  addInfo('Original File Language', language?.name)
  addInfo('Language namespace', language?.namespace)

  # Beautifier
  beautifiers = beautifier.getBeautifiers(language.name)
  addInfo('Supported Beautifiers', _.map(beautifiers, 'name').join(', '))
  selectedBeautifier = beautifier.getBeautifierForLanguage(language)
  addInfo('Selected Beautifier', selectedBeautifier.name)

  # Get current editor's text
  text = editor.getText()

  # Contents
  codeBlockSyntax = (language?.name ? grammarName).toLowerCase().split(' ')[0]
  addHeader(3, 'Original File Contents')
  addInfo(null, "\n```#{codeBlockSyntax}\n#{text}\n```")

  addHeader(3, 'Package Settings')
  addInfo(null,
    "The raw package settings options\n" +
    "```json\n#{JSON.stringify(atom.config.get('atom-beautify'), undefined, 4)}\n```")

  # Beautification Options
  addHeader(2, "Beautification options")
  # Get all options
  allOptions = beautifier.getOptionsForPath(filePath, editor)
  # Resolve options with promises
  Promise.all(allOptions)
  .then((allOptions) ->
    # Extract options
    [
        editorOptions
        configOptions
        homeOptions
        editorConfigOptions
    ] = allOptions
    projectOptions = allOptions[4..]

    preTransformedOptions = beautifier.getOptionsForLanguage(allOptions, language)

    if selectedBeautifier
      finalOptions = beautifier.transformOptions(selectedBeautifier, language.name, preTransformedOptions)

    # Show options
    # addInfo('All Options', "\n" +
    # "All options extracted for file\n" +
    # "```json\n#{JSON.stringify(allOptions, undefined, 4)}\n```")
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
    addInfo('Pre-Transformed Options', "\n" +
    "Combined options before transforming them given a beautifier's specifications\n" +
    "```json\n#{JSON.stringify(preTransformedOptions, undefined, 4)}\n```")
    if selectedBeautifier
      addHeader(3, 'Final Options')
      addInfo(null,
        "Final combined and transformed options that are used\n" +
        "```json\n#{JSON.stringify(finalOptions, undefined, 4)}\n```")

    #
    logs = ""
    logFilePathRegex = new RegExp('\\: \\[(.*)\\]')
    subscription = logger.onLogging((msg) ->
      # console.log('logging', msg)
      sep = path.sep
      logs += msg.replace(logFilePathRegex, (a,b) ->
        s = b.split(sep)
        i = s.indexOf('atom-beautify')
        p = s.slice(i+2).join(sep)
        # console.log('logging', arguments, s, i, p)
        return ': ['+p+']'
      )
    )
    cb = (result) ->
      subscription.dispose()
      addHeader(2, "Results")

      # Logs
      addInfo('Beautified File Contents', "\n```#{codeBlockSyntax}\n#{result}\n```")
      # Diff
      JsDiff = require('diff')
      diff = JsDiff.createPatch(filePath, text, \
        result, "original", "beautified")
      addInfo('Original vs. Beautified Diff', "\n```#{codeBlockSyntax}\n#{diff}\n```")

      addHeader(3, "Logs")
      addInfo(null, "```\n#{logs}\n```")

      # Build Table of Contents
      toc = "## Table Of Contents\n"
      for header in headers
        ###
        - Heading 1
          - Heading 1.1
        ###
        indent = "  " # 2 spaces
        bullet = "-"
        indentNum = header.level - 2
        if indentNum >= 0
          toc += ("#{Array(indentNum+1).join(indent)}#{bullet} [#{header.title}](\##{linkifyTitle(header.title)})\n")
      # Replace TABLEOFCONTENTS
      debugInfo = debugInfo.replace(tocEl, toc)

      # Save to clipboard
      atom.clipboard.write(debugInfo)
      confirm('Atom Beautify debugging information is now in your clipboard.\n' +
      'You can now paste this into an Issue you are reporting here\n' +
      'https://github.com/Glavin001/atom-beautify/issues/\n\n' +
      'Please follow the contribution guidelines found at\n' +
      'https://github.com/Glavin001/atom-beautify/blob/master/CONTRIBUTING.md\n\n' +
      'Warning: Be sure to look over the debug info before you send it, '+
      'to ensure you are not sharing undesirable private information.'
      )
    try
      beautifier.beautify(text, allOptions, grammarName, filePath)
      .then(cb)
      .catch(cb)
    catch e
      return cb(e)
  )

handleSaveEvent = ->
  atom.workspace.observeTextEditors (editor) ->
    buffer = editor.getBuffer()
    disposable = buffer.onDidSave(({path : filePath}) ->
      path ?= require('path')
      # Get Grammar
      grammar = editor.getGrammar().name
      # Get file extension
      fileExtension = path.extname(filePath)
      # Remove prefix "." (period) in fileExtension
      fileExtension = fileExtension.substr(1)
      # Get language
      languages = beautifier.languages.getLanguages({grammar, extension: fileExtension})
      if languages.length < 1
        return
      # TODO: select appropriate language
      language = languages[0]
      # Get language config
      key = "atom-beautify.language_#{language.namespace}_beautify_on_save"
      beautifyOnSave = atom.config.get(key)
      logger.verbose('save editor positions', key, beautifyOnSave)
      if beautifyOnSave
        posArray = getCursors(editor)
        origScrollTop = getScrollTop(editor)
        beautifyFilePath(filePath, ->
          if editor.isAlive() is true
            buffer.reload()
            logger.verbose('restore editor positions', posArray,origScrollTop)
            # Let the scrollTop setting run after all the save related stuff is run,
            # otherwise setScrollTop is not working, probably because the cursor
            # addition happens asynchronously
            setTimeout ( ->
              setCursors(editor, posArray)
              setScrollTop(editor, origScrollTop)
              # console.log "setScrollTop"
              return
            ), 0
        )
      )
    plugin.subscriptions.add disposable
plugin.config = _.merge(require('./config.coffee'), defaultLanguageOptions)
plugin.activate = ->
  @subscriptions = new CompositeDisposable
  @subscriptions.add handleSaveEvent()
  @subscriptions.add atom.config.observe("atom-beautify.beautifyOnSave", handleSaveEvent)
  @subscriptions.add atom.commands.add "atom-workspace", "atom-beautify:beautify-editor", beautify
  @subscriptions.add atom.commands.add "atom-workspace", "atom-beautify:help-debug-editor", debug
  @subscriptions.add atom.commands.add ".tree-view .file .name", "atom-beautify:beautify-file", beautifyFile
  @subscriptions.add atom.commands.add ".tree-view .directory .name", "atom-beautify:beautify-directory", beautifyDirectory

plugin.deactivate = ->
  @subscriptions.dispose()

# global atom

"use strict"
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
LoadingView = null
MessagePanelView = null
PlainMessageView = null
editorconfig = null
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

beautify = ({onSave})->
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
    else if oldText isnt text
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
    # else
      # console.log "Already Beautiful!"
    @loadingView.hide()
    return
  # console.log 'Beautify time!'

  # Get current editor
  editor = atom.workspace.getActiveEditor()
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

beautifyFile = (event)->
  # console.log('beautifyFile', arguments)
  entry = event.target
  # console.log('entry', entry)
  return unless entry
  $ ?= (require "space-pen").$
  $entry = $(entry)
  if $entry.prop("tagName") is "LI"
    $entry = $("span.name", $entry)
  # console.log($entry)
  filePath = $entry.data('path')
  # console.log('filePath', filePath)
  # Get contents of file
  fs ?= require "fs"
  fs.readFile(filePath, (err, data) ->
    throw error if err
    input = data?.toString()
    grammar = atom.grammars.selectGrammar(filePath, input)
    grammarName = grammar.name
    # Get the options
    allOptions = options.getOptionsForPath(filePath)
    # Beautify File
    completionFun = (output) ->
      if output instanceof Error
        throw output # output == Error
      else if typeof output is "string"
        fs.writeFile(filePath, output, (err) ->
            throw err if err
        )
      else
        console.log(output)
    try
      beautifier.beautify input, grammarName, allOptions, completionFun
    catch e
      console.error(e)

  )

handleSaveEvent = =>
  atom.workspace.eachEditor (editor) =>
    buffer = editor.getBuffer()
    plugin.unsubscribe buffer
    if atom.config.get("atom-beautify.beautifyOnSave")
      events = "will-be-saved"
      plugin.subscribe buffer, events, beautify.bind(@, {onSave:true})
    return
  return

{Subscriber} = require path.join(atom.packages.resourcePath, 'node_modules', 'emissary')
Subscriber.extend plugin
plugin.configDefaults = _.merge(
  analytics: true
  beautifyOnSave: false
  beautifyEntireFileOnSave: true
  muteUnsupportedLanguageErrors: false
  muteAllErrors: false
  disabledLanguages: []
, defaultLanguageOptions)
plugin.activate = ->
  handleSaveEvent()
  plugin.subscribe atom.config.observe("atom-beautify.beautifyOnSave", handleSaveEvent)
  atom.workspaceView.command "beautify", beautify
  atom.workspaceView.command "beautify:editor", beautify
  atom.workspaceView.command "beautify:file", beautifyFile

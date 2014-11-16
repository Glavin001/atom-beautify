# global atom

"use strict"
# Dependencies
plugin = module.exports
_ = require("lodash")
beautifier = require("./language-options")
languages = beautifier.languages
defaultLanguageOptions = beautifier.defaultLanguageOptions
# Lazy loaded dependencies
fs = null
path = require("path")
strip = null
yaml = null
LoadingView = null
MessagePanelView = null
PlainMessageView = null
editorconfig = null
#MessageView = require "./message-view"
findFileResults = {}

# CLI
getUserHome = ->
  process.env.HOME or process.env.HOMEPATH or process.env.USERPROFILE

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

verifyExists = (fullPath) ->
  fs ?= require("fs")
  (if fs.existsSync(fullPath) then fullPath else null)

# Storage for memoized results from find file
# Should prevent lots of directory traversal &
# lookups when liniting an entire project

###
Searches for a file with a specified name starting with
'dir' and going all the way up either until it finds the file
or hits the root.

@param {string} name filename to search for (e.g. .jshintrc)
@param {string} dir directory to start search from (default:
current working directory)
@param {boolean} upwards should recurse upwards on failure? (default: true)

@returns {string} normalized filename
###
findFile = (name, dir, upwards=true) ->
  path ?= require("path")
  dir = dir or process.cwd()
  filename = path.normalize(path.join(dir, name))
  return findFileResults[filename] if findFileResults[filename] isnt `undefined`
  parent = path.resolve(dir, "../")
  if verifyExists(filename)
    findFileResults[filename] = filename
    return filename
  if dir is parent
    findFileResults[filename] = null
    return null
  if upwards
    findFile name, parent
  else
    return null

###
Tries to find a configuration file in either project directory
or in the home directory. Configuration files are named
'.jsbeautifyrc'.

@param {string} config name of the configuration file
@param {string} file path to the file to be linted
@param {boolean} upwards should recurse upwards on failure? (default: true)

@returns {string} a path to the config file
###
findConfig = (config, file, upwards=true) ->
  path ?= require("path")
  dir = path.dirname(path.resolve(file))
  envs = getUserHome()
  home = path.normalize(path.join(envs, config))
  proj = findFile(config, dir, upwards)
  return proj if proj
  return home if verifyExists(home)
  null
getConfigOptionsFromSettings = (langs) ->
  config = atom.config.getSettings()["atom-beautify"]
  options = {}
  # console.log(langs, config);
  # Iterate over keys of the settings
  _.every _.keys(config), (k) ->
    # Check if keys start with a language
    p = k.split("_")[0]
    idx = _.indexOf(langs, p)
    # console.log(k, p, idx);
    if idx >= 0
      # Remove the language prefix and nest in options
      lang = langs[idx]
      opt = k.replace(new RegExp("^" + lang + "_"), "")
      options[lang] = options[lang] or {}
      options[lang][opt] = config[k]
      # console.log(lang, opt);
    true
  # console.log(options);
  options

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
  # Look for .jsbeautifierrc in file and home path, check env variables
  getConfig = (startPath, upwards=true) ->
    # Verify that startPath is a string
    startPath = (if (typeof startPath is "string") then startPath else "")
    return {} unless startPath
    # Get the path to the config file
    configPath = findConfig(".jsbeautifyrc", startPath, upwards)
    externalOptions = undefined
    if configPath
      fs ?= require("fs")
      contents = fs.readFileSync(configPath,
        encoding: "utf8"
      )
      unless contents
        externalOptions = {}
      else
        try
          strip ?= require("strip-json-comments")
          externalOptions = JSON.parse(strip(contents))
        catch e
          console.log "Failed parsing config as JSON: " + configPath
          # Attempt as YAML
          try
            yaml ?= require("js-yaml")
            externalOptions = yaml.safeLoad(contents)
          catch e
            console.log "Failed parsing config as YAML: " + configPath
            externalOptions = {}
    else
      externalOptions = {}
    externalOptions
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
  # Get current Atom editor configuration
  isSelection = !!editor.getSelectedText()
  softTabs = editor.softTabs
  tabLength = editor.getTabLength()
  editorOptions =
    indent_size: (if softTabs then tabLength else 1)
    indent_char: (if softTabs then " " else "\t")
    indent_with_tabs: not softTabs
  configOptions = getConfigOptionsFromSettings(languages)

  # Get editor path and configurations for paths
  editedFilePath = editor.getPath()

  # Get configuration in User's Home directory
  userHome = getUserHome()
  # FAKEFILENAME forces `path` to treat as file path and it's parent directory
  # is the userHome. See implementation of findConfig
  # and how path.dirname(DIRECTORY) returns the parent directory of DIRECTORY
  homeOptions = getConfig(path.join(userHome,"FAKEFILENAME"), false)

  if editedFilePath?
    # Handle EditorConfig options
    # http://editorconfig.org/
    editorconfig ?= require('editorconfig');
    editorConfigOptions = editorconfig.parse(editedFilePath);
    # Transform EditorConfig to Atom Beautify's config structure and naming
    if editorConfigOptions.indent_style is 'space'
      editorConfigOptions.indent_char = " "
      # if (editorConfigOptions.indent_size)
      #   editorConfigOptions.indent_size = config.indent_size
    else if editorConfigOptions.indent_style is 'tab'
      editorConfigOptions.indent_char = "\t"
      editorConfigOptions.indent_with_tabs = true
      if (editorConfigOptions.tab_width)
          editorConfigOptions.indent_size = editorConfigOptions.tab_width

    # Get all options in configuration files from this directory upwards to root
    projectOptions = []
    p = path.dirname(editedFilePath)
    # Check if p is root (top directory)
    while p isnt path.resolve(p,"../")
      # Get config for p
      pf = path.join(p, "FAKEFILENAME")
      pc = getConfig(pf, false)
      # Add config for p to project's config options
      projectOptions.push(pc)
      # console.log p, pc
      # Move upwards
      p = path.resolve(p,"../")
  else
    editorConfigOptions = {}
    projectOptions = []

  # Combine all options together
  allOptions = [
    editorOptions
    configOptions
    homeOptions
    editorConfigOptions
  ]
  allOptions = allOptions.concat(projectOptions)

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

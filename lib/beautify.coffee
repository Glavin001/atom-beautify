# global atom

"use strict"
plugin = module.exports
fs = require("fs")
path = require("path")
_ = require("lodash")
strip = require("strip-json-comments")
yaml = require("js-yaml")
beautifier = require("./language-options")
languages = beautifier.languages
defaultLanguageOptions = beautifier.defaultLanguageOptions
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

@returns {string} normalized filename
###
findFile = (name, dir) ->
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
  findFile name, parent

###
Tries to find a configuration file in either project directory
or in the home directory. Configuration files are named
'.jsbeautifyrc'.

@param {string} config name of the configuration file
@param {string} file path to the file to be linted
@returns {string} a path to the config file
###
findConfig = (config, file) ->
  dir = path.dirname(path.resolve(file))
  envs = getUserHome()
  home = path.normalize(path.join(envs, config))
  proj = findFile(config, dir)
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
beautify = ->

  # Look for .jsbeautifierrc in file and home path, check env variables
  getConfig = (startPath) ->

    # Verify that startPath is a string
    startPath = (if (typeof startPath is "string") then startPath else "")
    return {} unless startPath

    # Get the path to the config file
    configPath = findConfig(".jsbeautifyrc", startPath)
    externalOptions = undefined
    if configPath
      contents = fs.readFileSync(configPath,
        encoding: "utf8"
      )
      unless contents
        externalOptions = {}
      else
        try
          externalOptions = JSON.parse(strip(contents))
        catch e
          console.log "Failed parsing config as JSON: " + configPath

          # Attempt as YAML
          try
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
  beautifyCompleted = (text) ->
    # console.log 'beautifyCompleted'
    if oldText isnt text
      # console.log "Replacing current editor's text with new text"
      posArray = getCursors(editor)
      # console.log "posArray: #{posArray}"
      origScrollTop = editor.getScrollTop()
      # console.log "origScrollTop: #{origScrollTop}"
      if isSelection
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
      # console.log "Already Beautiful!"
    return

  # console.log 'Beautify time!'
  text = undefined
  editor = atom.workspace.getActiveEditor()
  isSelection = !!editor.getSelectedText()
  softTabs = editor.softTabs
  tabLength = editor.getTabLength()
  editorOptions =
    indent_size: (if softTabs then tabLength else 1)
    indent_char: (if softTabs then " " else "\t")
    indent_with_tabs: not softTabs

  configOptions = getConfigOptionsFromSettings(languages)
  editedFilePath = editor.getPath()
  projectOptions = getConfig(editedFilePath)
  homeOptions = getConfig(getUserHome())
  if isSelection
    text = editor.getSelectedText()
  else
    text = editor.getText()
  oldText = text
  allOptions = [
    editorOptions
    configOptions
    homeOptions
    projectOptions
  ]
  grammarName = editor.getGrammar().name

  # Finally, beautify!
  beautifier.beautify text, grammarName, allOptions, beautifyCompleted

  return
handleSaveEvent = ->
  atom.workspace.eachEditor (editor) ->
    buffer = editor.getBuffer()
    plugin.unsubscribe buffer
    if atom.config.get("atom-beautify.beautifyOnSave")
      events = "will-be-saved"
      plugin.subscribe buffer, events, beautify
    return

  return

Subscriber = require("emissary").Subscriber
Subscriber.extend plugin
plugin.configDefaults = _.merge(
  analytics: true
  beautifyOnSave: false
, defaultLanguageOptions)
plugin.activate = ->
  handleSaveEvent()
  plugin.subscribe atom.config.observe("atom-beautify.beautifyOnSave", handleSaveEvent)
  atom.workspaceView.command "beautify", beautify

# Lazy loaded dependencies
_ = require("lodash")
path = require("path")
fs = null
strip = null
yaml = null
editorconfig = null
beautifier = require("./language-options")
languages = beautifier.languages

module.exports =
  findFileResults: {}

  # CLI
  getUserHome: ->
    process.env.HOME or process.env.HOMEPATH or process.env.USERPROFILE

  verifyExists: (fullPath) ->
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
  findFile: (name, dir, upwards=true) ->
    path ?= require("path")
    dir = dir or process.cwd()
    filename = path.normalize(path.join(dir, name))
    return @findFileResults[filename] if @findFileResults[filename] isnt `undefined`
    parent = path.resolve(dir, "../")
    if @verifyExists(filename)
      @findFileResults[filename] = filename
      return filename
    if dir is parent
      @findFileResults[filename] = null
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
  findConfig: (config, file, upwards=true) ->
    path ?= require("path")
    dir = path.dirname(path.resolve(file))
    envs = @getUserHome()
    home = path.normalize(path.join(envs, config))
    proj = @findFile(config, dir, upwards)
    return proj if proj
    return home if @verifyExists(home)
    null
  getConfigOptionsFromSettings: (langs) ->
    config = atom.config.get('atom-beautify')
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


  # Look for .jsbeautifierrc in file and home path, check env variables
  getConfig: (startPath, upwards=true) ->
    # Verify that startPath is a string
    startPath = (if (typeof startPath is "string") then startPath else "")
    return {} unless startPath
    # Get the path to the config file
    configPath = @findConfig(".jsbeautifyrc", startPath, upwards)
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
          # console.log "Failed parsing config as JSON: " + configPath
          # Attempt as YAML
          try
            yaml ?= require("yaml-front-matter")
            externalOptions = yaml.safeLoad(contents)
          catch e
            console.log "Failed parsing config as YAML and JSON: " + configPath
            externalOptions = {}
    else
      externalOptions = {}
    externalOptions

  getOptionsForPath: (editedFilePath, editor) ->

    # Editor Options
    editorOptions = {}
    if editor?
      # Get current Atom editor configuration
      isSelection = !!editor.getSelectedText()
      softTabs = editor.softTabs
      tabLength = editor.getTabLength()
      editorOptions =
        indent_size: (if softTabs then tabLength else 1)
        indent_char: (if softTabs then " " else "\t")
        indent_with_tabs: not softTabs

    # From Package Settings
    configOptions = @getConfigOptionsFromSettings(languages)

    # Get configuration in User's Home directory
    userHome = @getUserHome()
    # FAKEFILENAME forces `path` to treat as file path and it's parent directory
    # is the userHome. See implementation of findConfig
    # and how path.dirname(DIRECTORY) returns the parent directory of DIRECTORY
    homeOptions = @getConfig(path.join(userHome,"FAKEFILENAME"), false)

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
        pc = @getConfig(pf, false)
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
    # console.log(allOptions)
    return allOptions

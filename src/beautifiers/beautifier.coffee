Promise = require('bluebird')
_ = require('lodash')
fs = require('fs')
temp = require('temp').track()
readFile = Promise.promisify(fs.readFile)
which = require('which')
path = require('path')
shellEnv = require('shell-env')
Executable = require('./executable')

module.exports = class Beautifier

  ###
  Promise
  ###
  Promise: Promise

  ###
  Name of Beautifier
  ###
  name: 'Beautifier'

  ###
  Supported Options

  Enable options for supported languages.
  - <string:language>:<boolean:all_options_enabled>
  - <string:language>:<string:option_key>:<boolean:enabled>
  - <string:language>:<string:option_key>:<string:rename>
  - <string:language>:<string:option_key>:<function:transform>
  - <string:language>:<string:option_key>:<array:mapper>
  ###
  options: {}

  executables: []

  ###
  Is the beautifier a command-line interface beautifier?
  ###
  isPreInstalled: () ->
    @executables.length is 0

  _exe: {}
  loadExecutables: () ->
    @debug("Load executables")
    if Object.keys(@_exe).length is @executables.length
      Promise.resolve(@_exe)
    else
      Promise.resolve(executables = @executables.map((e) -> new Executable(e)))
        .then((executables) -> Promise.all(executables.map((exe) -> exe.init())))
        .then((es) =>
          @debug("Executables loaded", es)
          exe = {}
          missingInstalls = []
          es.forEach((e) ->
            exe[e.cmd] = e
            if not e.isInstalled and e.required
              missingInstalls.push(e)
          )
          @_exe = exe
          @debug("exe", exe)
          if missingInstalls.length is 0
            return @_exe
          else
            @debug("Missing required executables: #{missingInstalls.map((e) -> e.cmd).join(' and ')}.")
            throw Executable.commandNotFoundError(missingInstalls[0].cmd)
        )
        .catch((error) =>
          @debug("Error loading executables", error)
          Promise.reject(error)
        )
  exe: (cmd) ->
    console.log('exe', cmd, @_exe)
    e = @_exe[cmd]
    if !e?
      throw Executable.commandNotFoundError(cmd)
    e

  ###
  Supported languages by this Beautifier

  Extracted from the keys of the `options` field.
  ###
  languages: null

  ###
  Beautify text

  Override this method in subclasses
  ###
  beautify: null

  ###
  Show deprecation warning to user.
  ###
  deprecate: (warning) ->
    atom.notifications?.addWarning(warning)

  deprecateOptionForExecutable: (exeName, oldOption, newOption) ->
    deprecationMessage = "The \"#{oldOption}\" configuration option has been deprecated. Please switch to using the option in section \"Executables\" (near the top) in subsection \"#{exeName}\" labelled \"#{newOption}\" in Atom-Beautify package settings."
    @deprecate(deprecationMessage)

  ###
  Create temporary file
  ###
  tempFile: (name = "atom-beautify-temp", contents = "", ext = "") ->
    return new Promise((resolve, reject) =>
      # create temp file
      temp.open({prefix: name, suffix: ext}, (err, info) =>
        @debug('tempFile', name, err, info)
        return reject(err) if err
        fs.write(info.fd, contents, (err) ->
          return reject(err) if err
          fs.close(info.fd, (err) ->
            return reject(err) if err
            resolve(info.path)
          )
        )
      )
    )

  ###
  Read file
  ###
  readFile: (filePath) ->
    Promise.resolve(filePath)
    .then((filePath) ->
      return readFile(filePath, "utf8")
    )

  ###
  Find file
  ###
  findFile: (startDir, fileNames) ->
    throw new Error "Specify file names to find." unless arguments.length
    unless fileNames instanceof Array
      fileNames = [fileNames]
    startDir = startDir.split(path.sep)
    while startDir.length
      currentDir = startDir.join(path.sep)
      for fileName in fileNames
        filePath = path.join(currentDir, fileName)
        try
          fs.accessSync(filePath, fs.R_OK)
          return filePath
      startDir.pop()
    return null

  # Retrieves the default line ending based upon the Atom configuration
  #  `line-ending-selector.defaultLineEnding`. If the Atom configuration
  #  indicates "OS Default", the `process.platform` is queried, returning
  #  CRLF for Windows systems and LF for all other systems.
  # Code modified from atom/line-ending-selector
  # returns: The correct line-ending character sequence based upon the Atom
  #  configuration, or `null` if the Atom line ending configuration was not
  #  recognized.
  # see: https://github.com/atom/line-ending-selector/blob/master/lib/main.js
  getDefaultLineEnding: (crlf,lf,optionEol) ->
    if (!optionEol || optionEol == 'System Default')
      optionEol = atom.config.get('line-ending-selector.defaultLineEnding')
    switch optionEol
      when 'LF'
        return lf
      when 'CRLF'
        return crlf
      when 'OS Default'
        return if process.platform is 'win32' then crlf else lf
      else
        return lf

  ###
  Like the unix which utility.

  Finds the first instance of a specified executable in the PATH environment variable.
  Does not cache the results,
  so hash -r is not needed when the PATH changes.
  See https://github.com/isaacs/node-which
  ###
  which: (exe, options = {}) ->
    # @deprecate("Beautifier.which function has been deprecated. Please use Executables.")
    Executable.which(exe, options)

  ###
  Run command-line interface command
  ###
  run: (executable, args, {cwd, ignoreReturnCode, help, onStdin} = {}) ->
    # @deprecate("Beautifier.run function has been deprecated. Please use Executables.")
    exe = new Executable({
      name: @name
      homepage: @link
      installation: @link
      cmd: executable
    })
    help ?= {
      program: executable
      link: @link
      pathOption: undefined
    }
    exe.run(args, {cwd, ignoreReturnCode, help, onStdin})

  ###
  Logger instance
  ###
  logger: null
  ###
  Initialize and configure Logger
  ###
  setupLogger: ->
    @logger = require('../logger')(__filename)
    # @verbose(@logger)
    # Merge logger methods into beautifier class
    for key, method of @logger
      # @verbose(key, method)
      @[key] = method
    @verbose("#{@name} beautifier logger has been initialized.")

  ###
  Constructor to setup beautifer
  ###
  constructor: () ->
    # Setup logger
    @setupLogger()
    # Handle global options
    if @options._?
      globalOptions = @options._
      delete @options._
      # Only merge if globalOptions is an object
      if typeof globalOptions is "object"
        # Iterate over all supported languages
        for lang, options of @options
          #
          if typeof options is "boolean"
            if options is true
              @options[lang] = globalOptions
          else if typeof options is "object"
            @options[lang] = _.merge(globalOptions, options)
          else
            @warn("Unsupported options type #{typeof options} for language #{lang}: "+ options)
    @verbose("Options for #{@name}:", @options)
    # Set supported languages
    @languages = _.keys(@options)

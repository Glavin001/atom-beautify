Promise = require("bluebird")
_ = require('lodash')
fs = require("fs")
temp = require("temp").track()
spawn = require('cross-spawn')
readFile = Promise.promisify(fs.readFile)
which = require('which')

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

  ###
  Create temporary file
  ###
  tempFile: (name = "atom-beautify-temp", contents = "") ->
    return new Promise((resolve, reject) =>
      # create temp file
      temp.open(name, (err, info) =>
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
  If platform is Windows
  ###
  isWindows: do ->
    return new RegExp('^win').test(process.platform)

  ###
  Get Shell Environment variables

  Special thank you to @ioquatix
  See https://github.com/ioquatix/script-runner/blob/v1.5.0/lib/script-runner.coffee#L45-L63
  ###
  _envCache: null
  _envCacheDate: null
  _envCacheExpiry: 10000 # 10 seconds
  getShellEnvironment: ->
    return new @Promise((resolve, reject) =>
      # Check Cache
      if @_envCache? and @_envCacheDate?
        # Check if Cache is old
        if (new Date() - @_envCacheDate) < @_envCacheExpiry
          # Still fresh
          return resolve(@_envCache)

      # Check if Windows
      if @isWindows
        # Windows
        # Use default
        resolve(process.env)
      else
        # Mac & Linux
        # I tried using ChildProcess.execFile but there is no way to set detached and
        # this causes the child shell to lock up.
        # This command runs an interactive login shell and
        # executes the export command to get a list of environment variables.
        # We then use these to run the script:
        child = spawn process.env.SHELL, ['-ilc', 'env'],
          # This is essential for interactive shells, otherwise it never finishes:
          detached: true,
          # We don't care about stdin, stderr can go out the usual way:
          stdio: ['ignore', 'pipe', process.stderr]
        # We buffer stdout:
        buffer = ''
        child.stdout.on 'data', (data) -> buffer += data
        # When the process finishes, extract the environment variables and pass them to the callback:
        child.on 'close', (code, signal) =>
          if code isnt 0
            return reject(new Error("Could not get Shell Environment. Exit code: "+code+", Signal: "+signal))
          environment = {}
          for definition in buffer.split('\n')
            [key, value] = definition.split('=', 2)
            environment[key] = value if key != ''
          # Cache Environment
          @_envCache = environment
          @_envCacheDate = new Date()
          resolve(environment)
      )

  ###
  Like the unix which utility.

  Finds the first instance of a specified executable in the PATH environment variable.
  Does not cache the results,
  so hash -r is not needed when the PATH changes.
  See https://github.com/isaacs/node-which
  ###
  which: (exe, options = {}) ->
    # Get PATH and other environment variables
    @getShellEnvironment()
    .then((env) =>
      new Promise((resolve, reject) =>
        options.path ?= env.PATH
        if @isWindows
          # Trick node-which into including files
          # with no extension as executables.
          # Put empty extension last to allow for other real extensions first
          options.pathExt ?= "#{process.env.PATHEXT ? '.EXE'};"
        which(exe, options, (err, path) ->
          resolve(exe) if err
          resolve(path)
        )
      )
    )

  ###
  Add help to error.description

  Note: error.description is not officially used in JavaScript,
  however it is used internally for Atom Beautify when displaying errors.
  ###
  commandNotFoundError: (exe, help) ->
    # Create new improved error
    # notify user that it may not be
    # installed or in path
    message = "Could not find '#{exe}'. \
            The program may not be installed."
    er = new Error(message)
    er.code = 'CommandNotFound'
    er.errno = er.code
    er.syscall = 'beautifier::run'
    er.file = exe
    if help?
      if typeof help is "object"
        # Basic notice
        helpStr = "See #{help.link} for program \
                            installation instructions.\n"
        # Help to configure Atom Beautify for program's path
        helpStr += "You can configure Atom Beautify \
                    with the absolute path \
                    to '#{help.program or exe}' by setting \
                    '#{help.pathOption}' in \
                    the Atom Beautify package settings.\n" if help.pathOption
        # Optional, additional help
        helpStr += help.additional if help.additional
        # Common Help
        issueSearchLink =
          "https://github.com/Glavin001/atom-beautify/\
                  search?q=#{exe}&type=Issues"
        docsLink = "https://github.com/Glavin001/\
                  atom-beautify/tree/master/docs"
        helpStr += "Your program is properly installed if running \
                            '#{if @isWindows then 'where.exe' \
                            else 'which'} #{exe}' \
                            in your #{if @isWindows then 'CMD prompt' \
                            else 'Terminal'} \
                            returns an absolute path to the executable. \
                            If this does not work then you have not \
                            installed the program correctly and so \
                            Atom Beautify will not find the program. \
                            Atom Beautify requires that the program be \
                            found in your PATH environment variable. \n\
                            Note that this is not an Atom Beautify issue \
                            if beautification does not work and the above \
                            command also does not work: this is expected \
                            behaviour, since you have not properly installed \
                            your program. Please properly setup the program \
                            and search through existing Atom Beautify issues \
                            before creating a new issue. \
                            See #{issueSearchLink} for related Issues and \
                            #{docsLink} for documentation. \
                            If you are still unable to resolve this issue on \
                            your own then please create a new issue and \
                            ask for help.\n"
        er.description = helpStr
      else #if typeof help is "string"
        er.description = help
    return er

  ###
  Run command-line interface command
  ###
  run: (executable, args, {ignoreReturnCode, help} = {}) ->
    # Flatten args first
    args = _.flatten(args)
    # Resolve executable and all args
    Promise.all([executable, Promise.all(args)])
    .then(([exeName, args]) =>
      @debug('exeName, args:', exeName, args)
      return new Promise((resolve, reject) =>
        # Remove undefined/null values
        args = _.without(args, undefined)
        args = _.without(args, null)
        # Get PATH and other environment variables
        Promise.all([@getShellEnvironment(), @which(exeName)])
        .then(([env, exePath]) =>
          @debug('exePath, env:', exePath, env)
          exe = exePath ? exeName
          # Spawn command
          options = {
            env: env
          }
          cmd = @spawn(exe, args, options)
            .then(({returnCode, stdout, stderr}) =>
              @verbose('spawn result', returnCode, stdout, stderr)
              # If return code is not 0 then error occured
              if not ignoreReturnCode and returnCode isnt 0
                err = new Error(stderr)
                windowsProgramNotFoundMsg = 'is not recognized as an \
                internal or external command'#, operable program or batch file.'
                @verbose(stderr, windowsProgramNotFoundMsg)
                if @isWindows and returnCode is 1 and \
                stderr.indexOf(windowsProgramNotFoundMsg) isnt -1
                  err = @commandNotFoundError(exeName, help)
                reject(err)
              else
                resolve(stdout)
            )
            .catch((err) =>
              @debug('error', err)
              # Check if error is ENOENT
              # (command could not be found)
              if err.code is 'ENOENT' or err.errno is 'ENOENT'
                reject(@commandNotFoundError(exeName, help))
              else
                # continue as normal error
                reject(err)
            )
        )
      )
    )

  ###
  Spawn
  ###
  spawn: (exe, args, options) ->
    return new Promise((resolve, reject) =>
      @debug('spawn', exe, args)
      cmd = spawn(exe, args, options)
      # add a 'data' event listener for the spawn instance
      stdout = ""
      stderr = ""
      cmd.stdout.on('data', (data) -> stdout += data )
      cmd.stderr.on('data', (data) -> stderr += data )
      # when the spawn child process exits,
      # check if there were any errors and
      # close the writeable stream
      cmd.on('exit', (returnCode) =>
        @debug('spawn done', returnCode, stderr, stdout)
        resolve({returnCode, stdout, stderr})
      )
      cmd.on('error', (err) =>
        @debug('error', err)
        reject(err)
      )
    )

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
    @verbose("Beautifier logger has been initialized.")

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



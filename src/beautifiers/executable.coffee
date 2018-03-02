Promise = require('bluebird')
_ = require('lodash')
which = require('which')
spawn = require('child_process').spawn
path = require('path')
semver = require('semver')
os = require('os')
fs = require('fs')

parentConfigKey = "atom-beautify.executables"


class Executable

  name: null
  cmd: null
  key: null
  homepage: null
  installation: null
  versionArgs: ['--version']
  versionParse: (text) -> semver.clean(text)
  versionRunOptions: {}
  versionsSupported: '>= 0.0.0'
  required: true

  constructor: (options) ->
    # Validation
    if !options.cmd?
      throw new Error("The command (i.e. cmd property) is required for an Executable.")
    @name = options.name
    @cmd = options.cmd
    @key = @cmd
    @homepage = options.homepage
    @installation = options.installation
    @required = not options.optional
    if options.version?
      versionOptions = options.version
      @versionArgs = versionOptions.args if versionOptions.args
      @versionParse = versionOptions.parse if versionOptions.parse
      @versionRunOptions = versionOptions.runOptions if versionOptions.runOptions
      @versionsSupported = versionOptions.supported if versionOptions.supported
    @setupLogger()

  init: () ->
    Promise.all([
      @loadVersion()
    ])
      .then(() => @verbose("Done init of #{@name}"))
      .then(() => @)
      .catch((error) =>
        if not @.required
          @
        else
          Promise.reject(error)
      )

  ###
  Logger instance
  ###
  logger: null
  ###
  Initialize and configure Logger
  ###
  setupLogger: ->
    @logger = require('../logger')("#{@name} Executable")
    for key, method of @logger
      @[key] = method
    @verbose("#{@name} executable logger has been initialized.")

  isInstalled = null
  version = null
  loadVersion: (force = false) ->
    @verbose("loadVersion", @version, force)
    if force or !@version?
      @verbose("Loading version without cache")
      @runVersion()
        .then((text) => @saveVersion(text))
    else
      @verbose("Loading cached version")
      Promise.resolve(@version)

  runVersion: () ->
    @run(@versionArgs, @versionRunOptions)
      .then((version) =>
        @info("Version text: " + version)
        version
      )

  saveVersion: (text) ->
    Promise.resolve()
      .then( => @versionParse(text))
      .then((version) ->
        valid = Boolean(semver.valid(version))
        if not valid
          throw new Error("Version is not valid: "+version)
        version
      )
      .then((version) =>
        @isInstalled = true
        @version = version
      )
      .then((version) =>
        @info("#{@cmd} version: #{version}")
        version
      )
      .catch((error) =>
        @isInstalled = false
        @error(error)
        help = {
          program: @cmd
          link: @installation or @homepage
          pathOption: "Executable - #{@name or @cmd} - Path"
        }
        Promise.reject(@commandNotFoundError(@name or @cmd, help))
      )

  isSupported: () ->
    @isVersion(@versionsSupported)

  isVersion: (range) ->
    @versionSatisfies(@version, range)

  versionSatisfies: (version, range) ->
    semver.satisfies(version, range)

  getConfig: () ->
    atom?.config.get("#{parentConfigKey}.#{@key}") or {}

  ###
  Run command-line interface command
  ###
  run: (args, options = {}) ->
    @debug("Run: ", @cmd, args, options)
    { cmd, cwd, ignoreReturnCode, help, onStdin, returnStderr, returnStdoutOrStderr } = options
    exeName = cmd or @cmd
    cwd ?= os.tmpdir()
    help ?= {
      program: @cmd
      link: @installation or @homepage
      pathOption: "Executable - #{@name or @cmd} - Path"
    }

    # Resolve executable and all args
    Promise.all([@shellEnv(), this.resolveArgs(args)])
      .then(([env, args]) =>
        @debug('exeName, args:', exeName, args)
        # Get PATH and other environment variables
        exePath = @path(exeName)
        Promise.all([exeName, args, env, exePath])
      )
      .then(([exeName, args, env, exePath]) =>
        @debug('exePath:', exePath)
        @debug('env:', env)
        @debug('PATH:', env.PATH)
        @debug('args', args)
        args = this.relativizePaths(args)
        @debug('relativized args', args)

        exe = exePath ? exeName
        spawnOptions = {
          cwd: cwd
          env: env
        }
        @debug('spawnOptions', spawnOptions)

        @spawn(exe, args, spawnOptions, onStdin)
          .then(({returnCode, stdout, stderr}) =>
            @verbose('spawn result, returnCode', returnCode)
            @verbose('spawn result, stdout', stdout)
            @verbose('spawn result, stderr', stderr)

            # If return code is not 0 then error occured
            if not ignoreReturnCode and returnCode isnt 0
              # operable program or batch file
              windowsProgramNotFoundMsg = "is not recognized as an internal or external command"

              @verbose(stderr, windowsProgramNotFoundMsg)

              if @isWindows() and returnCode is 1 and stderr.indexOf(windowsProgramNotFoundMsg) isnt -1
                throw @commandNotFoundError(exeName, help)
              else
                throw new Error(stderr or stdout)
            else
              if returnStdoutOrStderr
                return stdout or stderr
              else if returnStderr
                stderr
              else
                stdout
          )
          .catch((err) =>
            @debug('error', err)

            # Check if error is ENOENT (command could not be found)
            if err.code is 'ENOENT' or err.errno is 'ENOENT'
              throw @commandNotFoundError(exeName, help)
            else
              # continue as normal error
              throw err
          )
      )

  path: (cmd = @cmd) ->
    config = @getConfig()
    if config and config.path
      Promise.resolve(config.path)
    else
      exeName = cmd
      @which(exeName)

  resolveArgs: (args) ->
    args = _.flatten(args)
    Promise.all(args)

  relativizePaths: (args) ->
    tmpDir = os.tmpdir()
    newArgs = args.map((arg) ->
      isTmpFile = (typeof arg is 'string' and not arg.includes(':') and \
        path.isAbsolute(arg) and path.dirname(arg).startsWith(tmpDir))
      if isTmpFile
        return path.relative(tmpDir, arg)
      return arg
    )
    newArgs

  ###
  Spawn
  ###
  spawn: (exe, args, options, onStdin) ->
    # Remove undefined/null values
    args = _.without(args, undefined)
    args = _.without(args, null)

    return new Promise((resolve, reject) =>
      @debug('spawn', exe, args)

      cmd = spawn(exe, args, options)
      stdout = ""
      stderr = ""

      cmd.stdout.on('data', (data) ->
        stdout += data
      )
      cmd.stderr.on('data', (data) ->
        stderr += data
      )
      cmd.on('close', (returnCode) =>
        @debug('spawn done', returnCode, stderr, stdout)
        resolve({returnCode, stdout, stderr})
      )
      cmd.on('error', (err) =>
        @debug('error', err)
        reject(err)
      )

      onStdin cmd.stdin if onStdin
    )


  ###
  Add help to error.description

  Note: error.description is not officially used in JavaScript,
  however it is used internally for Atom Beautify when displaying errors.
  ###
  commandNotFoundError: (exe, help) ->
    exe ?= @name or @cmd
    @constructor.commandNotFoundError(exe, help)

  @commandNotFoundError: (exe, help) ->
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
        docsLink = "https://github.com/Glavin001/atom-beautify#beautifiers"
        helpStr = "See #{exe} installation instructions at #{docsLink}#{if help.link then (' or go to '+help.link) else ''}\n"
        # # Help to configure Atom Beautify for program's path
        helpStr += "You can configure Atom Beautify \
                    with the absolute path \
                    to '#{help.program or exe}' by setting \
                    '#{help.pathOption}' in \
                    the Atom Beautify package settings.\n" if help.pathOption
        helpStr += "Your program is properly installed if running \
                            '#{if @isWindows() then 'where.exe' \
                            else 'which'} #{exe}' \
                            in your #{if @isWindows() then 'CMD prompt' \
                            else 'Terminal'} \
                            returns an absolute path to the executable.\n"
        # # Optional, additional help
        helpStr += help.additional if help.additional
        er.description = helpStr
      else #if typeof help is "string"
        er.description = help
    return er


  @_envCache = null
  shellEnv: () ->
    env = @constructor.shellEnv()
    @debug("env", env)
    return env
  @shellEnv: () ->
    Promise.resolve(process.env)

  ###
  Like the unix which utility.

  Finds the first instance of a specified executable in the PATH environment variable.
  Does not cache the results,
  so hash -r is not needed when the PATH changes.
  See https://github.com/isaacs/node-which
  ###
  which: (exe, options) ->
    @.constructor.which(exe, options)
  @_whichCache = {}
  @which: (exe, options = {}) ->
    if @_whichCache[exe]
      return Promise.resolve(@_whichCache[exe])
    # Get PATH and other environment variables
    @shellEnv()
      .then((env) =>
        new Promise((resolve, reject) =>
          options.path ?= env.PATH
          if @isWindows()
            # Environment variables are case-insensitive in windows
            # Check env for a case-insensitive 'path' variable
            if !options.path
              for i of env
                if i.toLowerCase() is "path"
                  options.path = env[i]
                  break

            # Trick node-which into including files
            # with no extension as executables.
            # Put empty extension last to allow for other real extensions first
            options.pathExt ?= "#{process.env.PATHEXT ? '.EXE'};"
          which(exe, options, (err, path) =>
            return resolve(exe) if err
            @_whichCache[exe] = path
            resolve(path)
          )
        )
      )

  ###
  If platform is Windows
  ###
  isWindows: () -> @constructor.isWindows()
  @isWindows: () -> new RegExp('^win').test(process.platform)

class HybridExecutable extends Executable

  dockerOptions: {
    image: undefined
    workingDir: "/workdir"
  }

  constructor: (options) ->
    super(options)
    if options.docker?
      @dockerOptions = Object.assign({}, @dockerOptions, options.docker)
      @docker = @constructor.dockerExecutable()

  @docker: undefined
  @dockerExecutable: () ->
    if not @docker?
      @docker = new Executable({
        name: "Docker"
        cmd: "docker"
        homepage: "https://www.docker.com/"
        installation: "https://www.docker.com/get-docker"
        version: {
          parse: (text) -> text.match(/version [0]*([1-9]\d*).[0]*([0-9]\d*).[0]*([0-9]\d*)/).slice(1).join('.')
        }
      })
    return @docker

  installedWithDocker: false
  init: () ->
    super()
      .catch((error) =>
        return Promise.reject(error) if not @docker?
        @docker.init()
          .then(=> @runImage(@versionArgs, @versionRunOptions))
          .then((text) => @saveVersion(text))
          .then(() => @installedWithDocker = true)
          .then(=> @)
          .catch((dockerError) =>
            @debug(dockerError)
            Promise.reject(error)
          )
      )

  run: (args, options = {}) ->
    if @installedWithDocker and @docker and @docker.isInstalled
      return @runImage(args, options)
    super(args, options)

  runImage: (args, options) ->
    @debug("Run Docker executable: ", args, options)
    this.resolveArgs(args)
      .then((args) =>
        { cwd } = options
        tmpDir = os.tmpdir()
        pwd = fs.realpathSync(cwd or tmpDir)
        image = @dockerOptions.image
        workingDir = @dockerOptions.workingDir

        rootPath = '/mountedRoot'
        newArgs = args.map((arg) ->
          if (typeof arg is 'string' and not arg.includes(':') \
            and path.isAbsolute(arg) and not path.dirname(arg).startsWith(tmpDir)) \
            then path.join(rootPath, arg) else arg
        )

        @docker.run([
            "run",
            "--volume", "#{pwd}:#{workingDir}",
            "--volume", "#{path.resolve('/')}:#{rootPath}",
            "--workdir", workingDir,
            image,
            newArgs
          ],
          options
        )
      )


module.exports = HybridExecutable

###
Requires https://github.com/FriendsOfPHP/PHP-CS-Fixer
###

"use strict"
Beautifier = require('./beautifier')
path = require('path')

module.exports = class PHPCSFixer extends Beautifier

  name: 'PHP-CS-Fixer'
  link: "https://github.com/FriendsOfPHP/PHP-CS-Fixer"
  executables: [
    {
      name: "PHP"
      cmd: "php"
      homepage: "http://php.net/"
      installation: "http://php.net/manual/en/install.php"
      version: {
        parse: (text) -> text.match(/PHP (.*) \(cli\)/)[1]
      }
    }
    {
      name: "PHP-CS-Fixer"
      cmd: "php-cs-fixer"
      homepage: "https://github.com/FriendsOfPHP/PHP-CS-Fixer"
      installation: "https://github.com/FriendsOfPHP/PHP-CS-Fixer#installation"
      version: {
        parse: (text) -> text.match(/version (.*) by/)[1] + ".0"
      }
      docker: {
        image: "unibeautify/php-cs-fixer"
        workingDir: "/project"
      }
    }
  ]

  options:
    PHP:
      rules: true
      cs_fixer_path: true
      cs_fixer_version: true
      cs_fixer_config_file: true
      allow_risky: true
      level: true
      fixers: true

  beautify: (text, language, options, context) ->
    @debug('php-cs-fixer', options)
    php = @exe('php')
    phpCsFixer = @exe('php-cs-fixer')
    configFiles = ['.php_cs', '.php_cs.dist']

    # Find a config file in the working directory if a custom one was not provided
    if not options.cs_fixer_config_file
      options.cs_fixer_config_file = if context? and context.filePath? then @findFile(path.dirname(context.filePath), configFiles)

    # Try again to find a config file in the project root
    if not options.cs_fixer_config_file
      options.cs_fixer_config_file = @findFile(atom.project.getPaths()[0], configFiles)

    phpCsFixerOptions = [
      "fix"
      "--rules=#{options.rules}" if options.rules
      "--config=#{options.cs_fixer_config_file}" if options.cs_fixer_config_file
      "--allow-risky=#{options.allow_risky}" if options.allow_risky
      "--using-cache=no"
    ]
    if phpCsFixer.isVersion('1.x')
      phpCsFixerOptions = [
        "fix"
        "--level=#{options.level}" if options.level
        "--fixers=#{options.fixers}" if options.fixers
        "--config-file=#{options.cs_fixer_config_file}" if options.cs_fixer_config_file
      ]
    runOptions = {
      ignoreReturnCode: true
      help: {
        link: "https://github.com/FriendsOfPHP/PHP-CS-Fixer"
      }
    }

    # Find php-cs-fixer.phar script
    if options.cs_fixer_path
      @deprecate("The \"cs_fixer_path\" has been deprecated. Please switch to using the config with path \"Executables - PHP-CS-Fixer - Path\" in Atom-Beautify package settings now.")

    @Promise.all([
      @which(options.cs_fixer_path) if options.cs_fixer_path
      @which('php-cs-fixer')
      tempFile = @tempFile("temp", text, '.php')
    ]).then(([customPath, phpCsFixerPath]) =>
      paths = [customPath, phpCsFixerPath]
      @debug('php-cs-fixer paths', paths)
      _ = require 'lodash'
      # Get first valid, absolute path
      phpCSFixerPath = _.find(paths, (p) -> p and path.isAbsolute(p) )
      @verbose('phpCSFixerPath', phpCSFixerPath)
      @debug('phpCSFixerPath', phpCSFixerPath, paths)

      # Check if PHP-CS-Fixer path was found
      if phpCSFixerPath?
        # Found PHP-CS-Fixer path
        if @isWindows
          php.run([phpCSFixerPath, phpCsFixerOptions, tempFile], runOptions)
            .then(=>
              @readFile(tempFile)
            )
        else
          @run(phpCSFixerPath, [phpCsFixerOptions, tempFile], runOptions)
            .then(=>
              @readFile(tempFile)
            )
      else
        @verbose('php-cs-fixer not found!')
        # Could not find PHP-CS-Fixer path
        @Promise.reject(@commandNotFoundError(
          'php-cs-fixer'
          {
            link: "https://github.com/FriendsOfPHP/PHP-CS-Fixer"
            program: "php-cs-fixer.phar"
            pathOption: "PHP - CS Fixer Path"
          })
        )
    )

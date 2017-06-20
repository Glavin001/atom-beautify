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
        parse: (text) -> text.match(/PHP (\d+\.\d+\.\d+)/)[1]
      }
    }
    {
      name: "PHP-CS-Fixer"
      cmd: "php-cs-fixer"
      homepage: "https://github.com/FriendsOfPHP/PHP-CS-Fixer"
      installation: "https://github.com/FriendsOfPHP/PHP-CS-Fixer#installation"
      optional: true
      version: {
        parse: (text) ->
          try
            text.match(/version (.*) by/)[1] + ".0"
          catch
            text.match(/PHP CS Fixer (\d+\.\d+\.\d+)/)[1]
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

    isVersion1 = ((phpCsFixer.isInstalled and phpCsFixer.isVersion('1.x')) or \
      (options.cs_fixer_version and phpCsFixer.versionSatisfies("#{options.cs_fixer_version}.0.0", '1.x')))
    if isVersion1
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
      deprecationMessage = "The \"PHP - PHP-CS-Fixer Path (cs_fixer_path)\" configuration option has been deprecated. Please switch to using the option named \"Executables - PHP-CS-Fixer - Path\" in Atom-Beautify package settings now."
      @deprecate(deprecationMessage)

    @Promise.all([
      @which(options.cs_fixer_path) if options.cs_fixer_path
      phpCsFixer.path()
      @tempFile("temp", text, '.php')
    ]).then(([customPhpCsFixerPath, phpCsFixerPath, tempFile]) =>
      # Get first valid, absolute path
      finalPhpCsFixerPath = if customPhpCsFixerPath and path.isAbsolute(customPhpCsFixerPath) then \
        customPhpCsFixerPath else phpCsFixerPath
      @verbose('finalPhpCsFixerPath', finalPhpCsFixerPath, phpCsFixerPath, customPhpCsFixerPath)

      isPhpScript = (finalPhpCsFixerPath.indexOf(".phar") isnt -1) or (finalPhpCsFixerPath.indexOf(".php") isnt -1)
      @verbose('isPhpScript', isPhpScript)

      if finalPhpCsFixerPath and isPhpScript
        php.run([finalPhpCsFixerPath, phpCsFixerOptions, tempFile], runOptions)
          .then(=>
            @readFile(tempFile)
          )
      else
        phpCsFixer.run([phpCsFixerOptions, tempFile],
          Object.assign({}, runOptions, { cmd: finalPhpCsFixerPath })
        )
          .then(=>
            @readFile(tempFile)
          )
    )

###
Requires https://github.com/FriendsOfPHP/PHP-CS-Fixer
###

"use strict"
Beautifier = require('./beautifier')
path = require('path')

module.exports = class PHPCSFixer extends Beautifier

  name: 'PHP-CS-Fixer'
  link: "https://github.com/FriendsOfPHP/PHP-CS-Fixer"
  isPreInstalled: false

  options:
    PHP: true

  beautify: (text, language, options, context) ->
    @debug('php-cs-fixer', options)

    configFile = if context? and context.filePath? then @findFile(path.dirname(context.filePath), '.php_cs')
    phpCsFixerOptions = [
      "fix"
      "--rules=#{options.rules}" if options.rules
      "--config=#{configFile}" if configFile
      "--using-cache=no"
    ]
    runOptions = {
      ignoreReturnCode: true
      help: {
        link: "https://github.com/FriendsOfPHP/PHP-CS-Fixer"
      }
    }

    # Find php-cs-fixer.phar script
    @Promise.all([
      @which(options.cs_fixer_path) if options.cs_fixer_path
      @which('php-cs-fixer')
    ]).then((paths) =>
      @debug('php-cs-fixer paths', paths)
      _ = require 'lodash'
      # Get first valid, absolute path
      phpCSFixerPath = _.find(paths, (p) -> p and path.isAbsolute(p) )
      @verbose('phpCSFixerPath', phpCSFixerPath)
      @debug('phpCSFixerPath', phpCSFixerPath, paths)

      # Check if PHP-CS-Fixer path was found
      if phpCSFixerPath?
        # Found PHP-CS-Fixer path
        tempFile = @tempFile("temp", text)

        if @isWindows
          @run("php", [phpCSFixerPath, phpCsFixerOptions, tempFile], runOptions)
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

###
Requires https://github.com/FriendsOfPHP/PHP-CS-Fixer
###

"use strict"
Beautifier = require('./beautifier')

module.exports = class PHPCSFixer extends Beautifier
  name: "PHP-CS-Fixer"

  options: {
    PHP: true
  }

  beautify: (text, language, options) ->
    @debug('php-cs-fixer', options)

    @run(options.cs_fixer_path or "php-cs-fixer", [
      "fix"
      "--level=#{options.level}" if options.level
      "--fixers=#{options.fixers}" if options.fixers
      tempFile = @tempFile("temp", text)
      ], {
      ignoreReturnCode: true
      help: {
        link: "https://github.com/FriendsOfPHP/PHP-CS-Fixer"
        program: "php-cs-fixer"
        pathOption: "PHP - CS Fixer Path"
      }
      })
      .then(=>
        @readFile(tempFile)
      )

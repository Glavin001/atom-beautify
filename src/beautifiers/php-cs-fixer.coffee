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
        @run("php-cs-fixer", [
            "fix"
            "--level=#{options.level}" if options.level
            "--fixers=#{options.fixers}" if options.fixers
            tempFile = @tempFile("temp", text)
            ], {ignoreReturnCode: true})
            .then(=>
                @readFile(tempFile)
            )

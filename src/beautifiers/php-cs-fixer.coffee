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
        @run("php-cs-fixer", [
            "--level=#{options.level}" if options.level?
            "--fixers=#{options.fixers}" if options.fixers?
            tempFile = @tempFile("temp", text)
            ])
            .then(=>
                @readFile(tempFile)
            )

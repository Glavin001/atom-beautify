###
Requires https://github.com/FriendsOfPHP/PHP-CS-Fixer
###

"use strict"
Beautifier = require('./beautifier')

module.exports = class PHPCSFixer extends Beautifier

    options: {
        PHP: true
    }

    cli: (options) ->
        phpCsFixerPath = options.cs_fixer_path # jshint ignore: line
        if phpCsFixerPath
            isWin = /^win/.test(process.platform)
            # Use absolute path
            if isWin
                # Windows does require `php` prefix
                # See https://github.com/Glavin001/atom-beautify/issues/269
                "php \"#{phpCsFixerPath}\""
            else
                # Mac & Linux do not require `php` prefix
                # See https://github.com/Glavin001/atom-beautify/pull/263
                "\"#{phpCsFixerPath}\""
        else
            # Use command available in $PATH
            "php-cs-fixer"

    beautify: (text, language, options) ->
        @run(@cli(options), [
            "--level=#{options.level}" if options.level?
            "--fixers=#{options.fixers}" if options.fixers?
            tempFile = @tempFile("temp", text)
            ])
            .then(=>
                @readFile(tempFile)
            )

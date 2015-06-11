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

        isWin = @isWindows
        if isWin
            # Find php-cs-fixer.phar script
            @Promise.all([
              @which(options.cs_fixer_path)
              @which('php-cs-fixer')
              @which('php-cs-fixer.phar')
            ]).then((paths...)=>
                @debug('php-cs-fixer paths', paths)
                path = require('path')
                # Get first valid path
                phpCSFixerPath = _.find(paths, (p) -> path.isAbsolute(p) )
                @debug('phpCSFixerPath', phpCSFixerPath)
                # Check if PHP-CS-Fixer path was found
                if phpCSFixerPath?
                    # Found PHP-CS-Fixer path
                    @run("php", [
                        phpCSFixerPath
                        "fix"
                        "--level=#{options.level}" if options.level
                        "--fixers=#{options.fixers}" if options.fixers
                        tempFile = @tempFile("temp", text)
                        ], {
                        ignoreReturnCode: true
                        help: {
                            link: "http://php.net/manual/en/install.php"
                        }
                        })
                        .then(=>
                            @readFile(tempFile)
                        )
                else
                    # could not find PHP-CS-Fixer path
                    @Promise.reject(@commandNotFoundError(
                        'php-cs-fixer'
                        {
                        link: "https://github.com/FriendsOfPHP/PHP-CS-Fixer"
                        program: "php-cs-fixer.phar"
                        pathOption: "PHP - CS Fixer Path"
                        })
                    )
            )
        else
            @run("php-cs-fixer", [
                "fix"
                "--level=#{options.level}" if options.level
                "--fixers=#{options.fixers}" if options.fixers
                tempFile = @tempFile("temp", text)
                ], {
                ignoreReturnCode: true
                help: {
                    link: "https://github.com/FriendsOfPHP/PHP-CS-Fixer"
                }
                })
                .then(=>
                    @readFile(tempFile)
                )

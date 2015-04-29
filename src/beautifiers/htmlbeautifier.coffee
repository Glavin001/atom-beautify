###
Requires https://github.com/threedaymonk/htmlbeautifier
###

"use strict"
Beautifier = require('./beautifier')

module.exports = class HTMLBeautifier extends Beautifier

    options: {
        ERB: true
    }

    cli: (options) ->
        htmlBeautifierPath = options.htmlbeautifier_path # jshint ignore: line
        #
        if htmlBeautifierPath
            # Use absolute path
            htmlBeautifierPath
        else
            # Use command available in $PATH
            "htmlbeautifier"

    beautify: (text, language, options) ->
        @run(@cli(options), [
            '<'
            @tempFile("input", text)
            '>'
            outputFile = @tempFile("output")
            ])
            .then(=>
                @readFile(outputFile)
            )

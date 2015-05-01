###
Requires https://github.com/threedaymonk/htmlbeautifier
###

"use strict"
Beautifier = require('./beautifier')

module.exports = class HTMLBeautifier extends Beautifier
    name: "HTML Beautifier"
    options: {
        ERB: true
    }

    beautify: (text, language, options) ->
        @run("htmlbeautifier", [
            '<'
            @tempFile("input", text)
            '>'
            outputFile = @tempFile("output")
            ])
            .then(=>
                @readFile(outputFile)
            )

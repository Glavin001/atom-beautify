###
Requires https://github.com/bbatsov/rubocop
###

"use strict"
Beautifier = require('./beautifier')

module.exports = class Rubocop extends Beautifier
    name: "Rubocop"

    options: {
        Ruby: true
    }

    beautify: (text, language, options) ->
        @run("rubocop", [
            "--auto-correct"
            tempFile = @tempFile("temp", text)
            ], {ignoreReturnCode: true})
            .then(=>
                # console.log('rubocop', arguments, tempFile)
                @readFile(tempFile)
            )

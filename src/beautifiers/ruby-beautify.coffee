###
Requires https://github.com/erniebrodeur/ruby-beautify
###

"use strict"
Beautifier = require('./beautifier')

module.exports = class RubyBeautify extends Beautifier

    options: {
        Ruby: true
    }

    beautify: (text, language, options) ->
        @run("rbeautify", [
                @tempFile("input", text)
            ])

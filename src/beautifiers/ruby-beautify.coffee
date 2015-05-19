###
Requires https://github.com/erniebrodeur/ruby-beautify
###

"use strict"
Beautifier = require('./beautifier')

module.exports = class RubyBeautify extends Beautifier
    name: "Ruby Beautify"

    options: {
        Ruby: true
    }

    beautify: (text, language, options) ->
        @deprecate("Ruby-Beautify has been deprecated in favour of Rubocop beautifier.")
        @run("rbeautify", [
            @tempFile("input", text)
            ])

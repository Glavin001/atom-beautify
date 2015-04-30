###
Requires https://github.com/erniebrodeur/ruby-beautify
###

"use strict"
Beautifier = require('./beautifier')

module.exports = class RubyBeautify extends Beautifier

    options: {
        Ruby: true
    }

    cli: (options) ->
        path = options.rbeautify_path # jshint ignore: line
        if path
            # Use absolute path
            "ruby \"#{path}\""
        else
            # Use command available in $PATH
            "rbeautify"

    beautify: (text, language, options) ->
        @run(@cli(options), [
                @tempFile("input", text)
            ])

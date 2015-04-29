###
Requires https://github.com/hhatto/autopep8
###

"use strict"
Beautifier = require('./beautifier')

module.exports = class autopep8 extends Beautifier

    options: {
        Python: true
    }

    cli: (options) ->
        path = options.autopep8_path # jshint ignore: line
        if path
            # Use absolute path
            "\"#{path}\""
        else
            # Use command available in $PATH
            "autopep8"

    beautify: (text, language, options) ->
        @run(@cli(options), [
                @tempFile("input", text)
                "--max-line-length #{options.max_line_length}" if options.max_line_length?
                "--indent-size #{options.indent_size}" if options.indent_size?
                "--ignore #{options.ignore.join(',')}" if options.ignore?
            ])

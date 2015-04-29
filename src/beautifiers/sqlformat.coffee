###
Requires https://github.com/andialbrecht/sqlparse
###

"use strict"
Beautifier = require('./beautifier')

module.exports = class sqlformat extends Beautifier

    options: {
        SQL: true
    }

    cli: (options) ->
        path = options.sqlformat_path
        if path
            # Use absolute path
            "python \"#{path}\""
        else
            # Use command available in $PATH
            "sqlformat"

    beautify: (text, language, options) ->
        @run(@cli(options), [
                @tempFile("input", text)
                "--reindent"
                "--indent_width=#{options.indent_size}" if options.indent_size?
                "--keywords=#{options.keywords}" if options.keywords?
                "--identifiers=#{options.identifiers}" if options.identifiers?
            ])

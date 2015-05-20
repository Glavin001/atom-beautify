"use strict"
Beautifier = require('./beautifier')

module.exports = class TypeScriptFormatter extends Beautifier
    name: "TypeScript Formatter"
    options: {
        TypeScript: true
    }

    beautify: (text, language, options) ->
        return new @Promise((resolve, reject) ->

            format = require("typescript-formatter/lib/formatter")

            opts = {}
            opts.TabSize = options.tab_width
            opts.IndentSize = options.indent_size

            result = format(text, opts)
            resolve result

        )

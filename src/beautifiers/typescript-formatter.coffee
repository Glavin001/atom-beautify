"use strict"
Beautifier = require('./beautifier')

module.exports = class TypeScriptFormatter extends Beautifier
    name: "TypeScript Formatter"
    options: {
        TypeScript: true
    }

    beautify: (text, language, options) ->
        return new @Promise((resolve, reject) ->

            TF = require("typescript-formatter/typescript-toolbox/lib/formatter")
            opts = TF.createDefaultFormatCodeOptions()

            opts.TabSize = options.tab_width
            opts.IndentSize = options.indent_size

            result = TF.applyFormatterToContent(text, opts)
            resolve result

        )

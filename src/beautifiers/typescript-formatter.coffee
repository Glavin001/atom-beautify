"use strict"
Beautifier = require('./beautifier')

module.exports = class TypeScriptFormatter extends Beautifier
  name: "TypeScript Formatter"
  options: {
    TypeScript: true
  }

  beautify: (text, language, options) ->
    return new @Promise((resolve, reject) =>

      try
        format = require("typescript-formatter/lib/formatter").default
        formatterUtils = require("typescript-formatter/lib/utils")
        # @verbose('format', format, formatterUtils)

        opts = formatterUtils.createDefaultFormatCodeOptions()

        if options.indent_with_tabs
          opts.ConvertTabsToSpaces = false
        else
          opts.TabSize = options.tab_width or options.indent_size
          opts.IndentSize = options.indent_size
          opts.IndentStyle = 'space'
          
        @verbose('typescript', text, opts)
        result = format('', text, opts)
        @verbose(result)
        resolve result
      catch e
        return reject(e)

    )

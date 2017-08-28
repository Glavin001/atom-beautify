"use strict"
Beautifier = require('./beautifier')

module.exports = class TypeScriptFormatter extends Beautifier
  name: "TypeScript Formatter"
  link: "https://github.com/vvakame/typescript-formatter"
  options: {
    TypeScript: true
  }

  beautify: (text, language, options) ->
    return new @Promise((resolve, reject) =>

      try
        format = require("typescript-formatter/lib/formatter").default
        formatterUtils = require("typescript-formatter/lib/utils")
        # @verbose('format', format, formatterUtils)

        opts = formatterUtils.createDefaultFormatCodeSettings()

        if options.indent_with_tabs
          opts.convertTabsToSpaces = false
        else
          opts.tabSize = options.tab_width or options.indent_size
          opts.indentSize = options.indent_size
          opts.indentStyle = 'space'

        @verbose('typescript', text, opts)
        result = format('', text, opts)
        @verbose(result)
        resolve result
      catch e
        return reject(e)

    )

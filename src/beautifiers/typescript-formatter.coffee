"use strict"
Beautifier = require('./beautifier')

module.exports = class TypeScriptFormatter extends Beautifier
  name: "TypeScript Formatter"
  options: {
    TypeScript: true
  }

  beautify: (text, language, options) ->
    return new @Promise((resolve, reject) =>

      format = require("typescript-formatter/lib/formatter")
      formatterUtils = require("typescript-formatter/lib/utils")

      opts = formatterUtils.createDefaultFormatCodeOptions()
      opts.TabSize = options.tab_width or options.indent_size
      opts.IndentSize = options.indent_size
      opts.IndentStyle = 'space'
      opts.convertTabsToSpaces = true
      @verbose('typescript', text, opts)
      try
        result = format(text, opts)
        @verbose(result)
        resolve result
      catch e
        return reject(e)

    )

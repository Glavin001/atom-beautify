"use strict"
TF = require("typescript-formatter/typescript-toolbox/lib/formatter")

module.exports = (text, options, callback) ->
  opts = TF.createDefaultFormatCodeOptions()

  opts.TabSize = options.tab_width
  opts.IndentSize = options.indent_size

  result = TF.applyFormatterToContent(text, opts)
  callback result
  result

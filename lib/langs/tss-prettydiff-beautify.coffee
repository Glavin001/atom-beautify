"use strict"
prettydiff = require("prettydiff")
module.exports = (text, options, callback) ->
  args =
    source: text
    lang: "tss"
    mode: "beautify"
    inchar: options.indent_char
    insize: options.indent_size
    alphasort: options.alphasort or false
    preserve: (if (options.preserve_newlines is true ) then \
        "all" else "none")

  output = prettydiff.api(args)
  result = output[0]
  callback result
  result

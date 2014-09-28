"use strict"
prettydiff = require("prettydiff")
module.exports = (text, options, callback) ->
  args =
    source: text
    lang: "css"
    mode: "beautify"
    inchar: options.indent_character
    insize: options.indent_size
    alphasort: options.alphasort || false

  output = prettydiff.api(args)
  result = output[0]
  callback result
  result

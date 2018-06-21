###
###
path = require("path")

"use strict"
Beautifier = require('../beautifier')
format = require './beautifier'

module.exports = class Lua extends Beautifier
  name: "Lua beautifier"
  link: "https://github.com/Glavin001/atom-beautify/blob/master/src/beautifiers/lua-beautifier/beautifier.coffee"

  options: {
    Lua: {
      indent_size: true
      indent_char: true
      end_of_line: true
    }
  }

  beautify: (text, language, options) ->
    options.eol = @getDefaultLineEnding('\r\n','\n', options.end_of_line)
    indentChar = options.indent_char or " "
    indentSize = options.indent_size
    indent = indentChar.repeat(indentSize)
    new @Promise (resolve, reject) ->
      try
        resolve(format(text, indent, @warn, options))
      catch error
        reject error

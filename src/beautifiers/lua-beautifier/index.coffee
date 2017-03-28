###
###
path = require("path")

"use strict"
Beautifier = require('../beautifier')
format = require './beautifier'

module.exports = class Lua extends Beautifier
  name: "Lua beautifier"
  link: "https://github.com/Glavin001/atom-beautify/blob/master/src/beautifiers/lua-beautifier/beautifier.pl"

  options: {
    Lua: true
  }

  beautify: (text, language, options) ->
    new @Promise (resolve, reject) ->
      try
        resolve format text, options.indent_char.repeat options.indent_size
      catch error
        reject error

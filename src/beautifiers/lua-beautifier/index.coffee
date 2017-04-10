###
###
path = require("path")

"use strict"
Beautifier = require('../beautifier')
format = require './beautifier'

module.exports = class Lua extends Beautifier
  name: "Lua beautifier"
  link: "https://www.perl.org/"
  isPreInstalled: false

  options: {
    Lua: true
  }

  beautify: (text, language, options) ->
    new @Promise (resolve, reject) ->
      try
        resolve format text, options.indent_char.repeat options.indent_size
      catch error
        reject error

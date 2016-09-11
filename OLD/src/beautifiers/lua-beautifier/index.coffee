###
###
path = require("path")

"use strict"
Beautifier = require('../beautifier')

module.exports = class Lua extends Beautifier
  name: "Lua beautifier"
  link: "https://github.com/Glavin001/atom-beautify/blob/master/src/beautifiers/lua-beautifier/beautifier.pl"

  options: {
    Lua: true
  }

  beautify: (text, language, options) ->
    lua_beautifier = path.resolve(__dirname, "beautifier.pl")
    @run("perl", [
      lua_beautifier,
      '<',
      @tempFile("input", text)
      ])

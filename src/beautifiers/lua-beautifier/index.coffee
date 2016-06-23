###
###
path = require("path")

"use strict"
Beautifier = require('../beautifier')

module.exports = class Lua extends Beautifier
  name: "lua"

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

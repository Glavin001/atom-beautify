###
Requires [dfmt](https://github.com/Hackerpilot/dfmt)
###
"use strict"
Beautifier = require('./beautifier')

module.exports = class Dfmt extends Beautifier
  name: "dfmt"

  options: {
    D: true
  }

  beautify: (text, language, options) ->
    @run("dfmt", [
      @tempFile("input", text)
      ])

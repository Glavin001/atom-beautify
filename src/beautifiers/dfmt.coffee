###
Requires [dfmt](https://github.com/Hackerpilot/dfmt)
###
"use strict"
Beautifier = require('./beautifier')

module.exports = class Dfmt extends Beautifier
  name: "dfmt"
  link: "https://github.com/Hackerpilot/dfmt"
  executables: [
    {
      name: "Dfmt"
      cmd: "dfmt"
      homepage: "https://github.com/Hackerpilot/dfmt"
      installation: "https://github.com/dlang-community/dfmt#building"
    }
  ]

  options: {
    D: false
  }

  beautify: (text, language, options) ->
    @exe("dfmt").run([
      @tempFile("input", text)
      ])

###
Requires https://github.com/lpil/exfmt
###
"use strict"
Beautifier = require('./beautifier')

module.exports = class Exfmt extends Beautifier
  name: "exfmt"
  link: "https://github.com/lpil/exfmt"
  executables: [
    {
      name: "exfmt"
      cmd: "mix"
      homepage: "https://github.com/lpil/exfmt"
      installation: "https://github.com/lpil/exfmt"
      version: {
        args: ['help exfmt'],
        parse: (text) -> text.match(/exfmt-(\d+\.\d+\.\d+)/)[1]
      }
    }
  ]

  options: {
    Elixir: false
  }

  beautify: (text, language, options) ->
    @run("mix", [
      'exfmt',
      @tempFile("input", text, ".ex")
      ]
    )

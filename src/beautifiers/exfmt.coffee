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
      additionalHelp: "If Elixir's mix is installed you can confirm exfmt is installed by running mix exfmt or install it with 'mix archive.install github lpil/exfmt tag v0.4.0'"
      version: {
        args: ['help','exfmt'],
        parse: (text) -> text.match(/exfmt-(\d+\.\d+\.\d+)/)[1]
      }
      docker: {
        image: "unibeautify/exfmt"
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

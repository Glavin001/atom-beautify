###
Requires https://github.com/lpil/exfmt
###
"use strict"
Beautifier = require('./beautifier')

module.exports = class Exfmt extends Beautifier
  name: "exfmt"
  link: "https://github.com/lpil/exfmt"
  isPreInstalled: false

  options: {
    Elixir: true
  }

  beautify: (text, language, options) ->
    @run("mix", [
      'exfmt',
      @tempFile("input", text, ".ex")
      ]
    )

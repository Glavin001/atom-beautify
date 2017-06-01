###
Requires [formatR](https://github.com/yihui/formatR)
###
path = require("path")

"use strict"
Beautifier = require('../beautifier')

module.exports = class R extends Beautifier
  name: "formatR"
  link: "https://github.com/yihui/formatR"
  executables: [
    {
      name: "Rscript"
      cmd: "Rscript"
      homepage: "https://github.com/yihui/formatR"
      installation: "https://github.com/yihui/formatR"
      version: {
        parse: (text) -> text.match(/version (\d+\.\d+\.\d+) /)[1]
        runOptions: {
          returnStderr: true
        }
      }
    }
  ]

  options: {
    R: true
  }

  beautify: (text, language, options) ->
    rScript = @exe("Rscript")
    r_beautifier = path.resolve(__dirname, "formatR.r")
    rScript.run([
      r_beautifier,
      options.indent_size,
      @tempFile("input", text),
      '>',
      @tempFile("input", text)
    ])

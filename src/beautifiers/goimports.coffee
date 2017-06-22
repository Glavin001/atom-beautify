###
Requires https://godoc.org/golang.org/x/tools/cmd/goimports
###

"use strict"
Beautifier = require('./beautifier')

module.exports = class Goimports extends Beautifier
  name: "goimports"
  link: "https://godoc.org/golang.org/x/tools/cmd/goimports"
  executables: [
    {
      name: "goimports"
      cmd: "goimports"
      homepage: "https://godoc.org/golang.org/x/tools/cmd/goimports"
      installation: "https://godoc.org/golang.org/x/tools/cmd/goimports"
      version: {
        # Does not display version
        args: ['--help'],
        parse: (text) -> text.indexOf("usage: goimports") isnt -1 and "0.0.0",
        runOptions: {
          ignoreReturnCode: true,
          returnStderr: true
        }
      }
      docker: {
        image: "unibeautify/goimports"
      }
    }
  ]

  options: {
    Go: false
  }

  beautify: (text, language, options) ->
    @exe("goimports").run([
      @tempFile("input", text)
      ])

###
Requires https://github.com/OCamlPro/ocp-indent
###

"use strict"
Beautifier = require('./beautifier')

module.exports = class OCPIndent extends Beautifier
  name: "ocp-indent"
  link: "https://www.typerex.org/ocp-indent.html"
  executables: [
    {
      name: "ocp-indent"
      cmd: "ocp-indent"
      homepage: "https://www.typerex.org/ocp-indent.html"
      installation: "https://www.typerex.org/ocp-indent.html#installation"
      version: {
        parse: (text) ->
          try
            text.match(/(\d+\.\d+\.\d+)/)[1]
          catch
            text.match(/(\d+\.\d+)/)[1] + ".0"
      }
      docker: {
        image: "unibeautify/ocp-indent"
      }
    }
  ]

  options: {
    OCaml: true
  }

  beautify: (text, language, options) ->
    @run("ocp-indent", [
      @tempFile("input", text)
      ], {
        help: {
          link: "https://www.typerex.org/ocp-indent.html"
        }
      })
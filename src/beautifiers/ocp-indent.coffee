###
Requires https://github.com/OCamlPro/ocp-indent
###

"use strict"
Beautifier = require('./beautifier')

module.exports = class OCPIndent extends Beautifier
  name: "ocp-indent"
  link: "https://www.typerex.org/ocp-indent.html"

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

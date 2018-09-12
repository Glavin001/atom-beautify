###
Requires https://github.com/ocaml-ppx/ocamlformat
###

"use strict"
Beautifier = require('./beautifier')

module.exports = class OCamlFormat extends Beautifier
  name: "ocamlformat"
  link: "https://github.com/ocaml-ppx/ocamlformat"
  executables: [
    {
      name: "ocamlformat"
      cmd: "ocamlformat"
      homepage: "https://github.com/ocaml-ppx/ocamlformat"
      installation: "https://github.com/ocaml-ppx/ocamlformat#installation"
      version: {
        parse: (text) ->
          try
            text.match(/(\d+\.\d+\.\d+)/)[1]
          catch
            text.match(/(\d+\.\d+)/)[1] + ".0"
      }
    }
  ]

  options: {
    OCaml: true
  }

  beautify: (text, language, options) ->
    @run("ocamlformat", [
      @tempFile("input", text)
      ], {
        help: {
          link: "https://github.com/ocaml-ppx/ocamlformat"
        }
      })

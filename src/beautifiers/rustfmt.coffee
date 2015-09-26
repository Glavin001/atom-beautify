###
Requires https://github.com/nrc/rustfmt
###

"use strict"
Beautifier = require('./beautifier')

module.exports = class Rustfmt extends Beautifier

  name: "rustfmt"

  options: {
    Rust: true
  }

  beautify: (text, language, options) ->
    program = options.rustfmt_path or "rustfmt"
    @run(program, [
      tmpFile = @tempFile("tmp", text)
      ], help: {
        link: "https://github.com/nrc/rustfmt"
        program: "rustfmt"
        pathOption: "Rust - Rustfmt Path"
      })
      .then(=>
        @readFile(tmpFile)
      )

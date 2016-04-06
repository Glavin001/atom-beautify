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

    # get file path which is the search path for rustfmt.toml as
    # the beautifier runs rustfmt in a tmp directory.
    # This will pick up any rustfmt.toml defined in the crate root

    editor = atom.workspace.getActivePaneItem()
    file = editor?.buffer.file
    filePath = file?.path
    program = options.rustfmt_path or "rustfmt"
    @run(program, [
      tmpFile = @tempFile("tmp", text)
      ["--write-mode", "overwrite"]
      ["--config-path", filePath]
      ], help: {
        link: "https://github.com/nrc/rustfmt"
        program: "rustfmt"
        pathOption: "Rust - Rustfmt Path"
      })
      .then(=>
        @readFile(tmpFile)
      )

###
Requires emacs with verilog-mode https://www.veripool.org/wiki/verilog-mode
###

"use strict"
Beautifier = require('../beautifier')
path = require("path")

module.exports = class EmacsVerilogMode extends Beautifier
  name: "Emacs Verilog Mode"
  link: "https://www.veripool.org/projects/verilog-mode/"
  isPreInstalled: false
  executables: [
    {
      name: "Emacs"
      cmd: "emacs"
      homepage: "https://www.gnu.org/software/emacs/"
      installation: "https://www.gnu.org/software/emacs/"
      version: {
        parse: (text) -> text.match(/Emacs (\d+\.\d+\.\d+)/)[1]
      }
    }
  ]

  options: {
    Verilog: {
      emacs_script_path: true
    }
  }

  beautify: (text, language, options) ->
    emacs_script_path = options.emacs_script_path

    if not emacs_script_path
      emacs_script_path = path.resolve(__dirname, "verilog-mode.el")

    @debug('verilog-beautifier', 'emacs script path: ' + emacs_script_path)

    tempFile = @tempFile("input", text)

    args = [
      "--batch"
      tempFile
      "-l"
      emacs_script_path
      "-f"
      "verilog-mode"
      "-f"
      "verilog-batch-indent"
      ]

    @debug('verilog-beautifier', 'emacs args: ' + args)

    @exe("emacs").run(args, {ignoreReturnCode: false})
      .then(=>
        @readFile(tempFile)
      )

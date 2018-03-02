###
Requires https://www.gnu.org/software/emacs/
###

"use strict"
Beautifier = require('../beautifier')
path = require("path")

module.exports = class VhdlBeautifier extends Beautifier
  name: "VHDL Beautifier"
  link: "https://www.gnu.org/software/emacs/"
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
    VHDL: {
      emacs_script_path: true
    }
  }

  beautify: (text, language, options) ->
    @debug('vhdl-beautifier', options)
    emacs = @exe("emacs")

    emacs_script_path = options.emacs_script_path

    if not emacs_script_path
      emacs_script_path = path.resolve(__dirname, "emacs-vhdl-formating-script.lisp")

    @debug('vhdl-beautifier', 'emacs script path: ' + emacs_script_path)

    args = [
      '--batch'
      '-l'
      emacs_script_path
      '-f'
      'vhdl-batch-indent-region'
      tempFile = @tempFile("temp", text)
      ]

    emacs.run(args, {ignoreReturnCode: false})
      .then(=>
        @readFile(tempFile)
      )

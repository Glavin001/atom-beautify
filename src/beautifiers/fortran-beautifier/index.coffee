###
Requires https://www.gnu.org/software/emacs/
###

"use strict"
Beautifier = require('../beautifier')
path = require("path")

module.exports = class FortranBeautifier extends Beautifier
  name: "Fortran Beautifier"
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
    Fortran: true
  }

  beautify: (text, language, options) ->
    @debug('fortran-beautifier', options)
    emacs = @exe("emacs")

    emacs_path = options.emacs_path
    emacs_script_path = options.emacs_script_path

    if not emacs_script_path
      emacs_script_path = path.resolve(__dirname, "emacs-fortran-formating-script.lisp")

    @debug('fortran-beautifier', 'emacs script path: ' + emacs_script_path)

    args = [
      '--batch'
      '-l'
      emacs_script_path
      '-f'
      'f90-batch-indent-region'
      tempFile = @tempFile("temp", text)
      ]

    if emacs_path
      @deprecate("The \"emacs_path\" has been deprecated. Please switch to using the config with path \"Executables - Emacs - Path\" in Atom-Beautify package settings now.")
      @run(emacs_path, args, {ignoreReturnCode: false})
        .then(=>
          @readFile(tempFile)
        )
    else
      emacs.run(args, {ignoreReturnCode: false})
        .then(=>
          @readFile(tempFile)
        )

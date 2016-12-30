###
Requires https://www.gnu.org/software/emacs/
###

"use strict"
Beautifier = require('../beautifier')
path = require("path")

module.exports = class FortranBeautifier extends Beautifier
  name: "Fortran Beautifier"
  link: "https://github.com/Glavin001/atom-beautify/blob/master/src/beautifiers/fortran-beautifier/emacs-fortran-formating-script.lisp"

  options: {
    Fortran: true
  }

  beautify: (text, language, options) ->
    @debug('fortran-beautifier', options)

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
      @run(emacs_path, args, {ignoreReturnCode: false})
        .then(=>
          @readFile(tempFile)
        )
    else
      @run("emacs", args, {ignoreReturnCode: false})
        .then(=>
          @readFile(tempFile)
        )

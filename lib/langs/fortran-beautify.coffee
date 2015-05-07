###
// Requires [emacs](https://www.gnu.org/software/emacs/)
###

"use strict"
fs = require("fs")
temp = require("temp").track()
path = require("path")

getCmd = (inputPath, outputPath, options, cb) ->
  #console.debug "[fortran-beautify] options: " + JSON.stringify(options)

  emacs_path = options.emacs_path
  emacs_script_path = options.emacs_script_path

  if not emacs_script_path
    emacs_script_path = path.resolve(__dirname, "emacs/emacs-fortran-beautify.lisp")

  args = [
    '--batch'
    "-l \"#{emacs_script_path}\""
    '-f f90-batch-indent-region'
    "\"#{inputPath}\""
  ]

  if emacs_path
    cmd = "python \"#{emacs_path}\" " + args.join(' ')
  else
    cmd = "emacs " + args.join(' ')

  #console.debug "[fortran-beautify] cmd: " + cmd
  fs.symlinkSync(inputPath, outputPath)
  return cmd

cliBeautify = require("./cli-beautify")
isStdout = false
module.exports = cliBeautify(getCmd, isStdout)

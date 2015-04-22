###
// Requires [f90ppr](http://www.ifremer.fr/ditigo/molagnon/fortran90/contenu.html)
###

"use strict"
fs = require("fs")
temp = require("temp").track()

getCmd = (inputPath, outputPath, options, cb) ->
  if not options.emacs_script_path?
    return new Error("'Emacs Script Path' not set!" +
      " Please set this in the Atom Beautify package settings.")

  path = options.emacs_path
  console.debug "[fortran-beautify] options: " + JSON.stringify(options)

  args = [
    '--batch'
    "-l \"#{options.emacs_script_path}\""
    '-f f90-batch-indent-region'
    "\"#{inputPath}\""
  ]

  if path
    cmd = "python \"#{path}\" " + args.join(' ')
  else
    cmd = "emacs " + args.join(' ')

  console.debug "[fortran-beautify] cmd: " + cmd

  fs.symlinkSync(inputPath, outputPath)

  return cmd

cliBeautify = require("./cli-beautify")
isStdout = false
module.exports = cliBeautify(getCmd, isStdout)

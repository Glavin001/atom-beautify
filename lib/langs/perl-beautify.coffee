###
// Requires [perltidy](http://perltidy.sourceforge.net)
###

"use strict"

getCmd = (inputPath, outputPath, options) ->
  # console.debug "[perl-beautify] options: " + JSON.stringify(options)
  args = [
    '"' + options.perltidy_path + '"'
    '--standard-output'
    '--standard-error-output'
    '--quiet'
  ]
  if options.perltidy_profile
    args.push '"--profile=' + options.perltidy_profile + '"'
  args.push '"' + inputPath + '"'
  cmd = args.join(' ')
  # console.debug "[perl-beautify] cmd: " + cmd
  return cmd

cliBeautify = require("./cli-beautify")
isStdout = true
module.exports = cliBeautify(getCmd, isStdout)

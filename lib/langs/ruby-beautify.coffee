###
Requires https://github.com/erniebrodeur/ruby-beautify
###
getCmd = (inputPath, outputPath, options) ->
  path = options.rbeautify_path # jshint ignore: line
  if path

    # Use absolute path
    "ruby \"" + path + "\" \"" + inputPath + "\""
  else

    # Use command available in $PATH
    "rbeautify \"" + inputPath + "\""
"use strict"
cliBeautify = require("./cli-beautify")
isStdout = true
module.exports = cliBeautify(getCmd, isStdout)

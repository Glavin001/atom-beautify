###
Requires https://github.com/hhatto/autopep8
###
getCmd = (inputPath, outputPath, options) ->
  path = options.autopep8_path # jshint ignore: line
  # jshint ignore: line
  # jshint ignore: line
  optionsStr = ""
  if options.max_line_length?
    optionsStr += "--max-line-length #{options.max_line_length}"
  if options.indent_size?
    optionsStr += " --indent-size #{options.indent_size}"
  if options.ignore?
    optionsStr += " --ignore " + options.ignore.join(",") # jshint ignore: line
  if path
    # Use absolute path
    "#{path} \"#{inputPath}\" #{optionsStr}"
  else
    # Use command available in $PATH
    "autopep8 \"#{inputPath}\" #{optionsStr}"
"use strict"
cliBeautify = require("./cli-beautify")
isStdout = true
module.exports = cliBeautify(getCmd, isStdout)

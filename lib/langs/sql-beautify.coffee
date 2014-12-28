###
Requires https://github.com/andialbrecht/sqlparse
###
getCmd = (inputPath, outputPath, options) ->
  path = options.sqlformat_path

  optionsStr = "--reindent"
  if options.indent_size?
    optionsStr += " --indent_width=#{options.indent_size}"
  if options.keywords?
    optionsStr += " --keywords=#{options.keywords}"
  if options.identifiers
    optionsStr += " --identifiers=#{options.identifiers}"

  if path
    # Use absolute path
    "python \"" + path + "\" \"" + inputPath + "\" " + optionsStr
  else
    # Use command available in $PATH
    "sqlformat \"" + inputPath + "\" " + optionsStr

"use strict"
cliBeautify = require("./cli-beautify")
isStdout = true
module.exports = cliBeautify(getCmd, isStdout)

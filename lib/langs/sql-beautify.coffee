###
Requires https://github.com/andialbrecht/sqlparse
###
getCmd = (inputPath, outputPath, options) ->
  path = options.sqlformat_path
  optionsStr = " --indent_width={0} --keywords={1} --identifiers={2} --reindent"
  optionsStr = optionsStr.replace("{0}", options.indent_size)
		                     .replace("{1}", options.keywords)
      					         .replace("{2}", options.identifiers)
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

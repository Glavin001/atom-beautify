###
Requires http: //johnmacfarlane.net/pandoc/
###
getCmd = (inputPath, outputPath, options) ->
  optionsStr = " --read markdown --write markdown --output \"" + outputPath + "\" \"" + inputPath + "\""

  pandocPath = options.markdown_beautifier_path # jshint ignore: line
  if pandocPath

    # Use absolute path
    pandocPath + optionsStr
  else

    # Use command available in $PATH
    "pandoc" + optionsStr
"use strict"
cliBeautify = require("./cli-beautify")
module.exports = cliBeautify(getCmd)

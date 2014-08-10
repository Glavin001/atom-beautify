###
Requires http://pear.php.net/package/PHP_Beautifier
###
getCmd = (inputPath, outputPath, options) ->
  phpBeautifierPath = options.beautifier_path # jshint ignore: line
  if phpBeautifierPath

    # Use absolute path
    "php \"" + phpBeautifierPath + "\" \"" + inputPath + "\" \"" + outputPath + "\""
  else

    # Use command available in $PATH
    "php_beautifier \"" + inputPath + "\" \"" + outputPath + "\""
"use strict"
cliBeautify = require("./cli-beautify")
module.exports = cliBeautify(getCmd)

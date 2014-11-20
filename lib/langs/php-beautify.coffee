###
Requires http://pear.php.net/package/PHP_Beautifier
###
getCmd = (inputPath, outputPath, options) ->
  phpBeautifierPath = options.beautifier_path # jshint ignore: line
  filters = options.filters
  directoryFilters = options.directory_filters # jshint ignore: line

  if phpBeautifierPath
    # Use absolute path
    "php \"#{phpBeautifierPath}\" --input \"#{inputPath}\" --output \"#{outputPath}\" --filters \"#{filters}\" --directory_filters \"#{directoryFilters}\""
  else
    # Use command available in $PATH
    "php_beautifier --input \"#{inputPath}\" --output \"#{outputPath}\" --filters \"#{filters}\" --directory_filters \"#{directoryFilters}\""

"use strict"
cliBeautify = require("./cli-beautify")
module.exports = cliBeautify(getCmd)

###
Requires http://pear.php.net/package/PHP_Beautifier
###
getCmd = (inputPath, outputPath, options) ->
  phpBeautifierPath = options.beautifier_path # jshint ignore: line
  filters = options.filters
  directoryFilters = options.directory_filters # jshint ignore: line

  cmd = "--input \"#{inputPath}\" --output \"#{outputPath}\""

  if filters
    cmd += " --filters \"#{filters}\""
  if directoryFilters
    cmd += " --directory_filters \"#{directoryFilters}\""

  if phpBeautifierPath
    # Use absolute path
    "php \"#{phpBeautifierPath}\" #{cmd}"
  else
    # Use command available in $PATH
    "php_beautifier #{cmd}"

"use strict"
cliBeautify = require("./cli-beautify")
module.exports = cliBeautify(getCmd)

###
Requires https://github.com/bbatsov/rubocop
###

getCmd = (inputPath, outputPath, options) ->
  rubocop_path = options.rubocop_path || "rubocop" # jshint ignore: line

  rubocop_path + " -a '" + inputPath  + "'; cp '" +
    inputPath + "' '" + outputPath + "'"

"use strict"

cliBeautify = require("./cli-beautify")
module.exports = cliBeautify(getCmd)

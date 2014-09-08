###
Requires https://github.com/hhatto/autopep8
###
"use strict"
cliBeautify = require("./cli-beautify")
getCmd = (inputPath, outputPath, options) ->
    # Use command available in $PATH
    "htmlbeautifier < \"" + inputPath + "\" > \"" + outputPath + "\""
module.exports = cliBeautify(getCmd)

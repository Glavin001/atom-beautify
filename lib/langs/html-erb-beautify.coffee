###
Requires https://github.com/hhatto/autopep8
###
"use strict"
cliBeautify = require("./cli-beautify")
getCmd = (inputPath, outputPath, options) ->
    htmlBeautifierPath = options.htmlbeautifier_path # jshint ignore: line

    cmd = "< \"" + inputPath + "\" > \"" + outputPath + "\""
    if htmlBeautifierPath
        # Use absolute path
        "\"#{htmlBeautifierPath}\" #{cmd}"
    else
        # Use command available in $PATH
        "htmlbeautifier #{cmd}"

module.exports = cliBeautify(getCmd)

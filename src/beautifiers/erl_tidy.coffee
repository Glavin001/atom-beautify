###
Requires https://github.com/hhatto/autopep8
###

"use strict"
Beautifier = require('./beautifier')

module.exports = class ErlTidy extends Beautifier

  name: "erl_tidy"

  options: {
    Erlang: true
  }

  beautify: (text, language, options) ->
    tempFile = undefined
    @tempFile("input", text).then((path) =>
      tempFile = path
      @run("erl", [
        ["-eval", 'erl_tidy:file("' + tempFile + '")']
        ["-noshell", "-s", "init", "stop"]
        ])
    ).then(=>
      @readFile(tempFile)
    )

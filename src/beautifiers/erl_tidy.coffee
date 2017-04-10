###
Requires https://github.com/hhatto/autopep8
###

"use strict"
Beautifier = require('./beautifier')

module.exports = class ErlTidy extends Beautifier

  name: "erl_tidy"
  link: "http://erlang.org/doc/man/erl_tidy.html"
  isPreInstalled: false

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
        ],
        { help: { link: "http://erlang.org/doc/man/erl_tidy.html" } }
        )
    ).then(=>
      @readFile(tempFile)
    )

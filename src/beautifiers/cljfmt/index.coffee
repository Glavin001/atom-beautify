"use strict"
path = require('path')
Beautifier = require('../beautifier')

module.exports = class Cljfmt extends Beautifier

  name: "cljfmt"
  link: "https://github.com/snoe/node-cljfmt"

  options: {
    Clojure: false
  }

  beautify: (text, language, options) ->
    formatPath = path.resolve(__dirname, "fmt.edn")
    @tempFile("input", text).then((filePath) =>
      @run("cljfmt", [
        filePath,
        "--edn=" + formatPath
      ]).then(=>
        @readFile(filePath)))

"use strict"
path = require('path')
Beautifier = require('../beautifier')

module.exports = class ClojureBeautifier extends Beautifier

  name: "Clojure Beautifier"
  link: "https://github.com/snoe/node-cljfmt"

  options: {
    Clojure: true
  }

  beautify: (text, language, options) ->
    formatPath = path.resolve(__dirname, "fmt.edn")
    cljfmt = path.resolve(__dirname, "..", "..", "..", "node_modules/.bin/cljfmt")
    @tempFile("input", text).then((filePath) =>
      @run(cljfmt, [
        filePath,
        "--edn=" + formatPath
      ]).then(=>
        @readFile(filePath)))

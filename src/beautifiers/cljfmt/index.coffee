"use strict"
path = require('path')
Beautifier = require('../beautifier')

module.exports = class Cljfmt extends Beautifier

  name: "cljfmt"
  link: "https://github.com/snoe/node-cljfmt"

  options: {
    Clojure:
      executable_path: true
  }

  beautify: (text, language, options) ->
    formatPath = path.resolve(__dirname, "fmt.edn")
    cljfmt = options.executable_path
    @tempFile("input", text).then((filePath) =>
      @run(cljfmt, [
        filePath,
        "--edn=" + formatPath
      ]).then(=>
        @readFile(filePath)))

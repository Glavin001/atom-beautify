"use strict"
Beautifier = require('./beautifier')
path = require('path')

module.exports = class LatexBeautify extends Beautifier
  name: "Latex Beautify"

  options: {
    LaTeX: true
  }

  beautify: (text, language, options) ->
    @tempFile("indent", "", "log")
    .then( (logFile)=>
      logDir = path.dirname logFile
      @tempTex = @tempFile("latex", text)
      run = @run "latexindent", [
        "-o"
        "-s"
        "-c=" + logDir
        @tempTex
        @tempTex
      ]
    )
    .then( =>
      @readFile(@tempTex)
      )

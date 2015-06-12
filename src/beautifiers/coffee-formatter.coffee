"use strict"
Beautifier = require('./beautifier')

module.exports = class CoffeeFormatter extends Beautifier

  name: "Coffee Formatter"

  options: {
    CoffeeScript: true
  }

  beautify: (text, language, options) ->

    return new @Promise((resolve, reject) ->

      CF = require("coffee-formatter")
      lines = text.split("\n")
      resultArr = []
      i = 0
      len = lines.length

      while i < len
        curr = lines[i]
        p = CF.formatTwoSpaceOperator(curr)
        p = CF.formatOneSpaceOperator(p)
        p = CF.shortenSpaces(p)
        resultArr.push p
        i++
      result = resultArr.join("\n")
      resolve result

    )

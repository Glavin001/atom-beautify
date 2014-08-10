"use strict"
CF = require("coffee-formatter")
module.exports = (text, options, callback) ->
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
  callback result
  result

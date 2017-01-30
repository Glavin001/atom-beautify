###
Requires https://github.com/threedaymonk/htmlbeautifier
###

"use strict"
Beautifier = require('./htmlbeautifier')

module.exports = class ISMLBeautifier extends HTMLBeautifier
  name: "ISML Beautifier"

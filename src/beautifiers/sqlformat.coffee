###
Requires https://github.com/andialbrecht/sqlparse
###

"use strict"
Beautifier = require('./beautifier')

module.exports = class Sqlformat extends Beautifier
  name: "sqlformat"

  options: {
    SQL: true
  }

  beautify: (text, language, options) ->
    @run("sqlformat", [
      @tempFile("input", text)
      "--reindent"
      "--indent_width=#{options.indent_size}" if options.indent_size?
      "--keywords=#{options.keywords}" if options.keywords?
      "--identifiers=#{options.identifiers}" if options.identifiers?
      ], help: {
      link: "https://github.com/andialbrecht/sqlparse"
      })

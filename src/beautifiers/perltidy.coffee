###
Requires [perltidy](http://perltidy.sourceforge.net)
###
"use strict"
Beautifier = require('./beautifier')

module.exports = class PerlTidy extends Beautifier
  name: "Perltidy"

  options: {
    Perl: true
  }

  cli: (options) ->
    if not options.perltidy_path?
      return new Error("'Perl Perltidy Path' not set!" +
        " Please set this in the Atom Beautify package settings.")
    else
      return options.perltidy_path

  beautify: (text, language, options) ->
    @run("perltidy", [
      '--standard-output'
      '--standard-error-output'
      '--quiet'
      "--profile=#{options.perltidy_profile}" if options.perltidy_profile?
      @tempFile("input", text)
      ], help: {
      link: "http://perltidy.sourceforge.net/"
      })

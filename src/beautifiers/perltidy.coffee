###
Requires [perltidy](http://perltidy.sourceforge.net)
###
"use strict"
Beautifier = require('./beautifier')
path = require('path')

module.exports = class PerlTidy extends Beautifier
  name: "Perltidy"
  link: "http://perltidy.sourceforge.net/"
  isPreInstalled: false

  options: {
    Perl: true
  }

  cli: (options) ->
    if not options.perltidy_path?
      return new Error("'Perl Perltidy Path' not set!" +
        " Please set this in the Atom Beautify package settings.")
    else
      return options.perltidy_path

  configFiles = ['.perltidyrc']
  beautify: (text, language, options, context) ->
    # Find a config file in the working directory if a custom one was not provided
    if not options.perltidy_profile
      options.perltidy_profile = if context? and context.filePath? then @findFile(path.dirname(context.filePath), configFiles)

    # Try again to find a config file in the project root
    if not options.perltidy_profile
      options.perltidy_profile = @findFile(atom.project.getPaths()[0], configFiles)

    @run("perltidy", [
      '--standard-output'
      '--standard-error-output'
      '--quiet'
      "--profile=#{options.perltidy_profile}" if options.perltidy_profile?.length
      @tempFile("input", text)
      ], help: {
        link: "http://perltidy.sourceforge.net/"
      })

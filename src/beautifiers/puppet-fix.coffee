###
Requires [puppet-link](http://puppet-lint.com/)
###
"use strict"
Beautifier = require('./beautifier')

module.exports = class PuppetFix extends Beautifier
  # this is what displays as your Default Beautifier in Language Config
  name: "puppet-lint"
  link: "http://puppet-lint.com/"

  options: {
    Puppet: true
  }

  cli: (options) ->
    if not options.puppet_path?
      return new Error("'puppet-lint' path is not set!" +
        " Please set this in the Atom Beautify package settings.")
    else
      return options.puppet_path

  beautify: (text, language, options) ->
    @run("puppet-lint", [
      '--fix'
      tempFile = @tempFile("input", text)
      ], {
        ignoreReturnCode: true
        help: {
          link: "http://puppet-lint.com/"
        }
      })
      .then(=>
        @readFile(tempFile)
      )

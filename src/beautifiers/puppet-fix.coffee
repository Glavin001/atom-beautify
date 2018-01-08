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

  executables: [
    {
      name: "puppet-lint"
      cmd: "puppet-lint"
      homepage: "http://puppet-lint.com/"
      installation: "http://puppet-lint.com/"
      version: {
        parse: (text) -> text.match(/puppet-lint (\d+\.\d+\.\d+)/)[1]
      }
      docker: {
        image: "unibeautify/puppet-lint"
      }
    }
  ]

  beautify: (text, language, options) ->
    @exe("puppet-lint").run([
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

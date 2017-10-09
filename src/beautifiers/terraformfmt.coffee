###
Requires terraform installed
###

"use strict"
Beautifier = require('./beautifier')

module.exports = class Terraformfmt extends Beautifier
  name: "terraformfmt"
  link: "https://www.terraform.io/docs/commands/fmt.html"
  isPreInstalled: false

  options: {
    Terraform: true
  }

  beautify: (text, language, options) ->
    @run("terraform", [
      "fmt"
      tempFile = @tempFile("input", text)
      ])
      .then(=>
        @readFile(tempFile)
      )

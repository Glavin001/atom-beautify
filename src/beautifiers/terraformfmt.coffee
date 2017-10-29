###
Requires terraform installed
###

"use strict"
Beautifier = require('./beautifier')

module.exports = class Terraformfmt extends Beautifier
  name: "terraformfmt"
  link: "https://www.terraform.io/docs/commands/fmt.html"

  options: {
    Terraform: false
  }

  executables: [
    {
      name: "Terraform"
      cmd: "terraform"
      homepage: "https://www.terraform.io"
      installation: "https://www.terraform.io"
      version: {
        parse: (text) -> text.match(/Terraform v(\d+\.\d+\.\d+)/)[1]
      }
      docker: {
        image: "hashicorp/terraform"
      }
    }
  ]

  beautify: (text, language, options) ->
    @exe("terraform").run([
      "fmt"
      tempFile = @tempFile("input", text)
      ])
      .then(=>
        @readFile(tempFile)
      )

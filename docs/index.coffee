#!/usr/bin/env coffee

# Dependencies
Handlebars = require('handlebars')
Beautifiers = require("../src/beautifiers")
fs = require('fs')

console.log('Generating options...')
beautifier = new Beautifiers()
languageOptions = beautifier.options
packageOptions = require('../src/config.coffee')
# Build options by Beautifier
beautifierOptions = {}
for optionName, optionDef of languageOptions
    beautifiers = optionDef.beautifiers ? []
    for beautifierName in beautifiers
        beautifierOptions[beautifierName] ?= {}
        beautifierOptions[beautifierName][optionName] = optionDef

console.log('Loading options template...')
optionsTemplatePath = __dirname + '/options-template.md'
optionTemplatePath = __dirname + '/option-template.md'
optionsPath = __dirname + '/options.md'
optionsTemplate = fs.readFileSync(optionsTemplatePath).toString()
optionTemplate = fs.readFileSync(optionTemplatePath).toString()

console.log('Building documentation from template and options...')
Handlebars.registerPartial('option', optionTemplate)
template = Handlebars.compile(optionsTemplate)
context = {
    packageOptions: packageOptions
    languageOptions: languageOptions
    beautifierOptions: beautifierOptions
}
result = template(context)

console.log('Writing documentation to file...')
fs.writeFileSync(optionsPath, result)

console.log('Done.')
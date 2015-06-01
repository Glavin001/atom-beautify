#!/usr/bin/env coffee

# Dependencies
Handlebars = require('handlebars')
Beautifiers = require("../src/beautifiers")
fs = require('fs')

console.log('Generating options...')
beautifier = new Beautifiers()
defaultLanguageOptions = beautifier.options

console.log('Loading options template...')
templatePath = __dirname + '/options-template.md'
optionsPath = __dirname + '/options.md'
source = fs.readFileSync(templatePath).toString()
console.log('Building documentation from template and options...')
template = Handlebars.compile(source)
context = {
    options: defaultLanguageOptions
}
result = template(context)

console.log('Writing documentation to file...')
fs.writeFileSync(optionsPath, result)

console.log('Done.')
#!/usr/bin/env coffee

# Dependencies
Handlebars = require('handlebars')
Beautifiers = require("../src/beautifiers")
fs = require('fs')
_ = require('lodash')

console.log('Generating options...')
beautifier = new Beautifiers()
languageOptions = beautifier.options
packageOptions = require('../src/config.coffee')
# Build options by Beautifier
beautifierOptions = {}
for lo, optionGroup of languageOptions
  for optionName, optionDef of optionGroup.properties
    beautifiers = optionDef.beautifiers ? []
    for beautifierName in beautifiers
      beautifierOptions[beautifierName] ?= {}
      beautifierOptions[beautifierName][optionName] = optionDef

console.log('Loading options template...')
optionsTemplatePath = __dirname + '/options-template.md'
optionTemplatePath = __dirname + '/option-template.md'
optionGroupTemplatePath = __dirname + '/option-group-template.md'
optionsPath = __dirname + '/options.md'
optionsTemplate = fs.readFileSync(optionsTemplatePath).toString()
optionGroupTemplate = fs.readFileSync(optionGroupTemplatePath).toString()
optionTemplate = fs.readFileSync(optionTemplatePath).toString()

console.log('Building documentation from template and options...')
Handlebars.registerPartial('option', optionTemplate)
Handlebars.registerPartial('option-group', optionGroupTemplate)
template = Handlebars.compile(optionsTemplate)

linkifyTitle = (title) ->
  title = title.toLowerCase()
  p = title.split(/[\s,+#;,\/?:@&=+$]+/) # split into parts
  sep = "-"
  p.join(sep)

Handlebars.registerHelper('linkify', (title, options) ->
  return new Handlebars.SafeString(
    "[#{options.fn(this)}](\##{linkifyTitle(title)})"
  )
)

exampleConfig = (option) ->
  # console.log(option)
  t = option.type
  d = switch
    when option.default? then option.default
    when t is "string" then ""
    when t is "integer" then 0
    when t is "boolean" then false
    else null

  json = {}
  namespace = option.language.namespace
  k = option.key
  c = {}
  c[k] = d
  json[namespace] = c
  return """```json
  #{JSON.stringify(json, undefined, 4)}
  ```"""

Handlebars.registerHelper('example-config', (key, option, options) ->
  results = exampleConfig(key, option)
  # console.log(results)
  return new Handlebars.SafeString(results)
)

sortKeysBy = (obj, comparator) ->
  keys = _.sortBy(_.keys(obj), (key) ->
    return if comparator then comparator(obj[key], key) else key
  )
  return _.zipObject(keys, _.map(keys, (key) ->
    return obj[key]
  ))

sortSettings = (settings) ->
  # TODO: Process object type options
  r = _.mapValues(settings, (op) ->
    if op.type is "object" and op.properties
      op.properties = sortSettings(op.properties)
    return op
  )
  # Process these settings
  r = sortKeysBy(sortKeysBy(r), (op) -> op.order)
  # r = _.chain(r).sortBy((op) -> op.key).sortBy((op) -> settings[op.key]?.order).value()
  # console.log('sort', settings, r)
  return r

context = {
  packageOptions: sortSettings(packageOptions)
  languageOptions: sortSettings(languageOptions)
  beautifierOptions: sortSettings(beautifierOptions)
}
result = template(context)

console.log('Writing documentation to file...')
fs.writeFileSync(optionsPath, result)

console.log('Done.')

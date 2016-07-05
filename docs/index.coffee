#!/usr/bin/env coffee

# Dependencies
Handlebars = require('handlebars')
Beautifiers = require("../src/beautifiers")
fs = require('fs')
_ = require('lodash')
path = require('path')
pkg = require('../package.json')

console.log('Generating options...')
beautifier = new Beautifiers()
languageOptions = beautifier.options
packageOptions = require('../src/config.coffee')
# Build options by Beautifier
beautifiersMap = _.keyBy(beautifier.beautifiers, 'name')
languagesMap = _.keyBy(beautifier.languages.languages, 'name')
beautifierOptions = {}
for lo, optionGroup of languageOptions
  for optionName, optionDef of optionGroup.properties
    beautifiers = optionDef.beautifiers ? []
    for beautifierName in beautifiers
      beautifierOptions[beautifierName] ?= {}
      beautifierOptions[beautifierName][optionName] = optionDef

console.log('Loading options template...')
readmeTemplatePath = path.resolve(__dirname, '../README-template.md')
readmePath = path.resolve(__dirname, '../README.md')
optionsTemplatePath = __dirname + '/options-template.md'
optionTemplatePath = __dirname + '/option-template.md'
optionGroupTemplatePath = __dirname + '/option-group-template.md'
optionsPath = __dirname + '/options.md'

optionsTemplate = fs.readFileSync(optionsTemplatePath).toString()
optionGroupTemplate = fs.readFileSync(optionGroupTemplatePath).toString()
optionTemplate = fs.readFileSync(optionTemplatePath).toString()
readmeTemplate = fs.readFileSync(readmeTemplatePath).toString()

console.log('Building documentation from template and options...')
Handlebars.registerPartial('option', optionTemplate)
Handlebars.registerPartial('option-group', optionGroupTemplate)
template = Handlebars.compile(optionsTemplate)
readmeTemplate = Handlebars.compile(readmeTemplate)

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

Handlebars.registerHelper('language-beautifiers-support', (languageOptions, options) ->

  ###
  | Language | Supported Beautifiers |
  | --- | ---- |
  | JavaScript | Js-Beautify, Pretty Diff |
  ###

  rows = _.map(languageOptions, (val, k) ->
    name = val.title
    defaultBeautifier = _.get(val, "properties.default_beautifier.default")
    beautifiers = _.map(val.beautifiers, (b) ->
      beautifier = beautifiersMap[b]
      isDefault = b is defaultBeautifier
      if beautifier.link
        r = "[`#{b}`](#{beautifier.link})"
      else
        r = "`#{b}`"
      if isDefault
        r += " (Default)"
      return r
    )
    grammars = _.map(val.grammars, (b) -> "`#{b}`")
    extensions = _.map(val.extensions, (b) -> "`.#{b}`")

    return "| #{name} | #{grammars.join(', ')} |#{extensions.join(', ')} | #{beautifiers.join(', ')} |"
  )
  results = """
  | Language | Grammars | File Extensions | Supported Beautifiers |
  | --- | --- | --- | ---- |
  #{rows.join('\n')}
  """
  return new Handlebars.SafeString(results)
)

Handlebars.registerHelper('language-options-support', (languageOptions, options) ->

  ###
  | Option | PrettyDiff | JS-Beautify |
  | --- | --- | --- |
  | `brace_style` | ? | ? |
  | `break_chained_methods` | ? | ? |
  | `end_with_comma` | ? | ? |
  | `end_with_newline` | ? | ? |
  | `eval_code` | ? | ? |
  | `indent_size` | :white_check_mark: | :white_check_mark: |
  | `indent_char` | :white_check_mark: | :white_check_mark: |
  ###

  rows = []
  beautifiers = languageOptions.beautifiers.sort()
  headers = ['Option'].concat(beautifiers)
  rows.push(headers)
  rows.push(_.map(headers, () -> '---'))
  # console.log(languageOptions)
  _.each(Object.keys(languageOptions.properties), (op) ->
    field = languageOptions.properties[op]
    support = _.map(beautifiers, (b) ->
      if (_.includes(field.beautifiers, b) or _.includes(["disabled", "default_beautifier", "beautify_on_save"], op))
        return ':white_check_mark:'
      else
        return ':x:'
    )
    rows.push(["`#{op}`"].concat(support))
  )

  results = _.map(rows, (r) -> "| #{r.join(' | ')} |").join('\n')
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
  package: pkg,
  packageOptions: sortSettings(packageOptions)
  languageOptions: sortSettings(languageOptions)
  beautifierOptions: sortSettings(beautifierOptions)
}
result = template(context)
readmeResult = readmeTemplate(context)

console.log('Writing documentation to file...')
fs.writeFileSync(optionsPath, result)
fs.writeFileSync(readmePath, readmeResult)
# fs.writeFileSync(__dirname+'/context.json', JSON.stringify(context, undefined, 2))

console.log('Updating package.json')
# Add Language keywords
ls = _.map(Object.keys(languagesMap), (a)->a.toLowerCase())

# Add Beautifier keywords
bs = _.map(Object.keys(beautifiersMap), (a)->a.toLowerCase())
keywords = _.union(pkg.keywords, ls, bs)
pkg.keywords = keywords
fs.writeFileSync(path.resolve(__dirname,'../package.json'), JSON.stringify(pkg, undefined, 2))

console.log('Done.')

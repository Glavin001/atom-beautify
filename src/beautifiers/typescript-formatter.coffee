"use strict"
Beautifier = require('./beautifier')
Promise = require('bluebird')

module.exports = class TypeScriptFormatter extends Beautifier
  name: "TypeScript Formatter"
  link: "https://github.com/vvakame/typescript-formatter"
  options: {
    TypeScript: true
  }

  beautify: (text, language, options, {filePath}) ->
    try
      base = require("typescript-formatter/lib/provider/base").default
      tsconfigjson = require("typescript-formatter/lib/provider/tsconfigjson").default
      { default: editorconfig } = require("typescript-formatter/lib/provider/editorconfig")
      tslint = require("typescript-formatter/lib/provider/tslintjson")

      format = require("typescript-formatter/lib/formatter").default
      formatterUtils = require("typescript-formatter/lib/utils")

      optionModifiers = [base, tsconfigjson, editorconfig, tslint.default, pluginOptsModifier]
      postProcessors = [tslint.postProcess, fileEndingPostProcess]

      formatSettings = formatterUtils.createDefaultFormatCodeOptions()

      options.eol = @getDefaultLineEnding('\r\n', '\n', options.end_of_line)

      processData(optionModifiers, formatSettings, (process, settings) => process(filePath, options, settings))
        .then((formatSettings) =>
          @verbose('typescript', text, formatSettings)
          result = format('', text, formatSettings)
          @verbose(result)
          return result
        )
        .then((formatted) =>
          return processData(postProcessors, formatted, (process, code) => process(filePath, code, options, formatSettings))
        )
    catch e
      return Promise.reject(e)

processData = (dataTransformers, data, process) ->
  modifiers = dataTransformers.slice 0

  next = (_data) ->
    if modifiers.length is 0
      return Promise.resolve(_data)
    modifier = modifiers.shift()
    ret = process(modifier, _data)
    return Promise.resolve(ret).then((transformed) -> next transformed)

  next data

fileEndingPostProcess = (fileName, formattedCode, opts, formatSettings) ->
  Promise.resolve formattedCode.replace(/\r?\n/g, formatSettings.NewLineCharacter or '\n')

pluginOptsModifier = (fileName, opts, formatSettings) ->
  if opts.indent_with_tabs
    formatSettings.ConvertTabsToSpaces = false
  else
    formatSettings.TabSize = opts.tab_width or opts.indent_size
    formatSettings.IndentStyle = 'space'
    formatSettings.IndentSize = opts.indent_size

  formatSettings.NewLineCharacter = opts.eol

  Promise.resolve formatSettings

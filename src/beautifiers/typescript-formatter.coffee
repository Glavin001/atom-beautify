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

      optionModifiers = [base, tsconfigjson, editorconfig, tslint.default, pluginOptsModifier options]
      postProcessors = [tslint.postProcess, fileEndingPostProcess]

      formatSettings = formatterUtils.createDefaultFormatCodeOptions()

      processData(optionModifiers, formatSettings, (process, settings) => process(filePath, {}, settings))
        .then((formatSettings) =>
          @verbose('typescript', text, formatSettings)
          result = format('', text, formatSettings)
          @verbose(result)
          return result
        )
        .then((formatted) =>
          return processData(postProcessors, formatted, (process, code) => process(filePath, code, {}, formatSettings))
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
  console.log(formatSettings)
  Promise.resolve formattedCode.replace(/\r?\n/g, formatSettings.NewLineCharacter or '\n')

pluginOptsModifier = (pluginOpts) -> (fileName, opts, formatSettings) ->
  if pluginOpts.indent_with_tabs
    formatSettings.ConvertTabsToSpaces = false
  else
    formatSettings.TabSize = pluginOpts.tab_width or pluginOpts.indent_size
    formatSettings.IndentSize = pluginOpts.indent_size
    formatSettings.IndentStyle = 'space'

  Promise.resolve formatSettings

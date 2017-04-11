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
      { default: editorconfig, postProcess: editorconfigPostProcess } = require("typescript-formatter/lib/provider/editorconfig")
      { default: tslintjson, postProcess, tslintPostProcess } = require("typescript-formatter/lib/provider/tslintjson")

      format = require("typescript-formatter/lib/formatter").default
      formatterUtils = require("typescript-formatter/lib/utils")
      # @verbose('format', format, formatterUtils)

      optionModifiers = [base, tsconfigjson, editorconfig, tslintjson, pluginOptsModifier options]
      postProcessors = [editorconfigPostProcess, tslintPostProcess, fileEndingPostProcess]

      formatSettings = formatterUtils.createDefaultFormatCodeOptions()

      processFormatCodeOptions(optionModifiers, filePath, {}, formatSettings)
        .then((formatSettings) =>
          @verbose('typescript', text, formatSettings)
          result = format('', text, formatSettings)
          @verbose(result)
          return result
        )
    catch e
      return Promise.reject(e)

processFormatCodeOptions = (optionModifiers, fileName, opts, formatSettings) ->
  modifiers = optionModifiers.slice 0

  next = (_formatSettings) ->
    if modifiers.length is 0
      return Promise.resolve(formatSettings)
    modifier = modifiers.shift()
    ret = modifier(fileName, opts, formatSettings)
    return Promise.resolve(ret).then((formatSettings) -> next formatSettings)

  next formatSettings

fileEndingPostProcess = (fileName, formattedCode, opts, formatSettings) ->
  Promise.resolve formattedCode.replace(/\r?\n/g, formatSettings.NewLineCharacter or '\n')

pluginOptsModifier = (pluginOpts) -> (fileName, opts, formatSettings) ->
  if pluginOpts.indent_with_tabs
    formatSettings.ConvertTabsToSpaces = false
  else
    formatSettings.TabSize = pluginOpts.tab_width or pluginOpts.indent_size
    formatSettings.IndentSize = pluginOpts.indent_size
    formatSettings.IndentStyle = 'space'

  Promise.resolve formatSettings

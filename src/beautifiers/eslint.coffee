"use strict"

Beautifier = require('./beautifier')
Path = require('path')
{allowUnsafeNewFunction} = require 'loophole'

module.exports = class ESLintFixer extends Beautifier
  name: "ESLint Fixer"
  link: "https://github.com/eslint/eslint"

  options: {
    JavaScript: false
    Vue: false
  }

  beautify: (text, language, options) ->
    context = this
    return new @Promise((resolve, reject) ->
      editor = atom.workspace.getActiveTextEditor()
      filePath = editor.getPath()
      projectPath = atom.project.relativizePath(filePath)[0]

      result = null
      allowUnsafeNewFunction ->
        importPath = Path.join(projectPath, 'node_modules', 'eslint')
        try
          context.which('eslint').then((globalEslintPath) ->
            if globalEslintPath != 'eslint'
              importPath = Path.resolve(globalEslintPath, '../../lib/node_modules/eslint')
            else
              needInstallMsg = 'Error: it seems like you did not install eslint globally,'
              needInstallMsg += 'try to run npm i -g eslint and restart the atom editor.'
              context.deprecate needInstallMsg
              resolve undefined
            CLIEngine = require(importPath).CLIEngine

            cli = new CLIEngine(fix: true, cwd: projectPath)
            result = cli.executeOnText(text).results[0]
            if not result.output
              errMsg = result.messages[0].message
              errLine = result.messages[0].line
              errColumn = result.messages[0].column
              context.deprecate 'Error: [' + errMsg + '] at line ' + errLine + ', column ' + errColumn
            resolve result.output
          )
        catch err
          reject(err)
    )

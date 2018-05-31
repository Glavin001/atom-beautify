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
    return new @Promise((resolve, reject) =>
      editor = atom.workspace.getActiveTextEditor()
      filePath = editor.getPath()
      projectPath = atom.project.relativizePath(filePath)[0]

      result = null
      allowUnsafeNewFunction =>
        importPath = Path.join(projectPath, 'node_modules', 'eslint')
        eslint = null
        try
          eslint = require(importPath)
        catch
          try
            eslint = requireg('eslint')
          catch
            try
              eslint = require('eslint')
            catch
              needInstallMsg = 'Error: it seems like you did not install eslint globally,'
              needInstallMsg += 'try to run npm i -g eslint and restart the atom editor.'
              atom.notifications?.addFatalError needInstallMsg
              resolve undefined
        CLIEngine = eslint.CLIEngine
        cli = new CLIEngine(fix: true, cwd: projectPath)
        result = cli.executeOnText(text).results[0]
        if not result.output
          errMsg = result.messages[0].message
          errLine = result.messages[0].line
          errColumn = result.messages[0].column
          @deprecate 'Eslint parse error: [' + errMsg + '] at line ' + errLine + ', column ' + errColumn
        resolve result.output
    )

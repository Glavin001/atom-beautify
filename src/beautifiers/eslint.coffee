"use strict"

Beautifier = require('./beautifier')
Path = require('path')
{allowUnsafeNewFunction} = require 'loophole'

module.exports = class ESLintFixer extends Beautifier
  name: "ESLint Fixer"
  link: "https://github.com/eslint/eslint"

  options: {
    JavaScript:
      errors_only: true
    Vue: false
  }

  beautify: (text, language, options) ->
    return new @Promise((resolve, reject) ->
      editor = atom.workspace.getActiveTextEditor()
      filePath = editor.getPath()

      if filePath
        dir = path.dirname(filePath)
        projectPath = atom.project.relativizePath(filePath)[0]
      else
        dir = atom.getConfigDirPath()
        projectPath = atom.project.getPaths()[0]

      result = null
      importPath = Path.join(projectPath or dir, 'node_modules', 'eslint')
      try
        eslint = require(importPath)
      catch
        eslint = require('eslint')

      fix = true
      if options.errors_only
        fix = (rule) -> rule.severity is 2

      eslintExecute = (cwd) ->
        cli = new eslint.CLIEngine(fix: fix, cwd: cwd)
        result = cli.executeOnText(text).results[0]
        result.output

      allowUnsafeNewFunction ->
        try
          resolve eslintExecute(projectPath or dir)
        catch err

          # check for default config
          if err.message is 'No ESLint configuration found.' and (filePath or projectPath)
            try
              resolve eslintExecute(atom.getConfigDirPath())
            catch
              reject(err)
          else
            reject(err)
    )

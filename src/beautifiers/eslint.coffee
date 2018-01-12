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
      dir = path.dirname(filePath)
      projectPath = atom.project.relativizePath(filePath)[0]

      result = null
      allowUnsafeNewFunction ->
        importPath = Path.join(projectPath or dir, 'node_modules', 'eslint')
        try
          try
            eslint = require(importPath)
          catch
            eslint = require('eslint')

          fix = true
          if options.errors_only
            fix = (rule) -> rule.severity is 2

          cli = new eslint.CLIEngine(fix: fix, cwd: projectPath or dir)
          result = cli.executeOnText(text).results[0]

          resolve result.output
        catch err
          reject(err)
    )

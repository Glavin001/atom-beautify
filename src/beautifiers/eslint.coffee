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
    return new @Promise((resolve, reject) ->
      editor = atom.workspace.getActiveTextEditor()
      filePath = editor.getPath()
      projectPath = atom.project.relativizePath(filePath)[0]

      result = null
      allowUnsafeNewFunction ->
        importPath = Path.join(projectPath, 'node_modules', 'eslint')
        try
          CLIEngine = require(importPath).CLIEngine

          cli = new CLIEngine(fix: true, cwd: projectPath)
          result = cli.executeOnText(text).results[0]

          resolve result.output
        catch err
          reject(err)
    )

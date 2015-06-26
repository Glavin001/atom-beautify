"use strict"
Beautifier = require('./beautifier')

Checker = null
cliConfig = null
checker = null

module.exports = class JSCSFixer extends Beautifier
  name: "JSCS Fixer"

  options: {
    JavaScript: false
  }

  beautify: (text, language, options) ->
    @verbose("JSCS Fixer language #{language}")
    return new @Promise((resolve, reject) =>
      try
        if !checker?
          cliConfig = require 'jscs/lib/cli-config'
          Checker = require 'jscs'
          checker = new Checker()
          checker.registerDefaultRules()
        editor = atom.workspace.getActiveTextEditor()
        path = if editor? then editor.getPath() else undefined
        config = if path? then cliConfig.load(undefined, atom.project.relativizePath(path)[0]) else undefined
        if !config?
          throw new Error("No JSCS config found.")
        checker.configure(config)
        result = checker.fixString(text, path)
        if result.errors.getErrorCount() > 0
          @error(result.errors.getErrorList().reduce((res, err) ->
            "#{res}<br> Line #{err.line}: #{err.message}"
          , "JSCS Fixer error:"))

        resolve result.output

      catch err
        @error("JSCS Fixer error: #{err}")
        reject(err)

    )

###
Requires http://pear.php.net/package/PHP_Beautifier
###
getCmd = (inputPath, outputPath, options, cb) ->

  # console.log('Uncrustify options:', options);
  done = (configPath) ->

    # console.log(configPath);
    if path

      # Use absolute path
      cmd = pathToCommand + " -c \"" + configPath + "\" -f \"" + inputPath + "\" -o \"" + outputPath + "\" -l \"" + lang + "\""
    else

      # Use command available in $PATH
      cmd = "uncrustify -c \"" + configPath + "\" -f \"" + inputPath + "\" -o \"" + outputPath + "\" -l \"" + lang + "\""
    console.log(cmd);
    cb cmd
  configPath = options.configPath
  lang = options.languageOverride or "C"
  pathToCommand = atom.config.get("atom-beautify.uncrustifyPath")
  # console.log(pathToCommand)
  unless configPath

    # No custom config path
    cfg options, (error, path) ->
      throw error  if error
      done path

  else

    # Has custom config path
    editor = atom.workspace.getActiveEditor()
    basePath = path.dirname(editor.getPath())

    # console.log(basePath);
    configPath = path.resolve(basePath, configPath)
    done configPath
  return
"use strict"
cliBeautify = require("../cli-beautify")
cfg = require("./cfg")
path = require("path")
module.exports = cliBeautify(getCmd)

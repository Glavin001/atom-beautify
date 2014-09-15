###
Requires http://uncrustify.sourceforge.net/
###
"use strict"
cliBeautify = require("../cli-beautify")
cfg = require("./cfg")
path = require("path")
getCmd = (inputPath, outputPath, options, cb) ->
  uncrustifyPath = options.uncrustifyPath
  # console.log('Uncrustify options:', options);
  # console.log("Uncrustify path: #{uncrustifyPath}")
  # Complete callback
  done = (configPath) ->
    # console.log(configPath);
    if uncrustifyPath
      # Use path given by user
      cmd = "#{uncrustifyPath} -c \"#{configPath}\" -f \"#{inputPath}\" -o \"#{outputPath}\" -l \"#{lang}\""
    else
      # Use command available in $PATH
      cmd = "uncrustify -c \"#{configPath}\" -f \"#{inputPath}\" -o \"#{outputPath}\" -l \"#{lang}\""
    # console.log(cmd);
    cb cmd
  configPath = options.configPath
  lang = options.languageOverride or "C" # Default is C
  unless configPath
    # No custom config path
    cfg options, (error, cPath) ->
      throw error  if error
      done cPath
  else
    # Has custom config path
    editor = atom.workspace.getActiveEditor()
    basePath = path.dirname(editor.getPath())
    # console.log(basePath);
    configPath = path.resolve(basePath, configPath)
    done configPath
  return
module.exports = cliBeautify(getCmd)

"use strict"
Beautifier = require('./beautifier')
path = require('path')
fs = require("fs")
temp = require("temp").track()


module.exports = class LatexBeautify extends Beautifier
  name: "Latex Beautify"
  link: "https://github.com/cmhughes/latexindent.pl"
  isPreInstalled: false

  options: {
    LaTeX: true
  }

  # There are too many options with latexmk, I have tried to slim this down to the most useful ones.
  # This method creates a configuration file for latexindent.
  buildConfigFile: (options) ->
    indentChar = options.indent_char
    if options.indent_with_tabs
      indentChar = "\\t"
    # +true = 1 and +false = 0
    config = """
             defaultIndent: \"#{indentChar}\"
             alwaysLookforSplitBraces: #{+options.always_look_for_split_braces}
             alwaysLookforSplitBrackets: #{+options.always_look_for_split_brackets}
             indentPreamble: #{+options.indent_preamble}
             removeTrailingWhitespace: #{+options.remove_trailing_whitespace}
             lookForAlignDelims:\n
             """
    for delim in options.align_columns_in_environments
      config += "\t#{delim}: 1\n"
    return config

  # Latexindent accepts configuration _files_ only.
  # This file has to be named localSettings.yaml and be in the same folder as the tex file.
  # It also insists on creating a log file somewhere.
  # So we set up a directory with all the files in place.
  setUpDir: (dirPath, text, config) ->
    @texFile = path.join(dirPath, "latex.tex")
    fs.writeFile @texFile, text, (err) ->
      return reject(err) if err
    @configFile = path.join(dirPath, "localSettings.yaml")
    fs.writeFile @configFile, config, (err) ->
      return reject(err) if err
    @logFile = path.join(dirPath, "indent.log")
    fs.writeFile @logFile, "", (err) ->
      return reject(err) if err

  #Beautifier does not currently have a method for creating directories, so we call temp directly.
  beautify: (text, language, options) ->
    new @Promise((resolve, reject) ->
      temp.mkdir("latex", (err, dirPath) ->
        return reject(err) if err
        resolve(dirPath)
      )
    )
    .then((dirPath)=>
      @setUpDir(dirPath, text, @buildConfigFile(options))
      run = @run "latexindent", [
        "-o"            #Output to the same location as file, -w creates a backup file, whereas this does not
        "-s"            #Silent mode
        "-l"            #Tell latexindent we have a local configuration file
        "-c=" + dirPath #Tell latexindent to place the log file in this directory
        @texFile
        @texFile
      ], help: {
        link: "https://github.com/cmhughes/latexindent.pl"
      }
    )
    .then( =>
      @readFile(@texFile)
    )

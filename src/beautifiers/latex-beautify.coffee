"use strict"
Beautifier = require('./beautifier')
path = require('path')
fs = require("fs")
expandHomeDir = require('expand-home-dir')
temp = require("temp").track()


module.exports = class LatexBeautify extends Beautifier
  name: "Latex Beautify"
  link: "https://github.com/cmhughes/latexindent.pl"
  isPreInstalled: false

  options: {
    LaTeX: true
  }

  # Latexindent accepts configuration _files_ only.
  # This file has to be named localSettings.yaml and be in the same folder as the tex file.
  # It also insists on creating a log file somewhere.
  # So we set up a directory with all the files in place.
  setUpDir: (dirPath, text, configPath) ->
    @texFile = path.join(dirPath, "latex.tex")
    fs.writeFile @texFile, text, (err) ->
      return reject(err) if err
    if configPath
      projectPath = atom.workspace.project.getPaths()[0]
      expandedConfigPath = expandHomeDir(configPath)
      configPath = path.resolve(projectPath, expandedConfigPath)
      config = fs.readFileSync configPath, "utf8", (err) ->
        return reject(err) if err
    else
      config = ""
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
      @setUpDir(dirPath, text, options.configPath)
      run = @run "latexindent", [
        "-o"                       #Output to the same location as file, -w creates a backup file, whereas this does not
        "-s"                       #Silent mode
        "-l" if options.configPath #Tell latexindent we have a local configuration file
        "-c=" + dirPath            #Tell latexindent to place the log file in this directory
        @texFile
        @texFile
      ], help: {
        link: "https://github.com/cmhughes/latexindent.pl"
      }
    )
    .then( =>
      @readFile(@texFile)
    )

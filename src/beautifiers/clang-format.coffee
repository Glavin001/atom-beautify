###
Requires clang-format (https://clang.llvm.org)
###

"use strict"
Beautifier = require('./beautifier')
path = require('path')
fs = require('fs')

module.exports = class ClangFormat extends Beautifier

  name: "clang-format"

  options: {
    "C++": false
    "C": false
    "Objective-C": false
  }

  ###
    Dump contents to a given file
  ###
  dumpToFile: (name = "atom-beautify-dump", contents = "") ->
    return new Promise((resolve, reject) =>
      fs.open(name, "w", (err, fd) =>
        @debug('dumpToFile', name, err, fd)
        return reject(err) if err
        fs.write(fd, contents, (err) ->
          return reject(err) if err
          fs.close(fd, (err) ->
            return reject(err) if err
            resolve(name)
          )
        )
      )
    )

  beautify: (text, language, options) ->
    return new @Promise((resolve, reject) ->
      editor = atom.workspace.getActiveTextEditor()
      if editor?
        fullPath = editor.getPath()
        currDir = path.dirname(fullPath)
        currFile = path.basename(fullPath)
        dumpFile = path.join(currDir, ".atom-beautify.#{currFile}")
        resolve dumpFile
      else
        reject(new Error("No active editor found!"))
    )
    .then((dumpFile) =>
      # console.log("clang-format", dumpFile)
      @run("clang-format", [
        @dumpToFile(dumpFile, text)
        ["--style=file"]
        ], help: {
        link: "https://clang.llvm.org/docs/ClangFormat.html"
      }).then( =>
        fs.unlinkSync(dumpFile)
      )
    )

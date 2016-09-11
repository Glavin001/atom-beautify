###
Requires clang-format (https://clang.llvm.org)
###

"use strict"
Beautifier = require('./beautifier')
path = require('path')
fs = require('fs')

module.exports = class ClangFormat extends Beautifier

  name: "clang-format"
  link: "https://clang.llvm.org/docs/ClangFormat.html"

  options: {
    "C++": false
    "C": false
    "Objective-C": false
  }

  ###
    Dump contents to a given file
  ###
  dumpToFile: (name = "atom-beautify-dump", contents = "") ->
    return new @Promise((resolve, reject) =>
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
    # NOTE: One may wonder why this code goes a long way to construct a file
    # path and dump content using a custom `dumpToFile`. Wouldn't it be easier
    # to use `@tempFile` instead? The reason here is to work around the
    # clang-format config file locating mechanism. As indicated in the manual,
    # clang-format (with `--style file`) tries to locate a `.clang-format`
    # config file in directory and parent directories of the input file,
    # and retreat to default style if not found. Projects often makes use of
    # this rule to define their own style in its top directory. Users often
    # put a `.clang-format` in their $HOME to define his/her style. To honor
    # this rule, we HAVE TO generate the temp file in THE SAME directory as
    # the editing file. However, this mechanism is not directly supported by
    # atom-beautify at the moment. So we introduce lots of code here.
    return new @Promise((resolve, reject) ->
      editor = atom?.workspace?.getActiveTextEditor()
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
      return @run("clang-format", [
        @dumpToFile(dumpFile, text)
        ["--style=file"]
        ], help: {
          link: "https://clang.llvm.org/docs/ClangFormat.html"
        }).finally( ->
          fs.unlink(dumpFile)
        )
    )

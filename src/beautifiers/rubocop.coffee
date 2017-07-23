###
Requires https://github.com/bbatsov/rubocop
###

"use strict"
Beautifier = require('./beautifier')
path = require('path')
fs = require('fs')
temp = require('temp').track()

module.exports = class Rubocop extends Beautifier
  name: "Rubocop"
  link: "https://github.com/bbatsov/rubocop"
  isPreInstalled: false

  options: {
    Ruby:
      indent_size: true
      rubocop_path: true
  }

  createTempFile: (originalFile) ->
    new @Promise((resolve, reject) =>
      tempOptions = {
        prefix: "_beautify",
        suffix: path.basename(originalFile),
        dir: path.dirname(originalFile)}
      temp.open(tempOptions, (err, info) =>
        return reject(err) if err?
        @debug('rubocopTempFile', info.path)
        resolve(info.path)
      )
    ).disposer((filename) =>
      if fs.existsSync(filename)
        @debug("unlinking rubocop temp file", filename)
        fs.unlink(filename)
    )

  beautify: (text, language, options) ->
    editor = atom?.workspace?.getActiveTextEditor()
    if editor?
      fullPath = editor.getPath()
      projectPath = atom.project.relativizePath(fullPath)[0]
    else
      throw new Error("No active editor found!")

    # Find the rubocop path
    rubocopPath = "rubocop"
    @Promise.all([
      @which(options.rubocop_path) if options.rubocop_path
      @which('rubocop')
    ])
    .then((paths) =>
      @debug('rubocop paths', paths)
      # Get first valid, absolute path
      rubocopPath = paths.find((p) -> p and path.isAbsolute(p))
      @verbose('rubocopPath', rubocopPath)
      @debug('rubocopPath', rubocopPath, paths)
    )

    # Find or generate a config file if non exists
    configFile = @findFile(path.dirname(fullPath), ".rubocop.yml")
    if !configFile?
      yaml = require("yaml-front-matter")
      config = {
        "Style/IndentationWidth":
          "Width": options.indent_size
      }
      tempConfig = @tempFile("rubocop-config", yaml.safeDump(config))

    @Promise.using(@createTempFile(fullPath), (tempFileName) =>
      new @Promise((resolve, reject) ->
        fs.writeFile(tempFileName, text, 'utf8', (err) ->
          return reject(err) if err?
          resolve tempFileName
        )
      )
      .then(=>
        rubocopArguments = [
          "--auto-correct"
          "--force-exclusion"
          tempFileName
        ]
        rubocopArguments.push("--config", tempConfig) if tempConfig?
        @run(rubocopPath, rubocopArguments, {ignoreReturnCode: true, cwd: projectPath})
      )
      .then(=> @readFile(tempFileName))
    )

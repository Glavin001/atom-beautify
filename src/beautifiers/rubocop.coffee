###
Requires https://github.com/bbatsov/rubocop
###

"use strict"
Beautifier = require('./beautifier')
path = require('path')

module.exports = class Rubocop extends Beautifier
  name: "Rubocop"
  link: "https://github.com/bbatsov/rubocop"
  isPreInstalled: false

  options: {
    Ruby:
      indent_size: true
      rubocop_path: true
  }

  executables: [
    {
      name: "Rubocop"
      cmd: "rubocop"
      homepage: "http://rubocop.readthedocs.io/"
      installation: "http://rubocop.readthedocs.io/en/latest/installation/"
      version: {
        parse: (text) -> text.match(/(\d+\.\d+\.\d+)/)[1]
      }
    }
  ]

  beautify: (text, language, options, context) ->
    fullPath = context.filePath or ""
    [projectPath, _relativePath] = atom.project.relativizePath(fullPath)

    # Deprecate options.rubocop_path
    if options.rubocop_path
      @deprecateOptionForExecutable("Rubocop", "Ruby - Rubocop Path (rubocop_path)", "Path")

    # Find the rubocop path
    @Promise.all([
      @which(options.rubocop_path) if options.rubocop_path
      @which('rubocop')
    ])
    .then((paths) =>
      @debug('rubocop paths', paths)
      # Get first valid, absolute path
      rubocopPath = paths.find((p) -> p and path.isAbsolute(p)) or "rubocop"
      @verbose('rubocopPath', rubocopPath)
      @debug('rubocopPath', rubocopPath, paths)

      # Find or generate a config file if non exists
      configFile = @findFile(path.dirname(fullPath), ".rubocop.yml")
      if !configFile?
        yaml = require("yaml-front-matter")
        config = {
          "Style/IndentationWidth":
            "Width": options.indent_size
        }
        tempConfig = @tempFile("rubocop-config", yaml.safeDump(config))

      rubocopArguments = [
        "--auto-correct"
        "--force-exclusion"
        "--stdin", fullPath or "atom-beautify.rb" # --stdin requires an argument
      ]
      exeOptions = {
        ignoreReturnCode: true,
        cwd: projectPath if configFile?,
        onStdin: (stdin) -> stdin.end text
      }
      rubocopArguments.push("--config", tempConfig) if tempConfig?
      @debug("rubocop arguments", rubocopArguments)

      (if options.rubocop_path then \
        @run(rubocopPath, rubocopArguments, exeOptions) else \
        @exe("rubocop").run(rubocopArguments, exeOptions)
      ).then((stdout) =>
        @debug("rubocop output", stdout)
        # Rubocop output an error if stdout is empty
        return text if stdout.length == 0

        result = stdout.split("====================\n")
        result = stdout.split("====================\r\n") if result.length == 1

        result[result.length - 1]
      )
    )

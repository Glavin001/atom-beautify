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

  beautify: (text, language, options, context) ->
    fullPath = context.filePath or ""
    [projectPath, _relativePath] = atom.project.relativizePath(fullPath)

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
        "--stdin", "atom-beautify.rb" # filename is required but not used
      ]
      rubocopArguments.push("--config", tempConfig) if tempConfig?
      @debug("rubocop arguments", rubocopArguments)

      @run(rubocopPath, rubocopArguments, {
        ignoreReturnCode: true,
        cwd: projectPath,
        onStdin: (stdin) -> stdin.end text
      }).then((stdout) =>
        @debug("rubocop output", stdout)
        # Rubocop output an error if stdout is empty
        return text if stdout.length == 0

        result = stdout.split("====================\n")
        result[result.length - 1]
      )
    )

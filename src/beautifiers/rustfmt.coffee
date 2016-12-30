###
Requires https://github.com/nrc/rustfmt
###

"use strict"
Beautifier = require('./beautifier')
path = require('path')

versionCheckState = false

module.exports = class Rustfmt extends Beautifier
  name: "rustfmt"
  link: "https://github.com/nrc/rustfmt"

  options: {
    Rust: true
  }

  beautify: (text, language, options, context) ->
    cwd = context.filePath and path.dirname context.filePath
    program = options.rustfmt_path or "rustfmt"
    help = {
      link: "https://github.com/nrc/rustfmt"
      program: "rustfmt"
      pathOption: "Rust - Rustfmt Path"
    }

    # 0.5.0 is a relatively new version at the point of writing,
    # but is essential for this to work with stdin.
    # => Check for it specifically.
    p = if versionCheckState == program
      @Promise.resolve()
    else
      @run(program, ["--version"], help: help)
        .then((stdout) ->
          if /^0\.(?:[0-4]\.[0-9])/.test(stdout.trim())
            versionCheckState = false
            throw new Error("rustfmt version 0.5.0 or newer required")
          else
            versionCheckState = program
            undefined
        )

    p.then(=>
      @run(program, [], {
        cwd: cwd
        help: help
        onStdin: (stdin) ->
          stdin.end text
      })
    )

###
Requires https://github.com/FriendsOfPHP/phpcbf
###

"use strict"
Beautifier = require('./beautifier')

module.exports = class PHPCBF extends Beautifier
  name: "PHPCBF"
  link: "http://php.net/manual/en/install.php"
  isPreInstalled: false

  options: {
    _:
      standard: ["standard", (standard) ->
        if (standard) then \
          standard else "PEAR"
      ]
    PHP: true
  }

  beautify: (text, language, options) ->
    @debug('phpcbf', options)
    standardFiles = ['phpcs.xml', 'phpcs.xml.dist', 'phpcs.ruleset.xml', 'ruleset.xml']
    standardFile = @findFile(atom.project.getPaths()[0], standardFiles)

    options.standard = standardFile if standardFile

    isWin = @isWindows
    if isWin
      # Find phpcbf.phar script
      @Promise.all([
        @which(options.phpcbf_path) if options.phpcbf_path
        @which('phpcbf')
      ]).then((paths) =>
        @debug('phpcbf paths', paths)
        _ = require 'lodash'
        path = require 'path'
        # Get first valid, absolute path
        phpcbfPath = _.find(paths, (p) -> p and path.isAbsolute(p) )
        @verbose('phpcbfPath', phpcbfPath)
        @debug('phpcbfPath', phpcbfPath, paths)
        # Check if phpcbf path was found
        if phpcbfPath?
          # Found phpcbf path

          # Check if phpcbf is an executable
          isExec = path.extname(phpcbfPath) isnt ''
          exec = if isExec then phpcbfPath else "php"

          @run(exec, [
            phpcbfPath unless isExec
            "--no-patch"
            "--standard=#{options.standard}" if options.standard
            tempFile = @tempFile("temp", text)
            ], {
              ignoreReturnCode: true
              help: {
                link: "http://php.net/manual/en/install.php"
              }
              onStdin: (stdin) ->
                stdin.end()
            })
            .then(=>
              @readFile(tempFile)
            )
        else
          @verbose('phpcbf not found!')
          # Could not find phpcbf path
          @Promise.reject(@commandNotFoundError(
            'phpcbf'
            {
            link: "https://github.com/squizlabs/PHP_CodeSniffer"
            program: "phpcbf.phar"
            pathOption: "PHPCBF Path"
            })
          )
      )
    else
      @run("phpcbf", [
        "--no-patch"
        "--standard=#{options.standard}" if options.standard
        tempFile = @tempFile("temp", text)
        ], {
          ignoreReturnCode: true
          help: {
            link: "https://github.com/squizlabs/PHP_CodeSniffer"
          }
          onStdin: (stdin) ->
            stdin.end()
        })
        .then(=>
          @readFile(tempFile)
        )

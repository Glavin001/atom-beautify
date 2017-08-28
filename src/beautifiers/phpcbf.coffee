###
Requires https://github.com/FriendsOfPHP/phpcbf
###

"use strict"
Beautifier = require('./beautifier')

module.exports = class PHPCBF extends Beautifier
  name: "PHPCBF"
  link: "http://php.net/manual/en/install.php"
  executables: [
    {
      name: "PHP"
      cmd: "php"
      homepage: "http://php.net/"
      installation: "http://php.net/manual/en/install.php"
      version: {
        parse: (text) -> text.match(/PHP (\d+\.\d+\.\d+)/)[1]
      }
    }
    {
      name: "PHPCBF"
      cmd: "phpcbf"
      homepage: "https://github.com/squizlabs/PHP_CodeSniffer"
      installation: "https://github.com/squizlabs/PHP_CodeSniffer#installation"
      version: {
        parse: (text) -> text.match(/version (\d+\.\d+\.\d+)/)[1]
      }
      docker: {
        image: "unibeautify/phpcbf"
      }
    }
  ]

  options: {
    PHP:
      phpcbf_path: true
      phpcbf_version: true
      standard: true
  }

  beautify: (text, language, options) ->
    @debug('phpcbf', options)
    standardFiles = ['phpcs.xml', 'phpcs.xml.dist', 'phpcs.ruleset.xml', 'ruleset.xml']
    standardFile = @findFile(atom.project.getPaths()[0], standardFiles)

    options.standard = standardFile if standardFile

    php = @exe('php')
    phpcbf = @exe('phpcbf')

    if options.phpcbf_path
      @deprecateOptionForExecutable("PHPCBF", "PHP - PHPCBF Path (phpcbf_path)", "Path")

    # Find phpcbf.phar script
    @Promise.all([
      @which(options.phpcbf_path) if options.phpcbf_path
      phpcbf.path()
      @tempFile("temp", text, ".php")
    ]).then(([customPhpcbfPath, phpcbfPath, tempFile]) =>
      # Get first valid, absolute path
      finalPhpcbfPath = if customPhpcbfPath and path.isAbsolute(customPhpcbfPath) then \
        customPhpcbfPath else phpcbfPath
      @verbose('finalPhpcbfPath', finalPhpcbfPath, phpcbfPath, customPhpcbfPath)

      isVersion3 = ((phpcbf.isInstalled and phpcbf.isVersion('3.x')) or \
        (options.phpcbf_version and phpcbf.versionSatisfies("#{options.phpcbf_version}.0.0", '3.x')))

      isPhpScript = (finalPhpcbfPath.indexOf(".phar") isnt -1) or (finalPhpcbfPath.indexOf(".php") isnt -1)
      @verbose('isPhpScript', isPhpScript)

      if isPhpScript
        php.run([
          phpcbfPath,
          "--no-patch" unless isVersion3
          "--standard=#{options.standard}" if options.standard
          tempFile
          ], {
            ignoreReturnCode: true
            onStdin: (stdin) ->
              stdin.end()
          })
          .then(=>
            @readFile(tempFile)
          )
      else
        phpcbf.run([
          "--no-patch" unless isVersion3
          "--standard=#{options.standard}" if options.standard
          tempFile = @tempFile("temp", text, ".php")
          ], {
            ignoreReturnCode: true
            onStdin: (stdin) ->
              stdin.end()
          })
          .then(=>
            @readFile(tempFile)
          )
      )

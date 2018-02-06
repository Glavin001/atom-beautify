###
Requires https://github.com/remarkjs/remark
###
"use strict"
Beautifier = require('./beautifier')

module.exports = class Remark extends Beautifier
  name: "Remark"
  link: "https://github.com/remarkjs/remark"
  options: {
    _: {
      gfm: true
      yaml: true
      commonmark: true
      search_for_configuration: true
    }
    Markdown: true
  }

  executables: [
    {
      name: "Remark CLI"
      cmd: "remark"
      homepage: "https://github.com/remarkjs/remark"
      installation: "https://github.com/remarkjs/remark/tree/master/packages/remark-cli#installation"
      version: {
        parse: (text) ->
          return text.match(/remark: (\d+\.\d+\.\d+)/)[1]
        runOptions: {
          returnStderr: true
        }
      }
    }
  ]

  beautify: (text, language, options, context) ->
    cwd = context.filePath and path.dirname context.filePath
    remarkArgs = [
      '--no-color'
      '--no-ignore'
      '--file-path'
      context.filePath
    ]
    remarkOptions = {}

    if (!options.search_for_configuration)
      settings = Object.assign({}, options)
      delete settings.search_for_configuration
      serializedSettings = JSON.stringify(settings).slice(1, -1)
      remarkArgs.push('--no-config', '--setting', serializedSettings)

    return new Promise((resolve, reject) =>
      @exe("remark")
        .run(remarkArgs, {
          cwd
          onStdin: (stdin) ->
            stdin.end text
        })
        .then (output) ->
          resolve(output)
        .catch(reject)
    )

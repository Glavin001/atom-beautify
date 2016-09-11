jsonStringify = require('json-stable-stringify')
Languages = require('../src/languages')
languages = new Languages().languages
# console.log(languages.length)
_ = require('lodash')
# options = _.chain(languages)
#             .map((lang) -> return lang.options or [])
#             .flatten()
#             .reduce((result, value) ->
#               _.merge(result, value)
#               return result
#             , {})
#             .value()
# console.log(jsonStringify(options, {
#   space: 2
# }))

langs = _.chain(languages)
          .map((lang) ->
            return {
              name: lang.name,
              namespace: lang.namespace,
              extensions: lang.extensions or [],
              atomGrammars: lang.grammars or [],
              sublimeSyntaxes: []
            }
          )
          .value()
console.log(jsonStringify(langs, {
  space: 2
}))

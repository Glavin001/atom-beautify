###
Language Support and default options.
###
"use strict"
# Lazy loaded dependencies
_ = require('lodash')
extend = null

#
module.exports = class Languages

  # Supported unique configuration keys
  # Used for detecting nested configurations in .jsbeautifyrc
  languageNames: [
    "apex"
    "arduino"
    "c-sharp"
    "c"
    "coffeescript"
    "coldfusion"
    "cpp"
    "css"
    "csv"
    "d"
    "ejs"
    "elm"
    "erb"
    "erlang"
    "gherkin"
    "go"
    "fortran"
    "handlebars"
    "haskell"
    "html"
    "java"
    "javascript"
    "json"
    "jsx"
    "less"
    "markdown"
    'marko'
    "mustache"
    "objective-c"
    "pawn"
    "perl"
    "php"
    "puppet"
    "python"
    "riotjs"
    "ruby"
    "rust"
    "sass"
    "scss"
    "spacebars"
    "sql"
    "svg"
    "swig"
    "tss"
    "twig"
    "typescript"
    "vala"
    "visualforce"
    "xml"
    "xtemplate"
  ]

  ###
  Languages
  ###
  languages: null

  ###
  Namespaces
  ###
  namespaces: null

  ###
  Constructor
  ###
  constructor: ->
    @languages = _.map(@languageNames, (name) ->
      require("./#{name}")
    )
    @namespaces = _.map(@languages, (language) -> language.namespace)

  ###
  Get language for grammar and extension
  ###
  getLanguages: ({name, namespace, grammar, extension}) ->
    # console.log('getLanguages', name, namespace, grammar, extension, @languages)
    _.union(
      _.filter(@languages, (language) -> _.isEqual(language.name, name))
      _.filter(@languages, (language) -> _.isEqual(language.namespace, namespace))
      _.filter(@languages, (language) -> _.includes(language.grammars, grammar))
      _.filter(@languages, (language) -> _.includes(language.extensions, extension))
    )

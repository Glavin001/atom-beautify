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
    "bash"
    "c-sharp"
    "c"
    "clojure"
    "coffeescript"
    "coldfusion"
    "cpp"
    "crystal"
    "css"
    "csv"
    "d"
    "ejs"
    "elm"
    "erb"
    "erlang"
    "gherkin"
    "glsl"
    "gn"
    "go"
    "gohtml"
    "fortran"
    "handlebars"
    "haskell"
    "html"
    "jade"
    "java"
    "javascript"
    "json"
    "jsx"
    "latex"
    "less"
    "lua"
    "markdown"
    'marko'
    "mustache"
    "nginx"
    "nunjucks"
    "objective-c"
    "ocaml"
    "pawn"
    "perl"
    "php"
    "puppet"
    "python"
    "r"
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
    "tsx"
    "twig"
    "typescript"
    "ux_markup"
    "vala"
    "vue"
    "vhdl"
    "visualforce"
    "xml"
    "xtemplate"
    "yaml"
    "terraform"
    "verilog"
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

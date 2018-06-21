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
    "blade"
    "c"
    "c-sharp"
    "clojure"
    "coffeescript"
    "coldfusion"
    "cpp"
    "crystal"
    "css"
    "csv"
    "d"
    "edge"
    "ejs"
    "elm"
    "erb"
    "erlang"
    "fortran"
    "gherkin"
    "glsl"
    "gn"
    "go"
    "gohtml"
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
    "terraform"
    "tss"
    "tsx"
    "twig"
    "typescript"
    "ux_markup"
    "vala"
    "verilog"
    "vhdl"
    "visualforce"
    "vue"
    "xml"
    "xtemplate"
    "yaml"
    'marko'
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

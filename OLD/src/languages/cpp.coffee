module.exports = {

  name: "C++"
  namespace: "cpp"

  ###
  Supported Grammars
  ###
  grammars: [
    "C++"
  ]

  ###
  Supported extensions
  ###
  extensions: [
    "h"
    "hh"
    "cc"
    "cpp"
    "cxx"
    "C"
    "c++"
    "hpp"
    "hxx"
    "h++"
  ]

  options:
    configPath:
      title: "Config Path"
      type: 'string'
      default: ""
      description: "Path to uncrustify config file. i.e. uncrustify.cfg"

}

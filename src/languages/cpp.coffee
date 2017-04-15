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
    "cu"
    "c++"
    "hpp"
    "hxx"
    "h++"
    "cuh"
  ]

  options:
    configPath:
      title: "Config Path"
      type: 'string'
      default: ""
      description: "Path to uncrustify config file. i.e. uncrustify.cfg"

}

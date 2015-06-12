module.exports = {

  name: "C"
  namespace: "c"

  ###
  Supported Grammars
  ###
  grammars: [
    "C"
  ]

  ###
  Supported extensions
  ###
  extensions: [
    "c"
  ]

  options:
    configPath:
      type: 'string'
      default: ""
      description: "Path to uncrustify config file. i.e. uncrustify.cfg"

}

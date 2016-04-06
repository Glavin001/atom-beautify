module.exports = {

  name: "D"
  namespace: "d"

  ###
  Supported Grammars
  ###
  grammars: [
    "D"
  ]

  ###
  Supported extensions
  ###
  extensions: [
    "d"
  ]

  defaultBeautifier: "Uncrustify"

  options:
    configPath:
      type: 'string'
      default: ""
      description: "Path to uncrustify config file. i.e. uncrustify.cfg"

}

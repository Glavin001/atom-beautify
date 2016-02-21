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

  defaultBeautifier: "dfmt"

  options:
    configPath:
      type: 'string'
      default: ""
      description: "Path to uncrustify config file. i.e. uncrustify.cfg"

}

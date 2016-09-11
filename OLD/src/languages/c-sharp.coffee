module.exports = {

  name: "C#"
  namespace: "cs"

  ###
  Supported Grammars
  ###
  grammars: [
    "C#"
  ]

  ###
  Supported extensions
  ###
  extensions: [
    'cs'
  ]

  options:
    configPath:
      title: "Config Path"
      type: 'string'
      default: ""
      description: "Path to uncrustify config file. i.e. uncrustify.cfg"

}

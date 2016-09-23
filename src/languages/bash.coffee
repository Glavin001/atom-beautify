module.exports = {

  name: "Bash"
  namespace: "bash"

  ###
  Supported Grammars
  ###
  grammars: [
    "Shell script"
  ]

  defaultBeautifier: "beautysh"

  ###
  Supported extensions
  ###
  extensions: [
    "bash"
    "sh"
  ]

  options:
    configPath:
      type: 'string'
      default: ""
      description: "Path to uncrustify config file. i.e. uncrustify.cfg"

}

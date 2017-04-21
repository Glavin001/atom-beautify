module.exports = {

  name: "LaTeX"
  namespace: "latex"
  scope: ['source.tex']

  ###
  Supported Grammars
  ###
  grammars: [
    "LaTeX"
  ]

  ###
  Supported extensions
  ###
  extensions: [
    "tex"
  ]

  defaultBeautifier: "Latex Beautify"

  ###

  ###
  options:
    configPath:
      type: 'string'
      default: ""
      description: "Path to latexindent config file. i.e. localSettings.yaml"
}

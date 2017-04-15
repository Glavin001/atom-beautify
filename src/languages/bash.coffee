scope = ['source.sh', 'source.bash']
tabLength = atom?.config.get('editor.tabLength', scope: scope) ? 2
softTabs = atom?.config.get('editor.softTabs', scope: scope) ? true
defaultIndentSize = (if softTabs then tabLength else 1)

module.exports = {

  name: "Bash"
  namespace: "bash"

  ###
  Supported Grammars
  ###
  grammars: [
    "Shell Script"
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
    indent_size:
      type: 'integer'
      default: defaultIndentSize
      minimum: 0
      description: "Indentation size/length"

}

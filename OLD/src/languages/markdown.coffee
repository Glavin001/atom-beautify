module.exports = {

  name: "Markdown"
  namespace: "markdown"

  ###
  Supported Grammars
  ###
  grammars: [
    "GitHub Markdown"
  ]

  ###
  Supported extensions
  ###
  extensions: [
    "markdown"
    "md"
  ]

  defaultBeautifier: "Tidy Markdown"

  options:
    gfm:
      type: 'boolean'
      default: true
      description: 'GitHub Flavoured Markdown'
    yaml:
      type: 'boolean'
      default: true
      description: 'Enables raw YAML front matter to be detected (thus ignoring markdown-like syntax).'
    commonmark:
      type: 'boolean'
      default: false
      description: 'Allows and disallows several constructs.'
}

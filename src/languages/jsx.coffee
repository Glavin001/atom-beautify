module.exports = {

  name: "JSX"
  namespace: "jsx"
  fallback: ['js']

  ###
  Supported Grammars
  ###
  grammars: [
    "JSX"
    "JavaScript (JSX)"
    "Babel ES6 JavaScript"
    "JavaScript with JSX"
  ]

  ###
  Supported extensions
  ###
  extensions: [
    "jsx",
    "js"
  ]

  defaultBeautifier: "Pretty Diff"

  options:
    e4x:
      type: 'boolean'
      default: true
      description: "Support e4x/jsx syntax"

}

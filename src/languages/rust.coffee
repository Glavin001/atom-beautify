module.exports = {

  name: "Rust"
  namespace: "rust"

  ###
  Supported Grammars
  ###
  grammars: [
    "Rust"
  ]

  ###
  Supported extensions
  ###
  extensions: [
    "rs"
    "rlib"
  ]

  options:
    rustfmt_path:
      type: 'string'
      default: ""
      description: "Path to rustfmt program"

}

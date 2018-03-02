module.exports = {

  name: "Verilog"
  namespace: "verilog"

  ###
  Supported Grammars
  ###
  grammars: [
    "Verilog"
  ]

  ###
  Supported extensions
  ###
  extensions: [
    "svh"
    "v"
    "sv"
  ]

  options:
    emacs_script_path:
      type: 'string'
      default: ""
      description: "Path to emacs init.el script with formatting settings. (Leave blank to use default one)"

}

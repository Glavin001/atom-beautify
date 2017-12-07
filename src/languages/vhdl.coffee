module.exports = {

  name: "Vhdl"
  namespace: "vhdl"

  ###
  Supported Grammars
  ###
  grammars: [
    "VHDL 2008"
  ]

  ###
  Supported extensions
  ###
  extensions: [
    "vhd"
    "VHD"
  ]

  ###

  ###
  options:
    # JavaScript
    emacs_path:
      type: 'string'
      default: ""
      description: "Path to the `emacs` executable"
    emacs_script_path:
      type: 'string'
      default: ""
      description: "Path to the emacs script"

}

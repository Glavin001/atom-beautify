module.exports = {

  name: "VHDL"
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
    emacs_script_path:
      type: 'string'
      default: ""
      description: "Path to the emacs script"

}

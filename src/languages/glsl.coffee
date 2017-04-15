module.exports = {

  name: "GLSL"
  namespace: "glsl"

  ###
  Supported Grammars
  ###
  grammars: [
    "C"
    "opencl"
    "GLSL"
  ]

  ###
  Supported extensions
  ###
  extensions: [
    "vert"
    "frag"
  ]

  options:
    configPath:
      type: 'string'
      default: ""
      description: "Path to clang-format config file. i.e. clang-format.cfg"

}

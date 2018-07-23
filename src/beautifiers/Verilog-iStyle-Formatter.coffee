###
Requires iStyle with istyle-verilog-formatter https://github.com/feilongfl/istyle-verilog-formatter/releases
###

"use strict"
Beautifier = require('./beautifier')
# path = require("path")
module.exports = class EmacsVerilogMode extends Beautifier
  name: "Verilog iStyle Formatter"
  link: "https://github.com/thomasrussellmurphy/istyle-verilog-formatter"
  isPreInstalled: false
  executables: [
    {
      name: "iStyle-verilog-formatter"
      cmd: "iStyle"
      homepage: "https://github.com/feilongfl/istyle-verilog-formatter"
      installation: "https://github.com/feilongfl/istyle-verilog-formatter/releases"
      version: {
        parse: (text) -> text.match(/iStyle (\d+\.\d+(?:\.\d+)?)/)[1]
      }
    }
  ]

  options: {
    Verilog: true
  }

  beautify: (text, language, options) ->
    iStyle_format_style = options.iStyle_format_style
    iStyle_command_args_text = options.iStyle_command_args
    iStyle_command_args = iStyle_command_args_text.split " " if iStyle_command_args_text?


    if not iStyle_format_style
      iStyle_format_style = 'kr'

    iStyle_format_style = '--style=' + iStyle_format_style

    @debug('verilog-beautifier', 'iStyle_format_style: ' + iStyle_format_style)
    @debug('verilog-beautifier', 'iStyle_command_args_text: ' + iStyle_command_args_text)

    tempFile = @tempFile("input", text)

    args = [
      iStyle_format_style
      tempFile
      ]

    args.push(iStyle_command_args) if iStyle_command_args[0] != ""


    @debug('verilog-beautifier', 'istyle args: ' + args)

    @exe("iStyle").run(args, {ignoreReturnCode: false})
      .then(=>
        @readFile(tempFile)
      )

###
Requires emacs with verilog-mode https://www.veripool.org/wiki/verilog-mode
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
      homepage: "https://github.com/thomasrussellmurphy/istyle-verilog-formatter"
      installation: "https://github.com/thomasrussellmurphy/istyle-verilog-formatter"
      version: {
        parse: (text) -> text.match(/iStyle (\d+\.\d+(?:\.\d+)?)/)[1]
      }
    }
  ]

  options: {
    Verilog: true
  }

  beautify: (text, language, options) ->
    # command_args = options.command_args

    console.log("loaded verilog istyle!")

    # if not command_args
    command_args = '--style=gnu'

    @debug('verilog-beautifier', 'command_args: ' + command_args)

    tempFile = @tempFile("input", text)

    args = [
      command_args
      tempFile
      ]

    @debug('verilog-beautifier', 'istyle args: ' + args)

    @exe("iStyle").run(args, {ignoreReturnCode: false})
      .then(=>
        @readFile(tempFile)
      )

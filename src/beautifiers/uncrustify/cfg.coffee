###
Requires http://pear.php.net/package/PHP_Beautifier
###
"use strict"
fs = require("fs")
temp = require("temp").track()
possibleOptions = require "./possible-options.json"
module.exports = (options, cb) ->
  text = ""

  # Apply indent_size to output_tab_size
  options.output_tab_size = options.output_tab_size or options.indent_size # jshint ignore: line
  options.input_tab_size = options.input_tab_size or options.indent_size # jshint ignore: line
  delete options.indent_size # jshint ignore: line

  # Indent with Tabs?
  # How to use tabs when indenting code
  # 0=spaces only
  # 1=indent with tabs to brace level, align with spaces
  # 2=indent and align with tabs, using spaces when not on a tabstop
  # jshint ignore: start
  ic = options.indent_char
  if options.indent_with_tabs is 0 or options.indent_with_tabs is 1 or options.indent_with_tabs is 2
    null # Ignore indent_char option
  else if ic is " "
    options.indent_with_tabs = 0 # Spaces only
  else if ic is "\t"
    options.indent_with_tabs = 2 # indent and align with tabs, using spaces when not on a tabstop
  else
    options.indent_with_tabs = 1 # indent with tabs to brace level, align with spaces
  delete options.indent_char


  # jshint ignore: end
  # Remove misc
  delete options.languageOverride
  delete options.configPath

  # Iterate over each property and write to configuration file
  for k of options
    # Remove all non-possible options
    isPossible = possibleOptions.indexOf(k) isnt -1
    if isPossible
      v = options[k]
      vs = v
      if typeof vs is "boolean"
        if vs is true
          vs = "True"
        else
          vs = "False"
      text += k + " = " + vs + "\n"
    else
      # console.log("removing #{k} option")
      delete options[k]

  # Create temp input file
  temp.open
    suffix: ".cfg"
  , (err, info) ->
    unless err

      # Save current text to input file
      fs.write info.fd, text or "", (err) ->

        # console.log(err);
        return cb(err) if err
        fs.close info.fd, (err) ->

          # console.log(err);
          return cb(err) if err
          cb null, info.path


    else
      cb err

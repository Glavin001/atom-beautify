###
Requires http://pear.php.net/package/PHP_Beautifier
###
"use strict"
fs = require("fs")
temp = require("temp").track()
exec = require("child_process").exec
module.exports = (getCmd, isStdout) ->
  (text, options, callback) ->

    # Create temp input file
    temp.open "input", (err, info) ->
      unless err

        # Save current text to input file
        fs.write info.fd, text or "", ->
          fs.close info.fd, (err) ->
            unless err

              # Create temp output file
              outputPath = temp.path()
              deleteOutputFile = ->
                temp.cleanup()
                # Delete the output path
                fs.unlink outputPath, (err) ->
                  console.log "Deleting output file", err  if err
                  return
                return

              # Process the command
              processCmd = (cmd) ->
                if cmd
                  config = env: process.env
                  isWin = /^win/.test(process.platform)
                  unless isWin

                    # We need the $PATH to be correct when executing the command.
                    # This should normalize the $PATH
                    # by calling the external files that would usually
                    # change the $PATH variable on user login.
                    $path = "[ -f ~/.bash_profile ] && source ~/.bash_profile;"
                    $path += "[ -f ~/.bashrc ] && source ~/.bashrc;"

                    # See http://stackoverflow.com/a/638980/2578205
                    # for checking if file exists in Bash
                    cmd = $path + cmd

                  # Execute and beautify!
                  exec cmd, config, (err, stdout, stderr) ->

                    # console.log(stderr);
                    unless err

                      # Beautification has completed
                      if isStdout

                        # Execute callback with resulting output text
                        callback stdout
                        deleteOutputFile()
                      else

                        # Read contents of output file
                        fs.readFile outputPath, "utf8", (err, newText) ->

                          # Execute callback with resulting output text
                          callback newText
                          deleteOutputFile()
                          return

                    else
                      console.log "Beautifcation Error: ", err
                      callback err
                      deleteOutputFile()
                    return

                else
                  console.log "Beautify CLI command not valid."
                  callback(new Error("Beautify CLI command not valid."))
                return


              # Get the command
              cmd = getCmd(info.path, outputPath, options, processCmd) # jshint ignore: line
              processCmd cmd  if typeof cmd is "string"
            return

          return

      return

    return

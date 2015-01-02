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
                  # console.log "Deleting output file", err if err
                  return
                return

              # Process the command
              processCmd = (cmd, optCallback) ->
                if optCallback? and typeof optCallback is "function"
                  # console.log('Optional Callback found')
                  cb = callback # Save callback for later
                  callback = (output) -> # Wrap callback (cb) with optCallback
                    # console.log('Callback called!', output)
                    optCallback(output, cb)

                if typeof cmd is "string"

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
                      console.error "Beautifcation Error: ", err
                      callback err
                      deleteOutputFile()
                    return

                # Check if there's an error
                else if cmd instanceof Error
                  return callback(cmd)
                else
                  console.error "CLI Beautifier command not valid."
                  return callback(new Error("CLI Beautifier command not valid."+
                    " Invalid command '#{cmd}'."))


              # Get the command
              try
                cmd = getCmd(info.path, outputPath, options, processCmd) # jshint ignore: line
              catch e
                return callback(e)

              if typeof cmd is "string"
                processCmd cmd
              # Check if there's an error
              else if cmd instanceof Error
                return callback(cmd)

            return

          return

      return

    return

/**
Requires http://pear.php.net/package/PHP_Beautifier
*/

'use strict';

var fs = require('fs');
var temp = require('temp').track();
var exec = require('child_process').exec;

module.exports = function (getCmd, isStdout) {

  return function (text, options, callback) {
    // Create temp input file
    temp.open('input', function (err, info) {
      if (!err) {
        // Save current text to input file
        fs.write(info.fd, text || '', function () {
          fs.close(info.fd, function (err) {
            if (!err) {
              // Create temp output file
              var outputPath = temp.path();
              var deleteOutputFile = function () {
                temp.cleanup();
                // Delete the output path
                fs.unlink(outputPath, function (err) {
                  if (err) {
                    console.log('Deleting output file', err);
                  }
                });
              };

              // Process the command
              var processCmd = function (cmd) {
                if (cmd) {

                  var config = {
                    env: process.env
                  };

                  var isWin = /^win/.test(process.platform);
                  if (!isWin) {
                    // We need the $PATH to be correct when executing the command.
                    // This should normalize the $PATH
                    // by calling the external files that would usually
                    // change the $PATH variable on user login.
                    var $path =
                      '[ -f ~/.bash_profile ] && source ~/.bash_profile;';
                    $path +=
                      '[ -f ~/.bash_rc ] && source ~/.bash_rc;';
                    // See http://stackoverflow.com/a/638980/2578205
                    // for checking if file exists in Bash
                    cmd = $path + cmd;
                  }

                  // Execute and beautify!
                  exec(cmd, config, function (err, stdout, stderr) {
                    // console.log(stderr);
                    if (!err) {
                      // Beautification has completed
                      if (isStdout) {
                        // Execute callback with resulting output text
                        callback(stdout);
                        deleteOutputFile();
                      } else {
                        // Read contents of output file
                        fs.readFile(outputPath, 'utf8', function (
                          err,
                          newText) {
                          // Execute callback with resulting output text
                          callback(newText);
                          deleteOutputFile();
                        });
                      }
                    } else {
                      console.log('Beautifcation Error: ', err);
                      deleteOutputFile();
                    }
                  });
                } else {
                  console.log('Beautify CLI command not valid.');
                }
              };

              // Get the command
              var cmd = getCmd(info.path, outputPath, options,
                processCmd); // jshint ignore: line
              if (typeof cmd === 'string') {
                processCmd(cmd);
              }
            }
          });
        });
      }
    });
  };

};

/**
Requires http://pear.php.net/package/PHP_Beautifier
*/

'use strict';

var fs = require('fs');
var temp = require('temp').track();
var exec = require('child_process').exec;

module.exports = function (text, options, callback) {
  // Create temp input file
  temp.open('input.php', function (err, info) {
    if (!err) {
      // Save current text to input file
      fs.write(info.fd, text);
      fs.close(info.fd, function (err) {
        if (!err) {
          // Create temp output file
          var outputPath = temp.path();
          var deleteOutputFile = function () {
            // Delete the output path
            fs.unlink(outputPath, function () {});
          };

          var phpBeautifierPath = options.beautifier_path; // jshint ignore: line
          if (phpBeautifierPath) {
            // Beautify
            var config = {
              env: process.env
            };
            exec('php "' + phpBeautifierPath + '" "' + info.path + '" "' + outputPath + '"', config, function (err) {
              if (!err) {
                // Beautification has completed
                // Read contents of output file
                fs.readFile(outputPath, 'utf8', function (err, newText) {
                  // Execute callback with resulting output text
                  callback(newText);
                  deleteOutputFile();
                });
              } else {
                deleteOutputFile();
              }
            });
          } else {
            console.log('PHP Beautifier Path not set in Package settings.');
          }
        }
      });
    }
  });
};

/**
Requires https://github.com/hhatto/autopep8
*/

'use strict';

var cliBeautify = require('./cli-beautify');

function getCmd(inputPath, outputPath, options) {
  var path = options.autopep8_path; // jshint ignore: line
  if (path) {
    // Use absolute path
    return 'python "' + path + '" "' + inputPath + '"';
  } else {
    // Use command available in $PATH
    return 'autopep8 "' + inputPath + '"';
  }
}
var isStdout = true;
module.exports = cliBeautify(getCmd, isStdout);

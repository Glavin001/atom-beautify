/**
Requires https://github.com/erniebrodeur/ruby-beautify
*/

'use strict';

var cliBeautify = require('./cli-beautify');

function getCmd(inputPath, outputPath, options) {
  var path = options.rbeautify_path; // jshint ignore: line
  if (path) {
    // Use absolute path
    return 'ruby "' + path + '" "' + inputPath + '"';
  } else {
    // Use command available in $PATH
    return 'rbeautify "' + inputPath + '"';
  }
}
var isStdout = true;
module.exports = cliBeautify(getCmd, isStdout);

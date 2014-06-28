/**
Requires https://github.com/hhatto/autopep8
*/

'use strict';

var cliBeautify = require('./cli-beautify');

function getCmd(inputPath, outputPath, options) {
  var path = options.autopep8_path; // jshint ignore: line
  var optionsStr = '--max-line-length ' + options.max_line_length + // jshint ignore: line
    ' --indent-size ' + options.indent_size // jshint ignore: line
    + ' --ignore ' + options.ignore.join(','); // jshint ignore: line
  if (path) {
    // Use absolute path
    return 'python "' + path + '" "' + inputPath + '" ' + optionsStr;
  } else {
    // Use command available in $PATH
    return 'autopep8 "' + inputPath + '" ' + optionsStr;
  }
}
var isStdout = true;
module.exports = cliBeautify(getCmd, isStdout);

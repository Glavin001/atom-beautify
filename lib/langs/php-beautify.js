/**
Requires http://pear.php.net/package/PHP_Beautifier
*/

'use strict';

var cliBeautify = require('./cli-beautify');

function getCmd(inputPath, outputPath, options) {
  var phpBeautifierPath = options.beautifier_path; // jshint ignore: line
  if (phpBeautifierPath) {
    // Use absolute path
    return 'php "' + phpBeautifierPath + '" "' + inputPath + '" "' + outputPath + '"';
  } else {
    // Use command available in $PATH
    return 'php_beautifier "' + inputPath + '" "' + outputPath + '"';
  }
}
module.exports = cliBeautify(getCmd);

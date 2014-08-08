/**
Requires http://pear.php.net/package/PHP_Beautifier
*/

'use strict';

var cliBeautify = require('../cli-beautify');
var path = require('path');

function getCmd(inputPath, outputPath, options) {
  var configPath = options.configPath;
  var lang = options.languageOverride || 'C';
  if (!configPath) {
    // No custom config path
    // Use Default config
    configPath = path.resolve(__dirname, 'default.cfg');
  } else {
    // Has custom config path
    var editor = atom.workspace.getActiveEditor();
    var basePath = path.dirname(editor.getPath());
    console.log(basePath);
    configPath = path.resolve(basePath, configPath);
  }
  console.log(configPath);
  // Use command available in $PATH
  var cmd = 'uncrustify -c "' + configPath +
    '" -f "' + inputPath +
    '" -o "' + outputPath +
    '" -l "' + lang + '"';
  console.log(cmd);
  return cmd;
}
module.exports = cliBeautify(getCmd);

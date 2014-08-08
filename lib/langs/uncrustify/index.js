/**
Requires http://pear.php.net/package/PHP_Beautifier
*/

'use strict';

var cliBeautify = require('../cli-beautify');
var cfg = require('./cfg');
var path = require('path');

function getCmd(inputPath, outputPath, options, cb) {
  // console.log('Uncrustify options:', options);
  var configPath = options.configPath;
  var lang = options.languageOverride || 'C';

  function done(configPath) {
    // console.log(configPath);
    // Use command available in $PATH
    var cmd = 'uncrustify -c "' + configPath +
      '" -f "' + inputPath +
      '" -o "' + outputPath +
      '" -l "' + lang + '"';
    // console.log(cmd);
    return cb(cmd);
  }
  if (!configPath) {
    // No custom config path
    cfg(options, function (error, path) {
      if (error) {
        throw error;
      }
      return done(path);
    });
  } else {
    // Has custom config path
    var editor = atom.workspace.getActiveEditor();
    var basePath = path.dirname(editor.getPath());
    // console.log(basePath);
    configPath = path.resolve(basePath, configPath);
    done(configPath);
  }
  return;
}
module.exports = cliBeautify(getCmd);

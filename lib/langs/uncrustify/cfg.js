/**
Requires http://pear.php.net/package/PHP_Beautifier
*/

'use strict';

var fs = require('fs');
var temp = require('temp').track();

module.exports = function (options, cb) {
  var text = '';
  // Apply indent_size to output_tab_size
  options.output_tab_size = options.output_tab_size || options.indent_size; // jshint ignore: line
  options.input_tab_size = options.input_tab_size || options.indent_size; // jshint ignore: line
  delete options.indent_size; // jshint ignore: line
  // Indent with Tabs?
  // How to use tabs when indenting code
  // 0=spaces only
  // 1=indent with tabs to brace level, align with spaces
  // 2=indent and align with tabs, using spaces when not on a tabstop
  // jshint ignore: start
  var ic = options.indent_char;
  if (options.indent_with_tabs === 0 ||
    options.indent_with_tabs === 1 ||
    options.indent_with_tabs === 2) {
    // Ignore indent_char option
  } else if (ic === ' ') {
    options.indent_with_tabs = 0; // Spaces only
  } else if (ic === '\t') {
    options.indent_with_tabs = 2; // indent and align with tabs, using spaces when not on a tabstop
  } else {
    options.indent_with_tabs = 1; // indent with tabs to brace level, align with spaces
  }
  delete options.indent_char;
  // jshint ignore: end
  // Remove misc
  delete options.languageOverride;
  delete options.configPath;
  // Iterate over each property and write to configuration file
  for (var k in options) {
    var v = options[k];
    var vs = v;
    if (typeof vs === 'boolean') {
      if (vs === true) {
        vs = 'True';
      } else {
        vs = 'False';
      }
    }
    text += k + ' = ' + vs + '\n';
  }

  // Create temp input file
  temp.open({
    suffix: '.cfg'
  }, function (err, info) {
    if (!err) {
      // Save current text to input file
      fs.write(info.fd, text || '', function (err) {
        // console.log(err);
        if (err) {
          return cb(err);
        }
        fs.close(info.fd, function (err) {
          // console.log(err);
          if (err) {
            return cb(err);
          }
          return cb(null, info.path);
        });
      });
    } else {
      return cb(err);
    }
  });
};

'use strict';

var prettydiff = require('prettydiff');

module.exports = function (text, options, callback) {
  var args = {
      source: text,
      lang: 'css',
      mode: 'beautify',
      inchar: options.indent_character,
      insize: options.indent_size
  },
  output = prettydiff.api(args);
  var result = output[0];
  callback(result);
  return result;
};

'use strict';

var prettydiff = require('prettydiff');

module.exports = function (text, options, callback) {
  var args = {
      source: text,
      lang: 'less',
      mode: 'beautify'
  },
  output = prettydiff.api(args);
  var result = output[0];
  callback(result);
  return result;
};

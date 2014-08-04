'use strict';

var CF = require('coffee-formatter');
module.exports = function (text, options, callback) {
  var lines = text.split('\n');
  var resultArr = [];
  for (var i = 0, len = lines.length; i < len; i++) {
    var curr = lines[i];
    var p = CF.formatTwoSpaceOperator(curr);
    p = CF.formatOneSpaceOperator(p);
    p = CF.shortenSpaces(p);
    resultArr.push(p);
  }
  var result = resultArr.join('\n');
  callback(result);
  return result;
};

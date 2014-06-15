/**
Original SQL Beautifier Source code from https://github.com/vkiryukhin/pretty-data
*/
'use strict';

module.exports = function (text, options) {

  function SQL() {
    var self = this;

    self.step = '  '; // 2 spaces
    self.shift = ['\n']; // array of shifts
    var maxdeep = 100, // nesting level
      ix = 0;

    // initialize array with shifts //
    for (ix = 0; ix < maxdeep; ix++) {
      self.shift.push(self.shift[ix] + self.step);
    }
  }

  function isSubquery(str, parenthesisLevel) {
    return parenthesisLevel - (str.replace(/\(/g, '').length - str.replace(/\)/g, '').length);
  }

  function splitSql(str, tab) {

    return str.replace(/\s{1,}/g, ' ')

    .replace(/ AND /ig, '~::~' + tab + tab + 'AND ')
      .replace(/ BETWEEN /ig, '~::~' + tab + 'BETWEEN ')
      .replace(/ CASE /ig, '~::~' + tab + 'CASE ')
      .replace(/ ELSE /ig, '~::~' + tab + 'ELSE ')
      .replace(/ END /ig, '~::~' + tab + 'END ')
      .replace(/ FROM /ig, '~::~FROM ')
      .replace(/ GROUP\s{1,}BY/ig, '~::~GROUP BY ')
      .replace(/ HAVING /ig, '~::~HAVING ')
    //.replace(/ IN /ig,'~::~'+tab+'IN ')
    .replace(/ IN /ig, ' IN ')
      .replace(/ JOIN /ig, '~::~JOIN ')
      .replace(/ CROSS~::~{1,}JOIN /ig, '~::~CROSS JOIN ')
      .replace(/ INNER~::~{1,}JOIN /ig, '~::~INNER JOIN ')
      .replace(/ LEFT~::~{1,}JOIN /ig, '~::~LEFT JOIN ')
      .replace(/ RIGHT~::~{1,}JOIN /ig, '~::~RIGHT JOIN ')
      .replace(/ ON /ig, '~::~' + tab + 'ON ')
      .replace(/ OR /ig, '~::~' + tab + tab + 'OR ')
      .replace(/ ORDER\s{1,}BY/ig, '~::~ORDER BY ')
      .replace(/ OVER /ig, '~::~' + tab + 'OVER ')
      .replace(/\(\s{0,}SELECT /ig, '~::~(SELECT ')
      .replace(/\)\s{0,}SELECT /ig, ')~::~SELECT ')
      .replace(/ THEN /ig, ' THEN~::~' + tab + '')
      .replace(/ UNION /ig, '~::~UNION~::~')
      .replace(/ USING /ig, '~::~USING ')
      .replace(/ WHEN /ig, '~::~' + tab + 'WHEN ')
      .replace(/ WHERE /ig, '~::~WHERE ')
      .replace(/ WITH /ig, '~::~WITH ')
    //.replace(/\,\s{0,}\(/ig,',~::~( ')
    //.replace(/\,/ig,',~::~'+tab+tab+'')
    .replace(/ ALL /ig, ' ALL ')
      .replace(/ AS /ig, ' AS ')
      .replace(/ ASC /ig, ' ASC ')
      .replace(/ DESC /ig, ' DESC ')
      .replace(/ DISTINCT /ig, ' DISTINCT ')
      .replace(/ EXISTS /ig, ' EXISTS ')
      .replace(/ NOT /ig, ' NOT ')
      .replace(/ NULL /ig, ' NULL ')
      .replace(/ LIKE /ig, ' LIKE ')
      .replace(/\s{0,}SELECT /ig, 'SELECT ')
      .replace(/~::~{1,}/g, '~::~')
      .split('~::~');
  }

  SQL.prototype.beautify = function (text, options) {

    /* jshint camelcase: false */
    // Apply options
    // options.indent_size = Indentation size [4]
    // options.indent_char = Indentation character [" "]
    this.step = new Array(options.indent_size).join(options.indent_char);
    // Initial indentation level [0]
    if (options.indent_level) {
      // Not supported.
    }
    // Indent with tabs, overrides indent_size and indent_char
    if (!!options.indent_with_tabs) {
      this.step = '\t';
    }

    var arByQuote = text.replace(/\s{1,}/g, ' ')
      .replace(/\'/ig, '~::~\'')
      .split('~::~'),
      len = arByQuote.length,
      ar = [],
      deep = 0,
      tab = this.step,
      inComment = true,
      inQuote = false,
      parenthesisLevel = 0,
      str = '',
      ix = 0;

    for (ix = 0; ix < len; ix++) {

      if (ix % 2) {
        ar = ar.concat(arByQuote[ix]);
      } else {
        ar = ar.concat(splitSql(arByQuote[ix], tab));
      }
    }

    len = ar.length;
    for (ix = 0; ix < len; ix++) {

      parenthesisLevel = isSubquery(ar[ix], parenthesisLevel);

      if (/\s{0,}\s{0,}SELECT\s{0,}/.exec(ar[ix])) {
        ar[ix] = ar[ix].replace(/\,/g, ',\n' + tab + tab + '');
      }

      if (/\s{0,}\(\s{0,}SELECT\s{0,}/.exec(ar[ix])) {
        deep++;
        str += this.shift[deep] + ar[ix];
      } else
      if (/\'/.exec(ar[ix])) {
        if (parenthesisLevel < 1 && deep) {
          deep--;
        }
        str += ar[ix];
      } else {
        str += this.shift[deep] + ar[ix];
        if (parenthesisLevel < 1 && deep) {
          deep--;
        }
      }
    }

    str = str.replace(/^\n{1,}/, '').replace(/\n{1,}/g, '\n');
    return str;

  };

  return new SQL().beautify(text, options);

};

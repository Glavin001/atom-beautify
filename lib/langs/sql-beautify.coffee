###
Original SQL Beautifier Source code from https://github.com/vkiryukhin/pretty-data
###
"use strict"
module.exports = (text, options) ->
  SQL = ->
    self = this
    self.step = "  " # 2 spaces
    self.shift = [ "\n" ] # array of shifts
    maxdeep = 100 # nesting level
    ix = 0

    # initialize array with shifts //
    ix = 0
    while ix < maxdeep
      self.shift.push self.shift[ix] + self.step
      ix++
  isSubquery = (str, parenthesisLevel) ->
    parenthesisLevel - (str.replace(/\(/g, "").length - str.replace(/\)/g, "").length)
  splitSql = (str, tab) ->

    #.replace(/ IN /ig,'~::~'+tab+'IN ')

    #.replace(/\,\s{0,}\(/ig,',~::~( ')
    #.replace(/\,/ig,',~::~'+tab+tab+'')
    str.replace(/\s{1,}/g, " ").replace(RegExp(" AND ", "g"), "~::~" + tab + tab + "AND ").replace(RegExp(" BETWEEN ", "g"), "~::~" + tab + "BETWEEN ").replace(RegExp(" CASE ", "g"), "~::~" + tab + "CASE ").replace(RegExp(" ELSE ", "g"), "~::~" + tab + "ELSE ").replace(RegExp(" END ", "g"), "~::~" + tab + "END ").replace(RegExp(" FROM ", "g"), "~::~FROM ").replace(RegExp(" GROUP\\s{1,}BY", "g"), "~::~GROUP BY ").replace(RegExp(" HAVING ", "g"), "~::~HAVING ").replace(RegExp(" IN ", "g"), " IN ").replace(RegExp(" JOIN ", "g"), "~::~JOIN ").replace(RegExp(" CROSS~::~{1,}JOIN ", "g"), "~::~CROSS JOIN ").replace(RegExp(" INNER~::~{1,}JOIN ", "g"), "~::~INNER JOIN ").replace(RegExp(" LEFT~::~{1,}JOIN ", "g"), "~::~LEFT JOIN ").replace(RegExp(" RIGHT~::~{1,}JOIN ", "g"), "~::~RIGHT JOIN ").replace(RegExp(" ON ", "g"), "~::~" + tab + "ON ").replace(RegExp(" OR ", "g"), "~::~" + tab + tab + "OR ").replace(RegExp(" ORDER\\s{1,}BY", "g"), "~::~ORDER BY ").replace(RegExp(" OVER ", "g"), "~::~" + tab + "OVER ").replace(/\(\s{0,}SELECT /g, "~::~(SELECT ").replace(/\)\s{0,}SELECT /g, ")~::~SELECT ").replace(RegExp(" THEN ", "g"), " THEN~::~" + tab + "").replace(RegExp(" UNION ", "g"), "~::~UNION~::~").replace(RegExp(" USING ", "g"), "~::~USING ").replace(RegExp(" WHEN ", "g"), "~::~" + tab + "WHEN ").replace(RegExp(" WHERE ", "g"), "~::~WHERE ").replace(RegExp(" WITH ", "g"), "~::~WITH ").replace(RegExp(" ALL ", "g"), " ALL ").replace(RegExp(" AS ", "g"), " AS ").replace(RegExp(" ASC ", "g"), " ASC ").replace(RegExp(" DESC ", "g"), " DESC ").replace(RegExp(" DISTINCT ", "g"), " DISTINCT ").replace(RegExp(" EXISTS ", "g"), " EXISTS ").replace(RegExp(" NOT ", "g"), " NOT ").replace(RegExp(" NULL ", "g"), " NULL ").replace(RegExp(" LIKE ", "g"), " LIKE ").replace(/\s{0,}SELECT /g, "SELECT ").replace(/~::~{1,}/g, "~::~").split "~::~"
  SQL::beautify = (text, options) ->

    # jshint camelcase: false

    # Apply options
    # options.indent_size = Indentation size [4]
    # options.indent_char = Indentation character [" "]
    @step = new Array(options.indent_size).join(options.indent_char)

    # Initial indentation level [0]
    options.indent_level

    # Not supported.

    # Indent with tabs, overrides indent_size and indent_char
    @step = "\t"  unless not options.indent_with_tabs
    arByQuote = text.replace(/\s{1,}/g, " ").replace(/\'/g, "~::~'").split("~::~")
    len = arByQuote.length
    ar = []
    deep = 0
    tab = @step
    inComment = true
    inQuote = false
    parenthesisLevel = 0
    str = ""
    ix = 0
    ix = 0
    while ix < len
      if ix % 2
        ar = ar.concat(arByQuote[ix])
      else
        ar = ar.concat(splitSql(arByQuote[ix], tab))
      ix++
    len = ar.length
    ix = 0
    while ix < len
      parenthesisLevel = isSubquery(ar[ix], parenthesisLevel)
      ar[ix] = ar[ix].replace(/\,/g, ",\n" + tab + tab + "")  if /\s{0,}\s{0,}SELECT\s{0,}/.exec(ar[ix])
      if /\s{0,}\(\s{0,}SELECT\s{0,}/.exec(ar[ix])
        deep++
        str += @shift[deep] + ar[ix]
      else if /\'/.exec(ar[ix])
        deep--  if parenthesisLevel < 1 and deep
        str += ar[ix]
      else
        str += @shift[deep] + ar[ix]
        deep--  if parenthesisLevel < 1 and deep
      ix++
    str = str.replace(/^\n{1,}/, "").replace(/\n{1,}/g, "\n")
    str

  new SQL().beautify text, options

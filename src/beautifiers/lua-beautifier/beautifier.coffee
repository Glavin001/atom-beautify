DEFAULT_INDENT = '    '

adjust_space = (line) ->
  string_list = line.match /(['"])[^\1]*?\1/g
  muli_string = line.match /\[(=*)\[([^\]\1\]]*)/
  comment = line.match /\-{2}[^\[].*$/
  line = line.replace /\s+/g, ' '
  # replace all whitespaces inside the string with one space, WARNING: the whitespaces in string will be replace too!
  line = line.replace /\s?(==|>=|<=|~=|[=><\+\*\/])\s?/g, ' $1 '
  # add whitespace around the operator
  line = line.replace /([^=e\-\(\s])\s?\-\s?([^\-\[])/g, '$1 - $2'
  line = line.replace /([^\d])e\s?\-\s?([^\-\[])/g, '$1e - $2'
  # just format minus, not for -- or negative number or commentary.
  line = line.replace /,([^\s])/g, ', $1'
  # adjust ','
  line = line.replace /\s+,/g, ','
  # recover the whitespaces in string.
  line = line.replace /(['"])[^\1]*?\1/g, ->
    string_list.shift()
  if muli_string and muli_string[0]
    line = line.replace /\[(=*)\[([^\]\1\]]*)/, muli_string[0]
  if comment and comment[0]
    line = line.replace /\-{2}[^\[].*$/, comment[0]
  line

DEFAULT_WARN_FN = (msg) ->
  console.log('WARNING:', msg)

module.exports = (str, indent, warn_fn, opts = {}) ->
  eol = opts?.eol or '\n'
  indent = indent or DEFAULT_INDENT
  warn_fn = if typeof warn_fn == 'function' then warn_fn else DEFAULT_WARN_FN
  indent = ' '.repeat(indent) if Number.isInteger(indent)
  $currIndent = 0
  $nextIndent = 0
  $prevLength = 0
  $extIndent = 0
  $lastIndent = 0
  $template = 0
  new_code = str.split(/\r?\n/g).map (line, line_number) ->
    $template_flag = false
    if $template
      res2 = line.match(/\](=*)\]/)
      if res2 and $template == res2[1].length + 1
        $template_flag = true
        if $template and !/]=*]$/.test(line)
          arr = line.split(/\]=*\]/, 2)
          comment = arr[0]
          code = arr[1]
          line = comment + ']' + '='.repeat($template - 1) + ']' + adjust_space(code)
          $template = 0
        $template = 0
      else
        return line
    res1 = line.match(/\[(=*)\[/)
    if res1
      $template = res1[1].length + 1
    if !$template_flag
      line = line.trim()
      # remote all spaces on both ends
      line = adjust_space(line)
    if !line.length
      return ''
    raw_line = line
    line = line.replace(/(['"])[^\1]*?\1/, '')
    # remove all quoted fragments for proper bracket processing
    line = line.replace(/\s*--.+/, '')
    # remove all comments; this ignores long bracket style comments
    if /^((local )?function|repeat|while)\b/.test(line) and !/\bend\s*[\),;]*$/.test(line) or /\b(then|do)$/.test(line) and !/^elseif\b/.test(line) or /^if\b/.test(line) and /\bthen\b/.test(line) and !/\bend$/.test(line) or /\bfunction ?(?:\w+ )?\([^\)]*\)$/.test(line) and !/\bend$/.test(line)
      $nextIndent = $currIndent + 1
    else if /^until\b/.test(line) or /^end\s*[\),;]*$/.test(line) or /^end\s*\)\s*\.\./.test(line) or /^else(if)?\b/.test(line) and /\bend$/.test(line)
      $nextIndent = --$currIndent
    else if /^else\b/.test(line) or /^elseif\b/.test(line)
      $nextIndent = $currIndent
      $currIndent = $currIndent - 1
    $brackets = (line.match(/\(/g) or []).length - ((line.match(/\)/g) or []).length)
    # capture unbalanced brackets
    $curly = (line.match(/\{/g) or []).length - ((line.match(/\}/g) or []).length)
    # capture unbalanced curly brackets
    # close (curly) brackets if needed
    if $curly < 0
      $currIndent += $curly
    if $brackets < 0
      $currIndent += $brackets
    $nextIndent += $brackets + $curly
    # console.log({last: $lastIndent, curr: $currIndent, next: $nextIndent, ext: $extIndent})
    if $currIndent - $lastIndent > 1
      $extIndent += $nextIndent - $lastIndent - 1
      $nextIndent = $currIndent = 1 + $lastIndent
    if $currIndent - $lastIndent < -1 and $extIndent > 0
      $extIndent += $currIndent - $lastIndent + 1
      $currIndent = -1 + $lastIndent
    if $nextIndent < $currIndent
      $nextIndent = $currIndent
    # console.log({last: $lastIndent, curr: $currIndent, next: $nextIndent, ext: $extIndent})
    warn_fn """negative indentation at line #{line_number}: #{raw_line}""" if $currIndent < 0
    new_line = (if raw_line.length and $currIndent > 0 and !$template_flag then indent.repeat($currIndent) else '') + raw_line
    $useful = $prevLength > 0 or raw_line.length > 0
    $lastIndent = $currIndent
    $currIndent = $nextIndent
    $prevLength = raw_line.length
    new_line or undefined

  warn_fn 'positive indentation at the end' if $currIndent > 0
  new_code.join eol

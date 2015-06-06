# Options

Automatically generated documentation for Atom Beautify's options.

## Package Options

Configurable options for Atom Beautify.

---

###  `analytics` 

**Key**: `analytics`

**Default**: `true`

**Type**: `boolean`

**Description**:

There is [Segment.io](https://segment.io/) which forwards data to [Google Analytics](http://www.google.com/analytics/) to track what languages are being used the most, as well as other stats. Everything is anonymized and no personal information, such as source code, is sent. See https://github.com/Glavin001/atom-beautify/issues/47 for more details.
###  `_analyticsUserId` 

**Key**: `_analyticsUserId`

**Type**: `string`

**Description**:

Unique identifier for this user for tracking usage analytics
###  `_loggerLevel` 

**Key**: `_loggerLevel`

**Default**: `warn`

**Type**: `string`

**Enum**:  `verbose`  `debug`  `info`  `warn`  `error` 

**Description**:

Set the level for the logger
###  `beautifyEntireFileOnSave` 

**Key**: `beautifyEntireFileOnSave`

**Default**: `true`

**Type**: `boolean`

**Description**:

When beautifying on save, use the entire file, even if there is selected text in the editor
###  `muteUnsupportedLanguageErrors` 

**Key**: `muteUnsupportedLanguageErrors`

**Type**: `boolean`

**Description**:

Do not show &quot;Unsupported Language&quot; errors when they occur
###  `muteAllErrors` 

**Key**: `muteAllErrors`

**Type**: `boolean`

**Description**:

Do not show any/all errors when they occur

## Language Options

Supported options for each language.

---

###  C# - Config Path 

**Key**: `cs_configPath`

**Type**: `string`

**Description**:

Path to uncrustify config file. i.e. uncrustify.cfg (Supported by Uncrustify)
###  C - Config Path 

**Key**: `c_configPath`

**Type**: `string`

**Description**:

Path to uncrustify config file. i.e. uncrustify.cfg (Supported by Uncrustify)
###  C++ - Config Path 

**Key**: `cpp_configPath`

**Type**: `string`

**Description**:

Path to uncrustify config file. i.e. uncrustify.cfg (Supported by Uncrustify)
###  CSS - Indent size 

**Key**: `css_indent_size`

**Default**: `4`

**Type**: `integer`

**Description**:

Indentation size/length (Supported by JS Beautify, Pretty Diff)
###  CSS - Indent char 

**Key**: `css_indent_char`

**Default**: ` `

**Type**: `string`

**Description**:

Indentation character (Supported by JS Beautify, Pretty Diff)
###  CSS - Selector separator newline 

**Key**: `css_selector_separator_newline`

**Type**: `boolean`

**Description**:

Add a newline between multiple selectors (Supported by JS Beautify)
###  CSS - Newline between rules 

**Key**: `css_newline_between_rules`

**Type**: `boolean`

**Description**:

Add a newline between CSS rules (Supported by JS Beautify)
###  CSS - Preserve newlines 

**Key**: `css_preserve_newlines`

**Type**: `boolean`

**Description**:

Retain empty lines. Consecutive empty lines will be converted to a single empty line. (Supported by JS Beautify, Pretty Diff)
###  D - Config Path 

**Key**: `d_configPath`

**Type**: `string`

**Description**:

Path to uncrustify config file. i.e. uncrustify.cfg (Supported by Uncrustify)
###  Fortran - Emacs path 

**Key**: `fortran_emacs_path`

**Type**: `string`

**Description**:

Path to the &#x60;emacs&#x60; executable (Supported by Fortran Beautifier)
###  Fortran - Emacs script path 

**Key**: `fortran_emacs_script_path`

**Type**: `string`

**Description**:

Path to the emacs script (Supported by Fortran Beautifier)
###  HTML - Indent inner html 

**Key**: `html_indent_inner_html`

**Type**: `boolean`

**Description**:

Indent &lt;head&gt; and &lt;body&gt; sections. (Supported by JS Beautify)
###  HTML - Indent size 

**Key**: `html_indent_size`

**Default**: `4`

**Type**: `integer`

**Description**:

Indentation size/length (Supported by JS Beautify, Pretty Diff)
###  HTML - Indent char 

**Key**: `html_indent_char`

**Default**: ` `

**Type**: `string`

**Description**:

Indentation character (Supported by JS Beautify, Pretty Diff)
###  HTML - Brace style 

**Key**: `html_brace_style`

**Default**: `collapse`

**Type**: `string`

**Enum**:  `collapse`  `expand`  `end-expand`  `none` 

**Description**:

[collapse|expand|end-expand|none] (Supported by JS Beautify)
###  HTML - Indent scripts 

**Key**: `html_indent_scripts`

**Default**: `normal`

**Type**: `string`

**Enum**:  `keep`  `separate`  `normal` 

**Description**:

[keep|separate|normal] (Supported by JS Beautify)
###  HTML - Wrap line length 

**Key**: `html_wrap_line_length`

**Default**: `250`

**Type**: `integer`

**Description**:

Maximum characters per line (0 disables) (Supported by JS Beautify)
###  HTML - Wrap attributes 

**Key**: `html_wrap_attributes`

**Default**: `auto`

**Type**: `string`

**Enum**:  `auto`  `force` 

**Description**:

Wrap attributes to new lines [auto|force] (Supported by JS Beautify)
###  HTML - Wrap attributes indent size 

**Key**: `html_wrap_attributes_indent_size`

**Default**: `4`

**Type**: `integer`

**Description**:

Indent wrapped attributes to after N characters (Supported by JS Beautify)
###  HTML - Preserve newlines 

**Key**: `html_preserve_newlines`

**Default**: `true`

**Type**: `boolean`

**Description**:

Preserve line-breaks (Supported by JS Beautify, Pretty Diff)
###  HTML - Max preserve newlines 

**Key**: `html_max_preserve_newlines`

**Default**: `10`

**Type**: `integer`

**Description**:

Number of line-breaks to be preserved in one chunk (Supported by JS Beautify)
###  HTML - Unformatted 

**Key**: `html_unformatted`

**Default**: `a,sub,sup,b,i,u`

**Type**: `array`

**Description**:

List of tags (defaults to inline) that should not be reformatted (Supported by JS Beautify)
###  HTML - End with newline 

**Key**: `html_end_with_newline`

**Type**: `boolean`

**Description**:

End output with newline (Supported by JS Beautify)
###  Java - Config Path 

**Key**: `java_configPath`

**Type**: `string`

**Description**:

Path to uncrustify config file. i.e. uncrustify.cfg (Supported by Uncrustify)
###  JavaScript - Indent size 

**Key**: `js_indent_size`

**Default**: `4`

**Type**: `integer`

**Description**:

Indentation size/length (Supported by JS Beautify, Pretty Diff)
###  JavaScript - Indent char 

**Key**: `js_indent_char`

**Default**: ` `

**Type**: `string`

**Description**:

Indentation character (Supported by JS Beautify, Pretty Diff)
###  JavaScript - Indent level 

**Key**: `js_indent_level`

**Type**: `integer`

**Description**:

Initial indentation level (Supported by JS Beautify)
###  JavaScript - Indent with tabs 

**Key**: `js_indent_with_tabs`

**Type**: `boolean`

**Description**:

Indentation uses tabs, overrides &#x60;Indent Size&#x60; and &#x60;Indent Char&#x60; (Supported by JS Beautify)
###  JavaScript - Preserve newlines 

**Key**: `js_preserve_newlines`

**Default**: `true`

**Type**: `boolean`

**Description**:

Preserve line-breaks (Supported by JS Beautify, Pretty Diff)
###  JavaScript - Max preserve newlines 

**Key**: `js_max_preserve_newlines`

**Default**: `10`

**Type**: `integer`

**Description**:

Number of line-breaks to be preserved in one chunk (Supported by JS Beautify)
###  JavaScript - Space in paren 

**Key**: `js_space_in_paren`

**Type**: `boolean`

**Description**:

Add padding spaces within paren, ie. f( a, b ) (Supported by JS Beautify)
###  JavaScript - Jslint happy 

**Key**: `js_jslint_happy`

**Type**: `boolean`

**Description**:

Enable jslint-stricter mode (Supported by JS Beautify)
###  JavaScript - Space after anon function 

**Key**: `js_space_after_anon_function`

**Type**: `boolean`

**Description**:

Add a space before an anonymous function&#x27;s parens, ie. function () (Supported by JS Beautify)
###  JavaScript - Brace style 

**Key**: `js_brace_style`

**Default**: `collapse`

**Type**: `string`

**Enum**:  `collapse`  `expand`  `end-expand`  `none` 

**Description**:

[collapse|expand|end-expand|none] (Supported by JS Beautify)
###  JavaScript - Break chained methods 

**Key**: `js_break_chained_methods`

**Type**: `boolean`

**Description**:

Break chained method calls across subsequent lines (Supported by JS Beautify)
###  JavaScript - Keep array indentation 

**Key**: `js_keep_array_indentation`

**Type**: `boolean`

**Description**:

Preserve array indentation (Supported by JS Beautify)
###  JavaScript - Keep function indentation 

**Key**: `js_keep_function_indentation`

**Type**: `boolean`

**Description**:

 (Supported by JS Beautify)
###  JavaScript - Space before conditional 

**Key**: `js_space_before_conditional`

**Default**: `true`

**Type**: `boolean`

**Description**:

 (Supported by JS Beautify)
###  JavaScript - Eval code 

**Key**: `js_eval_code`

**Type**: `boolean`

**Description**:

 (Supported by JS Beautify)
###  JavaScript - Unescape strings 

**Key**: `js_unescape_strings`

**Type**: `boolean`

**Description**:

Decode printable characters encoded in xNN notation (Supported by JS Beautify)
###  JavaScript - Wrap line length 

**Key**: `js_wrap_line_length`

**Type**: `integer`

**Description**:

Wrap lines at next opportunity after N characters (Supported by JS Beautify)
###  JavaScript - End with newline 

**Key**: `js_end_with_newline`

**Type**: `boolean`

**Description**:

End output with newline (Supported by JS Beautify)
###  Objective-C - Config Path 

**Key**: `objectivec_configPath`

**Type**: `string`

**Description**:

Path to uncrustify config file. i.e. uncrustify.cfg (Supported by Uncrustify)
###  Pawn - Config Path 

**Key**: `pawn_configPath`

**Type**: `string`

**Description**:

Path to uncrustify config file. i.e. uncrustify.cfg (Supported by Uncrustify)
###  Perl - Perltidy profile 

**Key**: `perl_perltidy_profile`

**Type**: `string`

**Description**:

Specify a configuration file which will override the default name of .perltidyrc (Supported by Perltidy)
###  PHP - PHP-CS-Fixer Path 

**Key**: `php_cs_fixer_path`

**Type**: `string`

**Description**:

Path to the &#x60;php-cs-fixer&#x60; CLI executable (Supported by PHP-CS-Fixer)
###  PHP - Fixers 

**Key**: `php_fixers`

**Type**: `string`

**Description**:

Add fixer(s). i.e. linefeed,-short_tag,indentation (Supported by PHP-CS-Fixer)
###  PHP - Level 

**Key**: `php_level`

**Type**: `string`

**Description**:

By default, all PSR-2 fixers and some additional ones are run. (Supported by PHP-CS-Fixer)
###  Python - Max line length 

**Key**: `python_max_line_length`

**Default**: `79`

**Type**: `integer`

**Description**:

set maximum allowed line length (Supported by autopep8)
###  Python - Indent size 

**Key**: `python_indent_size`

**Default**: `4`

**Type**: `integer`

**Description**:

Indentation size/length (Supported by autopep8)
###  Python - Ignore 

**Key**: `python_ignore`

**Default**: `E24`

**Type**: `array`

**Description**:

do not fix these errors/warnings (Supported by autopep8)
###  Rust - Rustfmt path 

**Key**: `rust_rustfmt_path`

**Type**: `string`

**Description**:

Path to rustfmt program (Supported by rustfmt)
###  SQL - Indent size 

**Key**: `sql_indent_size`

**Default**: `4`

**Type**: `integer`

**Description**:

Indentation size/length (Supported by sqlformat)
###  SQL - Keywords 

**Key**: `sql_keywords`

**Default**: `upper`

**Type**: `string`

**Enum**:  `lower`  `upper`  `capitalize` 

**Description**:

Change case of keywords (Supported by sqlformat)
###  SQL - Identifiers 

**Key**: `sql_identifiers`

**Default**: `lower`

**Type**: `string`

**Enum**:  `lower`  `upper`  `capitalize` 

**Description**:

Change case of identifiers (Supported by sqlformat)
###  Vala - Config Path 

**Key**: `vala_configPath`

**Type**: `string`

**Description**:

Path to uncrustify config file. i.e. uncrustify.cfg (Supported by Uncrustify)
###  Language Config - C# - Disable Beautifying Language 

**Key**: `language_cs_disabled`

**Type**: `boolean`

**Description**:

Disable C# Beautification
###  Language Config - C# - Default Beautifier 

**Key**: `language_cs_default_beautifier`

**Default**: `Uncrustify`

**Type**: `string`

**Enum**:  `Uncrustify` 

**Description**:

Default Beautifier to be used for C#
###  Language Config - C# - Beautify On Save 

**Key**: `language_cs_beautify_on_save`

**Type**: `boolean`

**Description**:

Automatically beautify C# files on save
###  Language Config - C - Disable Beautifying Language 

**Key**: `language_c_disabled`

**Type**: `boolean`

**Description**:

Disable C Beautification
###  Language Config - C - Default Beautifier 

**Key**: `language_c_default_beautifier`

**Default**: `Uncrustify`

**Type**: `string`

**Enum**:  `Uncrustify` 

**Description**:

Default Beautifier to be used for C
###  Language Config - C - Beautify On Save 

**Key**: `language_c_beautify_on_save`

**Type**: `boolean`

**Description**:

Automatically beautify C files on save
###  Language Config - CoffeeScript - Disable Beautifying Language 

**Key**: `language_coffeescript_disabled`

**Type**: `boolean`

**Description**:

Disable CoffeeScript Beautification
###  Language Config - CoffeeScript - Default Beautifier 

**Key**: `language_coffeescript_default_beautifier`

**Default**: `coffee-fmt`

**Type**: `string`

**Enum**:  `Coffee Formatter`  `coffee-fmt` 

**Description**:

Default Beautifier to be used for CoffeeScript
###  Language Config - CoffeeScript - Beautify On Save 

**Key**: `language_coffeescript_beautify_on_save`

**Type**: `boolean`

**Description**:

Automatically beautify CoffeeScript files on save
###  Language Config - C++ - Disable Beautifying Language 

**Key**: `language_cpp_disabled`

**Type**: `boolean`

**Description**:

Disable C++ Beautification
###  Language Config - C++ - Default Beautifier 

**Key**: `language_cpp_default_beautifier`

**Default**: `Uncrustify`

**Type**: `string`

**Enum**:  `Uncrustify` 

**Description**:

Default Beautifier to be used for C++
###  Language Config - C++ - Beautify On Save 

**Key**: `language_cpp_beautify_on_save`

**Type**: `boolean`

**Description**:

Automatically beautify C++ files on save
###  Language Config - CSS - Disable Beautifying Language 

**Key**: `language_css_disabled`

**Type**: `boolean`

**Description**:

Disable CSS Beautification
###  Language Config - CSS - Default Beautifier 

**Key**: `language_css_default_beautifier`

**Default**: `JS Beautify`

**Type**: `string`

**Enum**:  `CSScomb`  `JS Beautify`  `Pretty Diff` 

**Description**:

Default Beautifier to be used for CSS
###  Language Config - CSS - Beautify On Save 

**Key**: `language_css_beautify_on_save`

**Type**: `boolean`

**Description**:

Automatically beautify CSS files on save
###  Language Config - CSV - Disable Beautifying Language 

**Key**: `language_csv_disabled`

**Type**: `boolean`

**Description**:

Disable CSV Beautification
###  Language Config - CSV - Default Beautifier 

**Key**: `language_csv_default_beautifier`

**Default**: `Pretty Diff`

**Type**: `string`

**Enum**:  `Pretty Diff` 

**Description**:

Default Beautifier to be used for CSV
###  Language Config - CSV - Beautify On Save 

**Key**: `language_csv_beautify_on_save`

**Type**: `boolean`

**Description**:

Automatically beautify CSV files on save
###  Language Config - D - Disable Beautifying Language 

**Key**: `language_d_disabled`

**Type**: `boolean`

**Description**:

Disable D Beautification
###  Language Config - D - Default Beautifier 

**Key**: `language_d_default_beautifier`

**Default**: `Uncrustify`

**Type**: `string`

**Enum**:  `Uncrustify` 

**Description**:

Default Beautifier to be used for D
###  Language Config - D - Beautify On Save 

**Key**: `language_d_beautify_on_save`

**Type**: `boolean`

**Description**:

Automatically beautify D files on save
###  Language Config - EJS - Disable Beautifying Language 

**Key**: `language_ejs_disabled`

**Type**: `boolean`

**Description**:

Disable EJS Beautification
###  Language Config - EJS - Default Beautifier 

**Key**: `language_ejs_default_beautifier`

**Default**: `Pretty Diff`

**Type**: `string`

**Enum**:  `Pretty Diff` 

**Description**:

Default Beautifier to be used for EJS
###  Language Config - EJS - Beautify On Save 

**Key**: `language_ejs_beautify_on_save`

**Type**: `boolean`

**Description**:

Automatically beautify EJS files on save
###  Language Config - ERB - Disable Beautifying Language 

**Key**: `language_erb_disabled`

**Type**: `boolean`

**Description**:

Disable ERB Beautification
###  Language Config - ERB - Default Beautifier 

**Key**: `language_erb_default_beautifier`

**Default**: `HTML Beautifier`

**Type**: `string`

**Enum**:  `HTML Beautifier`  `Pretty Diff` 

**Description**:

Default Beautifier to be used for ERB
###  Language Config - ERB - Beautify On Save 

**Key**: `language_erb_beautify_on_save`

**Type**: `boolean`

**Description**:

Automatically beautify ERB files on save
###  Language Config - Go - Disable Beautifying Language 

**Key**: `language_go_disabled`

**Type**: `boolean`

**Description**:

Disable Go Beautification
###  Language Config - Go - Default Beautifier 

**Key**: `language_go_default_beautifier`

**Default**: `gofmt`

**Type**: `string`

**Enum**:  `gofmt` 

**Description**:

Default Beautifier to be used for Go
###  Language Config - Go - Beautify On Save 

**Key**: `language_go_beautify_on_save`

**Type**: `boolean`

**Description**:

Automatically beautify Go files on save
###  Language Config - Fortran - Disable Beautifying Language 

**Key**: `language_fortran_disabled`

**Type**: `boolean`

**Description**:

Disable Fortran Beautification
###  Language Config - Fortran - Default Beautifier 

**Key**: `language_fortran_default_beautifier`

**Default**: `Fortran Beautifier`

**Type**: `string`

**Enum**:  `Fortran Beautifier` 

**Description**:

Default Beautifier to be used for Fortran
###  Language Config - Fortran - Beautify On Save 

**Key**: `language_fortran_beautify_on_save`

**Type**: `boolean`

**Description**:

Automatically beautify Fortran files on save
###  Language Config - Handlebars - Disable Beautifying Language 

**Key**: `language_handlebars_disabled`

**Type**: `boolean`

**Description**:

Disable Handlebars Beautification
###  Language Config - Handlebars - Default Beautifier 

**Key**: `language_handlebars_default_beautifier`

**Default**: `JS Beautify`

**Type**: `string`

**Enum**:  `JS Beautify` 

**Description**:

Default Beautifier to be used for Handlebars
###  Language Config - Handlebars - Beautify On Save 

**Key**: `language_handlebars_beautify_on_save`

**Type**: `boolean`

**Description**:

Automatically beautify Handlebars files on save
###  Language Config - HTML - Disable Beautifying Language 

**Key**: `language_html_disabled`

**Type**: `boolean`

**Description**:

Disable HTML Beautification
###  Language Config - HTML - Default Beautifier 

**Key**: `language_html_default_beautifier`

**Default**: `JS Beautify`

**Type**: `string`

**Enum**:  `JS Beautify`  `Pretty Diff` 

**Description**:

Default Beautifier to be used for HTML
###  Language Config - HTML - Beautify On Save 

**Key**: `language_html_beautify_on_save`

**Type**: `boolean`

**Description**:

Automatically beautify HTML files on save
###  Language Config - Java - Disable Beautifying Language 

**Key**: `language_java_disabled`

**Type**: `boolean`

**Description**:

Disable Java Beautification
###  Language Config - Java - Default Beautifier 

**Key**: `language_java_default_beautifier`

**Default**: `Uncrustify`

**Type**: `string`

**Enum**:  `Uncrustify` 

**Description**:

Default Beautifier to be used for Java
###  Language Config - Java - Beautify On Save 

**Key**: `language_java_beautify_on_save`

**Type**: `boolean`

**Description**:

Automatically beautify Java files on save
###  Language Config - JavaScript - Disable Beautifying Language 

**Key**: `language_js_disabled`

**Type**: `boolean`

**Description**:

Disable JavaScript Beautification
###  Language Config - JavaScript - Default Beautifier 

**Key**: `language_js_default_beautifier`

**Default**: `JS Beautify`

**Type**: `string`

**Enum**:  `JS Beautify`  `Pretty Diff` 

**Description**:

Default Beautifier to be used for JavaScript
###  Language Config - JavaScript - Beautify On Save 

**Key**: `language_js_beautify_on_save`

**Type**: `boolean`

**Description**:

Automatically beautify JavaScript files on save
###  Language Config - JSON - Disable Beautifying Language 

**Key**: `language_json_disabled`

**Type**: `boolean`

**Description**:

Disable JSON Beautification
###  Language Config - JSON - Default Beautifier 

**Key**: `language_json_default_beautifier`

**Default**: `JS Beautify`

**Type**: `string`

**Enum**:  `JS Beautify`  `Pretty Diff` 

**Description**:

Default Beautifier to be used for JSON
###  Language Config - JSON - Beautify On Save 

**Key**: `language_json_beautify_on_save`

**Type**: `boolean`

**Description**:

Automatically beautify JSON files on save
###  Language Config - JSX - Disable Beautifying Language 

**Key**: `language_jsx_disabled`

**Type**: `boolean`

**Description**:

Disable JSX Beautification
###  Language Config - JSX - Default Beautifier 

**Key**: `language_jsx_default_beautifier`

**Default**: `Pretty Diff`

**Type**: `string`

**Enum**:  `Pretty Diff` 

**Description**:

Default Beautifier to be used for JSX
###  Language Config - JSX - Beautify On Save 

**Key**: `language_jsx_beautify_on_save`

**Type**: `boolean`

**Description**:

Automatically beautify JSX files on save
###  Language Config - LESS - Disable Beautifying Language 

**Key**: `language_less_disabled`

**Type**: `boolean`

**Description**:

Disable LESS Beautification
###  Language Config - LESS - Default Beautifier 

**Key**: `language_less_default_beautifier`

**Default**: `Pretty Diff`

**Type**: `string`

**Enum**:  `CSScomb`  `Pretty Diff` 

**Description**:

Default Beautifier to be used for LESS
###  Language Config - LESS - Beautify On Save 

**Key**: `language_less_beautify_on_save`

**Type**: `boolean`

**Description**:

Automatically beautify LESS files on save
###  Language Config - Markdown - Disable Beautifying Language 

**Key**: `language_markdown_disabled`

**Type**: `boolean`

**Description**:

Disable Markdown Beautification
###  Language Config - Markdown - Default Beautifier 

**Key**: `language_markdown_default_beautifier`

**Default**: `Tidy Markdown`

**Type**: `string`

**Enum**:  `Tidy Markdown` 

**Description**:

Default Beautifier to be used for Markdown
###  Language Config - Markdown - Beautify On Save 

**Key**: `language_markdown_beautify_on_save`

**Type**: `boolean`

**Description**:

Automatically beautify Markdown files on save
###  Language Config - Marko - Disable Beautifying Language 

**Key**: `language_marko_disabled`

**Type**: `boolean`

**Description**:

Disable Marko Beautification
###  Language Config - Marko - Default Beautifier 

**Key**: `language_marko_default_beautifier`

**Default**: `JS Beautify`

**Type**: `string`

**Enum**:  `JS Beautify` 

**Description**:

Default Beautifier to be used for Marko
###  Language Config - Marko - Beautify On Save 

**Key**: `language_marko_beautify_on_save`

**Type**: `boolean`

**Description**:

Automatically beautify Marko files on save
###  Language Config - Mustache - Disable Beautifying Language 

**Key**: `language_mustache_disabled`

**Type**: `boolean`

**Description**:

Disable Mustache Beautification
###  Language Config - Mustache - Default Beautifier 

**Key**: `language_mustache_default_beautifier`

**Default**: `JS Beautify`

**Type**: `string`

**Enum**:  `JS Beautify` 

**Description**:

Default Beautifier to be used for Mustache
###  Language Config - Mustache - Beautify On Save 

**Key**: `language_mustache_beautify_on_save`

**Type**: `boolean`

**Description**:

Automatically beautify Mustache files on save
###  Language Config - Objective-C - Disable Beautifying Language 

**Key**: `language_objectivec_disabled`

**Type**: `boolean`

**Description**:

Disable Objective-C Beautification
###  Language Config - Objective-C - Default Beautifier 

**Key**: `language_objectivec_default_beautifier`

**Default**: `Uncrustify`

**Type**: `string`

**Enum**:  `Uncrustify` 

**Description**:

Default Beautifier to be used for Objective-C
###  Language Config - Objective-C - Beautify On Save 

**Key**: `language_objectivec_beautify_on_save`

**Type**: `boolean`

**Description**:

Automatically beautify Objective-C files on save
###  Language Config - Pawn - Disable Beautifying Language 

**Key**: `language_pawn_disabled`

**Type**: `boolean`

**Description**:

Disable Pawn Beautification
###  Language Config - Pawn - Default Beautifier 

**Key**: `language_pawn_default_beautifier`

**Default**: `Uncrustify`

**Type**: `string`

**Enum**:  `Uncrustify` 

**Description**:

Default Beautifier to be used for Pawn
###  Language Config - Pawn - Beautify On Save 

**Key**: `language_pawn_beautify_on_save`

**Type**: `boolean`

**Description**:

Automatically beautify Pawn files on save
###  Language Config - Perl - Disable Beautifying Language 

**Key**: `language_perl_disabled`

**Type**: `boolean`

**Description**:

Disable Perl Beautification
###  Language Config - Perl - Default Beautifier 

**Key**: `language_perl_default_beautifier`

**Default**: `Perltidy`

**Type**: `string`

**Enum**:  `Perltidy` 

**Description**:

Default Beautifier to be used for Perl
###  Language Config - Perl - Beautify On Save 

**Key**: `language_perl_beautify_on_save`

**Type**: `boolean`

**Description**:

Automatically beautify Perl files on save
###  Language Config - PHP - Disable Beautifying Language 

**Key**: `language_php_disabled`

**Type**: `boolean`

**Description**:

Disable PHP Beautification
###  Language Config - PHP - Default Beautifier 

**Key**: `language_php_default_beautifier`

**Default**: `PHP-CS-Fixer`

**Type**: `string`

**Enum**:  `PHP-CS-Fixer` 

**Description**:

Default Beautifier to be used for PHP
###  Language Config - PHP - Beautify On Save 

**Key**: `language_php_beautify_on_save`

**Type**: `boolean`

**Description**:

Automatically beautify PHP files on save
###  Language Config - Python - Disable Beautifying Language 

**Key**: `language_python_disabled`

**Type**: `boolean`

**Description**:

Disable Python Beautification
###  Language Config - Python - Default Beautifier 

**Key**: `language_python_default_beautifier`

**Default**: `autopep8`

**Type**: `string`

**Enum**:  `autopep8` 

**Description**:

Default Beautifier to be used for Python
###  Language Config - Python - Beautify On Save 

**Key**: `language_python_beautify_on_save`

**Type**: `boolean`

**Description**:

Automatically beautify Python files on save
###  Language Config - Ruby - Disable Beautifying Language 

**Key**: `language_ruby_disabled`

**Type**: `boolean`

**Description**:

Disable Ruby Beautification
###  Language Config - Ruby - Default Beautifier 

**Key**: `language_ruby_default_beautifier`

**Default**: `Rubocop`

**Type**: `string`

**Enum**:  `Rubocop`  `Ruby Beautify` 

**Description**:

Default Beautifier to be used for Ruby
###  Language Config - Ruby - Beautify On Save 

**Key**: `language_ruby_beautify_on_save`

**Type**: `boolean`

**Description**:

Automatically beautify Ruby files on save
###  Language Config - Rust - Disable Beautifying Language 

**Key**: `language_rust_disabled`

**Type**: `boolean`

**Description**:

Disable Rust Beautification
###  Language Config - Rust - Default Beautifier 

**Key**: `language_rust_default_beautifier`

**Default**: `rustfmt`

**Type**: `string`

**Enum**:  `rustfmt` 

**Description**:

Default Beautifier to be used for Rust
###  Language Config - Rust - Beautify On Save 

**Key**: `language_rust_beautify_on_save`

**Type**: `boolean`

**Description**:

Automatically beautify Rust files on save
###  Language Config - Sass - Disable Beautifying Language 

**Key**: `language_sass_disabled`

**Type**: `boolean`

**Description**:

Disable Sass Beautification
###  Language Config - Sass - Default Beautifier 

**Key**: `language_sass_default_beautifier`

**Default**: `Pretty Diff`

**Type**: `string`

**Enum**:  `CSScomb`  `Pretty Diff` 

**Description**:

Default Beautifier to be used for Sass
###  Language Config - Sass - Beautify On Save 

**Key**: `language_sass_beautify_on_save`

**Type**: `boolean`

**Description**:

Automatically beautify Sass files on save
###  Language Config - SCSS - Disable Beautifying Language 

**Key**: `language_scss_disabled`

**Type**: `boolean`

**Description**:

Disable SCSS Beautification
###  Language Config - SCSS - Default Beautifier 

**Key**: `language_scss_default_beautifier`

**Default**: `Pretty Diff`

**Type**: `string`

**Enum**:  `CSScomb`  `Pretty Diff` 

**Description**:

Default Beautifier to be used for SCSS
###  Language Config - SCSS - Beautify On Save 

**Key**: `language_scss_beautify_on_save`

**Type**: `boolean`

**Description**:

Automatically beautify SCSS files on save
###  Language Config - Spacebars - Disable Beautifying Language 

**Key**: `language_spacebars_disabled`

**Type**: `boolean`

**Description**:

Disable Spacebars Beautification
###  Language Config - Spacebars - Default Beautifier 

**Key**: `language_spacebars_default_beautifier`

**Default**: `Pretty Diff`

**Type**: `string`

**Enum**:  `Pretty Diff` 

**Description**:

Default Beautifier to be used for Spacebars
###  Language Config - Spacebars - Beautify On Save 

**Key**: `language_spacebars_beautify_on_save`

**Type**: `boolean`

**Description**:

Automatically beautify Spacebars files on save
###  Language Config - SQL - Disable Beautifying Language 

**Key**: `language_sql_disabled`

**Type**: `boolean`

**Description**:

Disable SQL Beautification
###  Language Config - SQL - Default Beautifier 

**Key**: `language_sql_default_beautifier`

**Default**: `sqlformat`

**Type**: `string`

**Enum**:  `sqlformat` 

**Description**:

Default Beautifier to be used for SQL
###  Language Config - SQL - Beautify On Save 

**Key**: `language_sql_beautify_on_save`

**Type**: `boolean`

**Description**:

Automatically beautify SQL files on save
###  Language Config - Swig - Disable Beautifying Language 

**Key**: `language_swig_disabled`

**Type**: `boolean`

**Description**:

Disable Swig Beautification
###  Language Config - Swig - Default Beautifier 

**Key**: `language_swig_default_beautifier`

**Default**: `Pretty Diff`

**Type**: `string`

**Enum**:  `Pretty Diff` 

**Description**:

Default Beautifier to be used for Swig
###  Language Config - Swig - Beautify On Save 

**Key**: `language_swig_beautify_on_save`

**Type**: `boolean`

**Description**:

Automatically beautify Swig files on save
###  Language Config - TSS - Disable Beautifying Language 

**Key**: `language_tss_disabled`

**Type**: `boolean`

**Description**:

Disable TSS Beautification
###  Language Config - TSS - Default Beautifier 

**Key**: `language_tss_default_beautifier`

**Default**: `Pretty Diff`

**Type**: `string`

**Enum**:  `Pretty Diff` 

**Description**:

Default Beautifier to be used for TSS
###  Language Config - TSS - Beautify On Save 

**Key**: `language_tss_beautify_on_save`

**Type**: `boolean`

**Description**:

Automatically beautify TSS files on save
###  Language Config - TypeScript - Disable Beautifying Language 

**Key**: `language_typescript_disabled`

**Type**: `boolean`

**Description**:

Disable TypeScript Beautification
###  Language Config - TypeScript - Default Beautifier 

**Key**: `language_typescript_default_beautifier`

**Default**: `TypeScript Formatter`

**Type**: `string`

**Enum**:  `TypeScript Formatter` 

**Description**:

Default Beautifier to be used for TypeScript
###  Language Config - TypeScript - Beautify On Save 

**Key**: `language_typescript_beautify_on_save`

**Type**: `boolean`

**Description**:

Automatically beautify TypeScript files on save
###  Language Config - Vala - Disable Beautifying Language 

**Key**: `language_vala_disabled`

**Type**: `boolean`

**Description**:

Disable Vala Beautification
###  Language Config - Vala - Default Beautifier 

**Key**: `language_vala_default_beautifier`

**Default**: `Uncrustify`

**Type**: `string`

**Enum**:  `Uncrustify` 

**Description**:

Default Beautifier to be used for Vala
###  Language Config - Vala - Beautify On Save 

**Key**: `language_vala_beautify_on_save`

**Type**: `boolean`

**Description**:

Automatically beautify Vala files on save
###  Language Config - Visualforce - Disable Beautifying Language 

**Key**: `language_visualforce_disabled`

**Type**: `boolean`

**Description**:

Disable Visualforce Beautification
###  Language Config - Visualforce - Default Beautifier 

**Key**: `language_visualforce_default_beautifier`

**Default**: `Pretty Diff`

**Type**: `string`

**Enum**:  `Pretty Diff` 

**Description**:

Default Beautifier to be used for Visualforce
###  Language Config - Visualforce - Beautify On Save 

**Key**: `language_visualforce_beautify_on_save`

**Type**: `boolean`

**Description**:

Automatically beautify Visualforce files on save
###  Language Config - XML - Disable Beautifying Language 

**Key**: `language_xml_disabled`

**Type**: `boolean`

**Description**:

Disable XML Beautification
###  Language Config - XML - Default Beautifier 

**Key**: `language_xml_default_beautifier`

**Default**: `Pretty Diff`

**Type**: `string`

**Enum**:  `Pretty Diff` 

**Description**:

Default Beautifier to be used for XML
###  Language Config - XML - Beautify On Save 

**Key**: `language_xml_beautify_on_save`

**Type**: `boolean`

**Description**:

Automatically beautify XML files on save

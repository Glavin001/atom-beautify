# Options

Automatically generated documentation for Atom Beautify's options.

## Package Options

Configurable options for Atom Beautify.

---

####  [`analytics`](#analytics) 

**Key**: `analytics`

**Default**: `true`

**Type**: `boolean`

**Description**:

There is [Segment.io](https://segment.io/) which forwards data to [Google Analytics](http://www.google.com/analytics/) to track what languages are being used the most, as well as other stats. Everything is anonymized and no personal information, such as source code, is sent. See https://github.com/Glavin001/atom-beautify/issues/47 for more details.

####  [`_analyticsUserId`](#_analyticsuserid) 

**Key**: `_analyticsUserId`

**Type**: `string`

**Description**:

Unique identifier for this user for tracking usage analytics

####  [`_loggerLevel`](#_loggerlevel) 

**Key**: `_loggerLevel`

**Default**: `warn`

**Type**: `string`

**Enum**:  `verbose`  `debug`  `info`  `warn`  `error` 

**Description**:

Set the level for the logger

####  [`beautifyEntireFileOnSave`](#beautifyentirefileonsave) 

**Key**: `beautifyEntireFileOnSave`

**Default**: `true`

**Type**: `boolean`

**Description**:

When beautifying on save, use the entire file, even if there is selected text in the editor

####  [`muteUnsupportedLanguageErrors`](#muteunsupportedlanguageerrors) 

**Key**: `muteUnsupportedLanguageErrors`

**Type**: `boolean`

**Description**:

Do not show &quot;Unsupported Language&quot; errors when they occur

####  [`muteAllErrors`](#muteallerrors) 

**Key**: `muteAllErrors`

**Type**: `boolean`

**Description**:

Do not show any/all errors when they occur


## Language Options

Supported options for each language.

---

####  [C# - Config Path](#c---config-path) 

**Key**: `cs_configPath`

**Type**: `string`

**Supported Beautifiers**:  [`Uncrustify`](#uncrustify) 

**Description**:

Path to uncrustify config file. i.e. uncrustify.cfg (Supported by Uncrustify)

####  [C - Config Path](#c---config-path) 

**Key**: `c_configPath`

**Type**: `string`

**Supported Beautifiers**:  [`Uncrustify`](#uncrustify) 

**Description**:

Path to uncrustify config file. i.e. uncrustify.cfg (Supported by Uncrustify)

####  [C++ - Config Path](#c---config-path) 

**Key**: `cpp_configPath`

**Type**: `string`

**Supported Beautifiers**:  [`Uncrustify`](#uncrustify) 

**Description**:

Path to uncrustify config file. i.e. uncrustify.cfg (Supported by Uncrustify)

####  [CSS - Indent size](#css---indent-size) 

**Key**: `css_indent_size`

**Default**: `4`

**Type**: `integer`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Indentation size/length (Supported by JS Beautify, Pretty Diff)

####  [CSS - Indent char](#css---indent-char) 

**Key**: `css_indent_char`

**Default**: ` `

**Type**: `string`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Indentation character (Supported by JS Beautify, Pretty Diff)

####  [CSS - Selector separator newline](#css---selector-separator-newline) 

**Key**: `css_selector_separator_newline`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

Add a newline between multiple selectors (Supported by JS Beautify)

####  [CSS - Newline between rules](#css---newline-between-rules) 

**Key**: `css_newline_between_rules`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Add a newline between CSS rules (Supported by JS Beautify, Pretty Diff)

####  [CSS - Preserve newlines](#css---preserve-newlines) 

**Key**: `css_preserve_newlines`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Retain empty lines. Consecutive empty lines will be converted to a single empty line. (Supported by JS Beautify, Pretty Diff)

####  [CSS - Wrap line length](#css---wrap-line-length) 

**Key**: `css_wrap_line_length`

**Type**: `integer`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Maximum amount of characters per line (0 = disable) (Supported by JS Beautify, Pretty Diff)

####  [CSS - Indent comments](#css---indent-comments) 

**Key**: `css_indent_comments`

**Default**: `true`

**Type**: `boolean`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Determines whether comments should be indented. (Supported by Pretty Diff)

####  [CSS - Force indentation](#css---force-indentation) 

**Key**: `css_force_indentation`

**Type**: `boolean`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

if indentation should be forcefully applied tomarkup even if it disruptively adds unintended whitespace to the documents rendered output (Supported by Pretty Diff)

####  [CSS - Convert quotes](#css---convert-quotes) 

**Key**: `css_convert_quotes`

**Default**: `none`

**Type**: `string`

**Enum**:  `none`  `double`  `single` 

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Convert the quote characters delimiting strings from either double or single quotes to the other. (Supported by Pretty Diff)

####  [CSS - Align assignments](#css---align-assignments) 

**Key**: `css_align_assignments`

**Type**: `boolean`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

If lists of assignments or properties should be vertically aligned for faster and easier reading. (Supported by Pretty Diff)

####  [D - Config Path](#d---config-path) 

**Key**: `d_configPath`

**Type**: `string`

**Supported Beautifiers**:  [`Uncrustify`](#uncrustify) 

**Description**:

Path to uncrustify config file. i.e. uncrustify.cfg (Supported by Uncrustify)

####  [Fortran - Emacs path](#fortran---emacs-path) 

**Key**: `fortran_emacs_path`

**Type**: `string`

**Supported Beautifiers**:  [`Fortran Beautifier`](#fortran-beautifier) 

**Description**:

Path to the &#x60;emacs&#x60; executable (Supported by Fortran Beautifier)

####  [Fortran - Emacs script path](#fortran---emacs-script-path) 

**Key**: `fortran_emacs_script_path`

**Type**: `string`

**Supported Beautifiers**:  [`Fortran Beautifier`](#fortran-beautifier) 

**Description**:

Path to the emacs script (Supported by Fortran Beautifier)

####  [HTML - Indent inner html](#html---indent-inner-html) 

**Key**: `html_indent_inner_html`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

Indent &lt;head&gt; and &lt;body&gt; sections. (Supported by JS Beautify)

####  [HTML - Indent size](#html---indent-size) 

**Key**: `html_indent_size`

**Default**: `4`

**Type**: `integer`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Indentation size/length (Supported by JS Beautify, Pretty Diff)

####  [HTML - Indent char](#html---indent-char) 

**Key**: `html_indent_char`

**Default**: ` `

**Type**: `string`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Indentation character (Supported by JS Beautify, Pretty Diff)

####  [HTML - Brace style](#html---brace-style) 

**Key**: `html_brace_style`

**Default**: `collapse`

**Type**: `string`

**Enum**:  `collapse`  `expand`  `end-expand`  `none` 

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

[collapse|expand|end-expand|none] (Supported by JS Beautify)

####  [HTML - Indent scripts](#html---indent-scripts) 

**Key**: `html_indent_scripts`

**Default**: `normal`

**Type**: `string`

**Enum**:  `keep`  `separate`  `normal` 

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

[keep|separate|normal] (Supported by JS Beautify)

####  [HTML - Wrap line length](#html---wrap-line-length) 

**Key**: `html_wrap_line_length`

**Default**: `250`

**Type**: `integer`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Maximum characters per line (0 disables) (Supported by JS Beautify, Pretty Diff)

####  [HTML - Wrap attributes](#html---wrap-attributes) 

**Key**: `html_wrap_attributes`

**Default**: `auto`

**Type**: `string`

**Enum**:  `auto`  `force` 

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

Wrap attributes to new lines [auto|force] (Supported by JS Beautify)

####  [HTML - Wrap attributes indent size](#html---wrap-attributes-indent-size) 

**Key**: `html_wrap_attributes_indent_size`

**Default**: `4`

**Type**: `integer`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

Indent wrapped attributes to after N characters (Supported by JS Beautify)

####  [HTML - Preserve newlines](#html---preserve-newlines) 

**Key**: `html_preserve_newlines`

**Default**: `true`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Preserve line-breaks (Supported by JS Beautify, Pretty Diff)

####  [HTML - Max preserve newlines](#html---max-preserve-newlines) 

**Key**: `html_max_preserve_newlines`

**Default**: `10`

**Type**: `integer`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

Number of line-breaks to be preserved in one chunk (Supported by JS Beautify)

####  [HTML - Unformatted](#html---unformatted) 

**Key**: `html_unformatted`

**Default**: `a,sub,sup,b,i,u`

**Type**: `array`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

List of tags (defaults to inline) that should not be reformatted (Supported by JS Beautify)

####  [HTML - End with newline](#html---end-with-newline) 

**Key**: `html_end_with_newline`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

End output with newline (Supported by JS Beautify)

####  [Java - Config Path](#java---config-path) 

**Key**: `java_configPath`

**Type**: `string`

**Supported Beautifiers**:  [`Uncrustify`](#uncrustify) 

**Description**:

Path to uncrustify config file. i.e. uncrustify.cfg (Supported by Uncrustify)

####  [JavaScript - Indent size](#javascript---indent-size) 

**Key**: `js_indent_size`

**Default**: `4`

**Type**: `integer`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Indentation size/length (Supported by JS Beautify, Pretty Diff)

####  [JavaScript - Indent char](#javascript---indent-char) 

**Key**: `js_indent_char`

**Default**: ` `

**Type**: `string`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Indentation character (Supported by JS Beautify, Pretty Diff)

####  [JavaScript - Indent level](#javascript---indent-level) 

**Key**: `js_indent_level`

**Type**: `integer`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

Initial indentation level (Supported by JS Beautify)

####  [JavaScript - Indent with tabs](#javascript---indent-with-tabs) 

**Key**: `js_indent_with_tabs`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

Indentation uses tabs, overrides &#x60;Indent Size&#x60; and &#x60;Indent Char&#x60; (Supported by JS Beautify)

####  [JavaScript - Preserve newlines](#javascript---preserve-newlines) 

**Key**: `js_preserve_newlines`

**Default**: `true`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Preserve line-breaks (Supported by JS Beautify, Pretty Diff)

####  [JavaScript - Max preserve newlines](#javascript---max-preserve-newlines) 

**Key**: `js_max_preserve_newlines`

**Default**: `10`

**Type**: `integer`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

Number of line-breaks to be preserved in one chunk (Supported by JS Beautify)

####  [JavaScript - Space in paren](#javascript---space-in-paren) 

**Key**: `js_space_in_paren`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

Add padding spaces within paren, ie. f( a, b ) (Supported by JS Beautify)

####  [JavaScript - Jslint happy](#javascript---jslint-happy) 

**Key**: `js_jslint_happy`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

Enable jslint-stricter mode (Supported by JS Beautify)

####  [JavaScript - Space after anon function](#javascript---space-after-anon-function) 

**Key**: `js_space_after_anon_function`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Add a space before an anonymous function&#x27;s parens, ie. function () (Supported by JS Beautify, Pretty Diff)

####  [JavaScript - Brace style](#javascript---brace-style) 

**Key**: `js_brace_style`

**Default**: `collapse`

**Type**: `string`

**Enum**:  `collapse`  `expand`  `end-expand`  `none` 

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

[collapse|expand|end-expand|none] (Supported by JS Beautify)

####  [JavaScript - Break chained methods](#javascript---break-chained-methods) 

**Key**: `js_break_chained_methods`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

Break chained method calls across subsequent lines (Supported by JS Beautify)

####  [JavaScript - Keep array indentation](#javascript---keep-array-indentation) 

**Key**: `js_keep_array_indentation`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

Preserve array indentation (Supported by JS Beautify)

####  [JavaScript - Keep function indentation](#javascript---keep-function-indentation) 

**Key**: `js_keep_function_indentation`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

 (Supported by JS Beautify)

####  [JavaScript - Space before conditional](#javascript---space-before-conditional) 

**Key**: `js_space_before_conditional`

**Default**: `true`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

 (Supported by JS Beautify)

####  [JavaScript - Eval code](#javascript---eval-code) 

**Key**: `js_eval_code`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

 (Supported by JS Beautify)

####  [JavaScript - Unescape strings](#javascript---unescape-strings) 

**Key**: `js_unescape_strings`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

Decode printable characters encoded in xNN notation (Supported by JS Beautify)

####  [JavaScript - Wrap line length](#javascript---wrap-line-length) 

**Key**: `js_wrap_line_length`

**Type**: `integer`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Wrap lines at next opportunity after N characters (Supported by JS Beautify, Pretty Diff)

####  [JavaScript - End with newline](#javascript---end-with-newline) 

**Key**: `js_end_with_newline`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

End output with newline (Supported by JS Beautify)

####  [Objective-C - Config Path](#objective-c---config-path) 

**Key**: `objectivec_configPath`

**Type**: `string`

**Supported Beautifiers**:  [`Uncrustify`](#uncrustify) 

**Description**:

Path to uncrustify config file. i.e. uncrustify.cfg (Supported by Uncrustify)

####  [Pawn - Config Path](#pawn---config-path) 

**Key**: `pawn_configPath`

**Type**: `string`

**Supported Beautifiers**:  [`Uncrustify`](#uncrustify) 

**Description**:

Path to uncrustify config file. i.e. uncrustify.cfg (Supported by Uncrustify)

####  [Perl - Perltidy profile](#perl---perltidy-profile) 

**Key**: `perl_perltidy_profile`

**Type**: `string`

**Supported Beautifiers**:  [`Perltidy`](#perltidy) 

**Description**:

Specify a configuration file which will override the default name of .perltidyrc (Supported by Perltidy)

####  [PHP - PHP-CS-Fixer Path](#php---php-cs-fixer-path) 

**Key**: `php_cs_fixer_path`

**Type**: `string`

**Supported Beautifiers**:  [`PHP-CS-Fixer`](#php-cs-fixer) 

**Description**:

Path to the &#x60;php-cs-fixer&#x60; CLI executable (Supported by PHP-CS-Fixer)

####  [PHP - Fixers](#php---fixers) 

**Key**: `php_fixers`

**Type**: `string`

**Supported Beautifiers**:  [`PHP-CS-Fixer`](#php-cs-fixer) 

**Description**:

Add fixer(s). i.e. linefeed,-short_tag,indentation (Supported by PHP-CS-Fixer)

####  [PHP - Level](#php---level) 

**Key**: `php_level`

**Type**: `string`

**Supported Beautifiers**:  [`PHP-CS-Fixer`](#php-cs-fixer) 

**Description**:

By default, all PSR-2 fixers and some additional ones are run. (Supported by PHP-CS-Fixer)

####  [Python - Max line length](#python---max-line-length) 

**Key**: `python_max_line_length`

**Default**: `79`

**Type**: `integer`

**Supported Beautifiers**:  [`autopep8`](#autopep8) 

**Description**:

set maximum allowed line length (Supported by autopep8)

####  [Python - Indent size](#python---indent-size) 

**Key**: `python_indent_size`

**Default**: `4`

**Type**: `integer`

**Supported Beautifiers**:  [`autopep8`](#autopep8) 

**Description**:

Indentation size/length (Supported by autopep8)

####  [Python - Ignore](#python---ignore) 

**Key**: `python_ignore`

**Default**: `E24`

**Type**: `array`

**Supported Beautifiers**:  [`autopep8`](#autopep8) 

**Description**:

do not fix these errors/warnings (Supported by autopep8)

####  [Ruby - Indent size](#ruby---indent-size) 

**Key**: `ruby_indent_size`

**Default**: `4`

**Type**: `integer`

**Supported Beautifiers**:  [`Rubocop`](#rubocop)  [`Ruby Beautify`](#ruby-beautify) 

**Description**:

Indentation size/length (Supported by Rubocop, Ruby Beautify)

####  [Ruby - Indent char](#ruby---indent-char) 

**Key**: `ruby_indent_char`

**Default**: ` `

**Type**: `string`

**Enum**:  ` `  `	` 

**Supported Beautifiers**:  [`Ruby Beautify`](#ruby-beautify) 

**Description**:

Indentation character (Supported by Ruby Beautify)

####  [Rust - Rustfmt path](#rust---rustfmt-path) 

**Key**: `rust_rustfmt_path`

**Type**: `string`

**Supported Beautifiers**:  [`rustfmt`](#rustfmt) 

**Description**:

Path to rustfmt program (Supported by rustfmt)

####  [SQL - Indent size](#sql---indent-size) 

**Key**: `sql_indent_size`

**Default**: `4`

**Type**: `integer`

**Supported Beautifiers**:  [`sqlformat`](#sqlformat) 

**Description**:

Indentation size/length (Supported by sqlformat)

####  [SQL - Keywords](#sql---keywords) 

**Key**: `sql_keywords`

**Default**: `upper`

**Type**: `string`

**Enum**:  `lower`  `upper`  `capitalize` 

**Supported Beautifiers**:  [`sqlformat`](#sqlformat) 

**Description**:

Change case of keywords (Supported by sqlformat)

####  [SQL - Identifiers](#sql---identifiers) 

**Key**: `sql_identifiers`

**Default**: `lower`

**Type**: `string`

**Enum**:  `lower`  `upper`  `capitalize` 

**Supported Beautifiers**:  [`sqlformat`](#sqlformat) 

**Description**:

Change case of identifiers (Supported by sqlformat)

####  [Vala - Config Path](#vala---config-path) 

**Key**: `vala_configPath`

**Type**: `string`

**Supported Beautifiers**:  [`Uncrustify`](#uncrustify) 

**Description**:

Path to uncrustify config file. i.e. uncrustify.cfg (Supported by Uncrustify)

####  [Language Config - C# - Disable Beautifying Language](#language-config---c---disable-beautifying-language) 

**Key**: `language_cs_disabled`

**Type**: `boolean`

**Description**:

Disable C# Beautification

####  [Language Config - C# - Default Beautifier](#language-config---c---default-beautifier) 

**Key**: `language_cs_default_beautifier`

**Default**: `Uncrustify`

**Type**: `string`

**Enum**:  `Uncrustify` 

**Description**:

Default Beautifier to be used for C#

####  [Language Config - C# - Beautify On Save](#language-config---c---beautify-on-save) 

**Key**: `language_cs_beautify_on_save`

**Type**: `boolean`

**Description**:

Automatically beautify C# files on save

####  [Language Config - C - Disable Beautifying Language](#language-config---c---disable-beautifying-language) 

**Key**: `language_c_disabled`

**Type**: `boolean`

**Description**:

Disable C Beautification

####  [Language Config - C - Default Beautifier](#language-config---c---default-beautifier) 

**Key**: `language_c_default_beautifier`

**Default**: `Uncrustify`

**Type**: `string`

**Enum**:  `Uncrustify` 

**Description**:

Default Beautifier to be used for C

####  [Language Config - C - Beautify On Save](#language-config---c---beautify-on-save) 

**Key**: `language_c_beautify_on_save`

**Type**: `boolean`

**Description**:

Automatically beautify C files on save

####  [Language Config - CoffeeScript - Disable Beautifying Language](#language-config---coffeescript---disable-beautifying-language) 

**Key**: `language_coffeescript_disabled`

**Type**: `boolean`

**Description**:

Disable CoffeeScript Beautification

####  [Language Config - CoffeeScript - Default Beautifier](#language-config---coffeescript---default-beautifier) 

**Key**: `language_coffeescript_default_beautifier`

**Default**: `coffee-fmt`

**Type**: `string`

**Enum**:  `Coffee Formatter`  `coffee-fmt` 

**Description**:

Default Beautifier to be used for CoffeeScript

####  [Language Config - CoffeeScript - Beautify On Save](#language-config---coffeescript---beautify-on-save) 

**Key**: `language_coffeescript_beautify_on_save`

**Type**: `boolean`

**Description**:

Automatically beautify CoffeeScript files on save

####  [Language Config - C++ - Disable Beautifying Language](#language-config---c---disable-beautifying-language) 

**Key**: `language_cpp_disabled`

**Type**: `boolean`

**Description**:

Disable C++ Beautification

####  [Language Config - C++ - Default Beautifier](#language-config---c---default-beautifier) 

**Key**: `language_cpp_default_beautifier`

**Default**: `Uncrustify`

**Type**: `string`

**Enum**:  `Uncrustify` 

**Description**:

Default Beautifier to be used for C++

####  [Language Config - C++ - Beautify On Save](#language-config---c---beautify-on-save) 

**Key**: `language_cpp_beautify_on_save`

**Type**: `boolean`

**Description**:

Automatically beautify C++ files on save

####  [Language Config - CSS - Disable Beautifying Language](#language-config---css---disable-beautifying-language) 

**Key**: `language_css_disabled`

**Type**: `boolean`

**Description**:

Disable CSS Beautification

####  [Language Config - CSS - Default Beautifier](#language-config---css---default-beautifier) 

**Key**: `language_css_default_beautifier`

**Default**: `JS Beautify`

**Type**: `string`

**Enum**:  `CSScomb`  `JS Beautify`  `Pretty Diff` 

**Description**:

Default Beautifier to be used for CSS

####  [Language Config - CSS - Beautify On Save](#language-config---css---beautify-on-save) 

**Key**: `language_css_beautify_on_save`

**Type**: `boolean`

**Description**:

Automatically beautify CSS files on save

####  [Language Config - CSV - Disable Beautifying Language](#language-config---csv---disable-beautifying-language) 

**Key**: `language_csv_disabled`

**Type**: `boolean`

**Description**:

Disable CSV Beautification

####  [Language Config - CSV - Default Beautifier](#language-config---csv---default-beautifier) 

**Key**: `language_csv_default_beautifier`

**Default**: `Pretty Diff`

**Type**: `string`

**Enum**:  `Pretty Diff` 

**Description**:

Default Beautifier to be used for CSV

####  [Language Config - CSV - Beautify On Save](#language-config---csv---beautify-on-save) 

**Key**: `language_csv_beautify_on_save`

**Type**: `boolean`

**Description**:

Automatically beautify CSV files on save

####  [Language Config - D - Disable Beautifying Language](#language-config---d---disable-beautifying-language) 

**Key**: `language_d_disabled`

**Type**: `boolean`

**Description**:

Disable D Beautification

####  [Language Config - D - Default Beautifier](#language-config---d---default-beautifier) 

**Key**: `language_d_default_beautifier`

**Default**: `Uncrustify`

**Type**: `string`

**Enum**:  `Uncrustify` 

**Description**:

Default Beautifier to be used for D

####  [Language Config - D - Beautify On Save](#language-config---d---beautify-on-save) 

**Key**: `language_d_beautify_on_save`

**Type**: `boolean`

**Description**:

Automatically beautify D files on save

####  [Language Config - EJS - Disable Beautifying Language](#language-config---ejs---disable-beautifying-language) 

**Key**: `language_ejs_disabled`

**Type**: `boolean`

**Description**:

Disable EJS Beautification

####  [Language Config - EJS - Default Beautifier](#language-config---ejs---default-beautifier) 

**Key**: `language_ejs_default_beautifier`

**Default**: `Pretty Diff`

**Type**: `string`

**Enum**:  `Pretty Diff` 

**Description**:

Default Beautifier to be used for EJS

####  [Language Config - EJS - Beautify On Save](#language-config---ejs---beautify-on-save) 

**Key**: `language_ejs_beautify_on_save`

**Type**: `boolean`

**Description**:

Automatically beautify EJS files on save

####  [Language Config - ERB - Disable Beautifying Language](#language-config---erb---disable-beautifying-language) 

**Key**: `language_erb_disabled`

**Type**: `boolean`

**Description**:

Disable ERB Beautification

####  [Language Config - ERB - Default Beautifier](#language-config---erb---default-beautifier) 

**Key**: `language_erb_default_beautifier`

**Default**: `Pretty Diff`

**Type**: `string`

**Enum**:  `HTML Beautifier`  `Pretty Diff` 

**Description**:

Default Beautifier to be used for ERB

####  [Language Config - ERB - Beautify On Save](#language-config---erb---beautify-on-save) 

**Key**: `language_erb_beautify_on_save`

**Type**: `boolean`

**Description**:

Automatically beautify ERB files on save

####  [Language Config - Go - Disable Beautifying Language](#language-config---go---disable-beautifying-language) 

**Key**: `language_go_disabled`

**Type**: `boolean`

**Description**:

Disable Go Beautification

####  [Language Config - Go - Default Beautifier](#language-config---go---default-beautifier) 

**Key**: `language_go_default_beautifier`

**Default**: `gofmt`

**Type**: `string`

**Enum**:  `gofmt` 

**Description**:

Default Beautifier to be used for Go

####  [Language Config - Go - Beautify On Save](#language-config---go---beautify-on-save) 

**Key**: `language_go_beautify_on_save`

**Type**: `boolean`

**Description**:

Automatically beautify Go files on save

####  [Language Config - Fortran - Disable Beautifying Language](#language-config---fortran---disable-beautifying-language) 

**Key**: `language_fortran_disabled`

**Type**: `boolean`

**Description**:

Disable Fortran Beautification

####  [Language Config - Fortran - Default Beautifier](#language-config---fortran---default-beautifier) 

**Key**: `language_fortran_default_beautifier`

**Default**: `Fortran Beautifier`

**Type**: `string`

**Enum**:  `Fortran Beautifier` 

**Description**:

Default Beautifier to be used for Fortran

####  [Language Config - Fortran - Beautify On Save](#language-config---fortran---beautify-on-save) 

**Key**: `language_fortran_beautify_on_save`

**Type**: `boolean`

**Description**:

Automatically beautify Fortran files on save

####  [Language Config - Handlebars - Disable Beautifying Language](#language-config---handlebars---disable-beautifying-language) 

**Key**: `language_handlebars_disabled`

**Type**: `boolean`

**Description**:

Disable Handlebars Beautification

####  [Language Config - Handlebars - Default Beautifier](#language-config---handlebars---default-beautifier) 

**Key**: `language_handlebars_default_beautifier`

**Default**: `JS Beautify`

**Type**: `string`

**Enum**:  `JS Beautify` 

**Description**:

Default Beautifier to be used for Handlebars

####  [Language Config - Handlebars - Beautify On Save](#language-config---handlebars---beautify-on-save) 

**Key**: `language_handlebars_beautify_on_save`

**Type**: `boolean`

**Description**:

Automatically beautify Handlebars files on save

####  [Language Config - HTML - Disable Beautifying Language](#language-config---html---disable-beautifying-language) 

**Key**: `language_html_disabled`

**Type**: `boolean`

**Description**:

Disable HTML Beautification

####  [Language Config - HTML - Default Beautifier](#language-config---html---default-beautifier) 

**Key**: `language_html_default_beautifier`

**Default**: `JS Beautify`

**Type**: `string`

**Enum**:  `JS Beautify`  `Pretty Diff` 

**Description**:

Default Beautifier to be used for HTML

####  [Language Config - HTML - Beautify On Save](#language-config---html---beautify-on-save) 

**Key**: `language_html_beautify_on_save`

**Type**: `boolean`

**Description**:

Automatically beautify HTML files on save

####  [Language Config - Java - Disable Beautifying Language](#language-config---java---disable-beautifying-language) 

**Key**: `language_java_disabled`

**Type**: `boolean`

**Description**:

Disable Java Beautification

####  [Language Config - Java - Default Beautifier](#language-config---java---default-beautifier) 

**Key**: `language_java_default_beautifier`

**Default**: `Uncrustify`

**Type**: `string`

**Enum**:  `Uncrustify` 

**Description**:

Default Beautifier to be used for Java

####  [Language Config - Java - Beautify On Save](#language-config---java---beautify-on-save) 

**Key**: `language_java_beautify_on_save`

**Type**: `boolean`

**Description**:

Automatically beautify Java files on save

####  [Language Config - JavaScript - Disable Beautifying Language](#language-config---javascript---disable-beautifying-language) 

**Key**: `language_js_disabled`

**Type**: `boolean`

**Description**:

Disable JavaScript Beautification

####  [Language Config - JavaScript - Default Beautifier](#language-config---javascript---default-beautifier) 

**Key**: `language_js_default_beautifier`

**Default**: `JS Beautify`

**Type**: `string`

**Enum**:  `JS Beautify`  `Pretty Diff` 

**Description**:

Default Beautifier to be used for JavaScript

####  [Language Config - JavaScript - Beautify On Save](#language-config---javascript---beautify-on-save) 

**Key**: `language_js_beautify_on_save`

**Type**: `boolean`

**Description**:

Automatically beautify JavaScript files on save

####  [Language Config - JSON - Disable Beautifying Language](#language-config---json---disable-beautifying-language) 

**Key**: `language_json_disabled`

**Type**: `boolean`

**Description**:

Disable JSON Beautification

####  [Language Config - JSON - Default Beautifier](#language-config---json---default-beautifier) 

**Key**: `language_json_default_beautifier`

**Default**: `JS Beautify`

**Type**: `string`

**Enum**:  `JS Beautify`  `Pretty Diff` 

**Description**:

Default Beautifier to be used for JSON

####  [Language Config - JSON - Beautify On Save](#language-config---json---beautify-on-save) 

**Key**: `language_json_beautify_on_save`

**Type**: `boolean`

**Description**:

Automatically beautify JSON files on save

####  [Language Config - JSX - Disable Beautifying Language](#language-config---jsx---disable-beautifying-language) 

**Key**: `language_jsx_disabled`

**Type**: `boolean`

**Description**:

Disable JSX Beautification

####  [Language Config - JSX - Default Beautifier](#language-config---jsx---default-beautifier) 

**Key**: `language_jsx_default_beautifier`

**Default**: `Pretty Diff`

**Type**: `string`

**Enum**:  `Pretty Diff` 

**Description**:

Default Beautifier to be used for JSX

####  [Language Config - JSX - Beautify On Save](#language-config---jsx---beautify-on-save) 

**Key**: `language_jsx_beautify_on_save`

**Type**: `boolean`

**Description**:

Automatically beautify JSX files on save

####  [Language Config - LESS - Disable Beautifying Language](#language-config---less---disable-beautifying-language) 

**Key**: `language_less_disabled`

**Type**: `boolean`

**Description**:

Disable LESS Beautification

####  [Language Config - LESS - Default Beautifier](#language-config---less---default-beautifier) 

**Key**: `language_less_default_beautifier`

**Default**: `Pretty Diff`

**Type**: `string`

**Enum**:  `CSScomb`  `Pretty Diff` 

**Description**:

Default Beautifier to be used for LESS

####  [Language Config - LESS - Beautify On Save](#language-config---less---beautify-on-save) 

**Key**: `language_less_beautify_on_save`

**Type**: `boolean`

**Description**:

Automatically beautify LESS files on save

####  [Language Config - Markdown - Disable Beautifying Language](#language-config---markdown---disable-beautifying-language) 

**Key**: `language_markdown_disabled`

**Type**: `boolean`

**Description**:

Disable Markdown Beautification

####  [Language Config - Markdown - Default Beautifier](#language-config---markdown---default-beautifier) 

**Key**: `language_markdown_default_beautifier`

**Default**: `Tidy Markdown`

**Type**: `string`

**Enum**:  `Tidy Markdown` 

**Description**:

Default Beautifier to be used for Markdown

####  [Language Config - Markdown - Beautify On Save](#language-config---markdown---beautify-on-save) 

**Key**: `language_markdown_beautify_on_save`

**Type**: `boolean`

**Description**:

Automatically beautify Markdown files on save

####  [Language Config - Marko - Disable Beautifying Language](#language-config---marko---disable-beautifying-language) 

**Key**: `language_marko_disabled`

**Type**: `boolean`

**Description**:

Disable Marko Beautification

####  [Language Config - Marko - Default Beautifier](#language-config---marko---default-beautifier) 

**Key**: `language_marko_default_beautifier`

**Default**: `JS Beautify`

**Type**: `string`

**Enum**:  `JS Beautify` 

**Description**:

Default Beautifier to be used for Marko

####  [Language Config - Marko - Beautify On Save](#language-config---marko---beautify-on-save) 

**Key**: `language_marko_beautify_on_save`

**Type**: `boolean`

**Description**:

Automatically beautify Marko files on save

####  [Language Config - Mustache - Disable Beautifying Language](#language-config---mustache---disable-beautifying-language) 

**Key**: `language_mustache_disabled`

**Type**: `boolean`

**Description**:

Disable Mustache Beautification

####  [Language Config - Mustache - Default Beautifier](#language-config---mustache---default-beautifier) 

**Key**: `language_mustache_default_beautifier`

**Default**: `JS Beautify`

**Type**: `string`

**Enum**:  `JS Beautify` 

**Description**:

Default Beautifier to be used for Mustache

####  [Language Config - Mustache - Beautify On Save](#language-config---mustache---beautify-on-save) 

**Key**: `language_mustache_beautify_on_save`

**Type**: `boolean`

**Description**:

Automatically beautify Mustache files on save

####  [Language Config - Objective-C - Disable Beautifying Language](#language-config---objective-c---disable-beautifying-language) 

**Key**: `language_objectivec_disabled`

**Type**: `boolean`

**Description**:

Disable Objective-C Beautification

####  [Language Config - Objective-C - Default Beautifier](#language-config---objective-c---default-beautifier) 

**Key**: `language_objectivec_default_beautifier`

**Default**: `Uncrustify`

**Type**: `string`

**Enum**:  `Uncrustify` 

**Description**:

Default Beautifier to be used for Objective-C

####  [Language Config - Objective-C - Beautify On Save](#language-config---objective-c---beautify-on-save) 

**Key**: `language_objectivec_beautify_on_save`

**Type**: `boolean`

**Description**:

Automatically beautify Objective-C files on save

####  [Language Config - Pawn - Disable Beautifying Language](#language-config---pawn---disable-beautifying-language) 

**Key**: `language_pawn_disabled`

**Type**: `boolean`

**Description**:

Disable Pawn Beautification

####  [Language Config - Pawn - Default Beautifier](#language-config---pawn---default-beautifier) 

**Key**: `language_pawn_default_beautifier`

**Default**: `Uncrustify`

**Type**: `string`

**Enum**:  `Uncrustify` 

**Description**:

Default Beautifier to be used for Pawn

####  [Language Config - Pawn - Beautify On Save](#language-config---pawn---beautify-on-save) 

**Key**: `language_pawn_beautify_on_save`

**Type**: `boolean`

**Description**:

Automatically beautify Pawn files on save

####  [Language Config - Perl - Disable Beautifying Language](#language-config---perl---disable-beautifying-language) 

**Key**: `language_perl_disabled`

**Type**: `boolean`

**Description**:

Disable Perl Beautification

####  [Language Config - Perl - Default Beautifier](#language-config---perl---default-beautifier) 

**Key**: `language_perl_default_beautifier`

**Default**: `Perltidy`

**Type**: `string`

**Enum**:  `Perltidy` 

**Description**:

Default Beautifier to be used for Perl

####  [Language Config - Perl - Beautify On Save](#language-config---perl---beautify-on-save) 

**Key**: `language_perl_beautify_on_save`

**Type**: `boolean`

**Description**:

Automatically beautify Perl files on save

####  [Language Config - PHP - Disable Beautifying Language](#language-config---php---disable-beautifying-language) 

**Key**: `language_php_disabled`

**Type**: `boolean`

**Description**:

Disable PHP Beautification

####  [Language Config - PHP - Default Beautifier](#language-config---php---default-beautifier) 

**Key**: `language_php_default_beautifier`

**Default**: `PHP-CS-Fixer`

**Type**: `string`

**Enum**:  `PHP-CS-Fixer` 

**Description**:

Default Beautifier to be used for PHP

####  [Language Config - PHP - Beautify On Save](#language-config---php---beautify-on-save) 

**Key**: `language_php_beautify_on_save`

**Type**: `boolean`

**Description**:

Automatically beautify PHP files on save

####  [Language Config - Python - Disable Beautifying Language](#language-config---python---disable-beautifying-language) 

**Key**: `language_python_disabled`

**Type**: `boolean`

**Description**:

Disable Python Beautification

####  [Language Config - Python - Default Beautifier](#language-config---python---default-beautifier) 

**Key**: `language_python_default_beautifier`

**Default**: `autopep8`

**Type**: `string`

**Enum**:  `autopep8` 

**Description**:

Default Beautifier to be used for Python

####  [Language Config - Python - Beautify On Save](#language-config---python---beautify-on-save) 

**Key**: `language_python_beautify_on_save`

**Type**: `boolean`

**Description**:

Automatically beautify Python files on save

####  [Language Config - Ruby - Disable Beautifying Language](#language-config---ruby---disable-beautifying-language) 

**Key**: `language_ruby_disabled`

**Type**: `boolean`

**Description**:

Disable Ruby Beautification

####  [Language Config - Ruby - Default Beautifier](#language-config---ruby---default-beautifier) 

**Key**: `language_ruby_default_beautifier`

**Default**: `Rubocop`

**Type**: `string`

**Enum**:  `Rubocop`  `Ruby Beautify` 

**Description**:

Default Beautifier to be used for Ruby

####  [Language Config - Ruby - Beautify On Save](#language-config---ruby---beautify-on-save) 

**Key**: `language_ruby_beautify_on_save`

**Type**: `boolean`

**Description**:

Automatically beautify Ruby files on save

####  [Language Config - Rust - Disable Beautifying Language](#language-config---rust---disable-beautifying-language) 

**Key**: `language_rust_disabled`

**Type**: `boolean`

**Description**:

Disable Rust Beautification

####  [Language Config - Rust - Default Beautifier](#language-config---rust---default-beautifier) 

**Key**: `language_rust_default_beautifier`

**Default**: `rustfmt`

**Type**: `string`

**Enum**:  `rustfmt` 

**Description**:

Default Beautifier to be used for Rust

####  [Language Config - Rust - Beautify On Save](#language-config---rust---beautify-on-save) 

**Key**: `language_rust_beautify_on_save`

**Type**: `boolean`

**Description**:

Automatically beautify Rust files on save

####  [Language Config - Sass - Disable Beautifying Language](#language-config---sass---disable-beautifying-language) 

**Key**: `language_sass_disabled`

**Type**: `boolean`

**Description**:

Disable Sass Beautification

####  [Language Config - Sass - Default Beautifier](#language-config---sass---default-beautifier) 

**Key**: `language_sass_default_beautifier`

**Default**: `Pretty Diff`

**Type**: `string`

**Enum**:  `CSScomb`  `Pretty Diff` 

**Description**:

Default Beautifier to be used for Sass

####  [Language Config - Sass - Beautify On Save](#language-config---sass---beautify-on-save) 

**Key**: `language_sass_beautify_on_save`

**Type**: `boolean`

**Description**:

Automatically beautify Sass files on save

####  [Language Config - SCSS - Disable Beautifying Language](#language-config---scss---disable-beautifying-language) 

**Key**: `language_scss_disabled`

**Type**: `boolean`

**Description**:

Disable SCSS Beautification

####  [Language Config - SCSS - Default Beautifier](#language-config---scss---default-beautifier) 

**Key**: `language_scss_default_beautifier`

**Default**: `Pretty Diff`

**Type**: `string`

**Enum**:  `CSScomb`  `Pretty Diff` 

**Description**:

Default Beautifier to be used for SCSS

####  [Language Config - SCSS - Beautify On Save](#language-config---scss---beautify-on-save) 

**Key**: `language_scss_beautify_on_save`

**Type**: `boolean`

**Description**:

Automatically beautify SCSS files on save

####  [Language Config - Spacebars - Disable Beautifying Language](#language-config---spacebars---disable-beautifying-language) 

**Key**: `language_spacebars_disabled`

**Type**: `boolean`

**Description**:

Disable Spacebars Beautification

####  [Language Config - Spacebars - Default Beautifier](#language-config---spacebars---default-beautifier) 

**Key**: `language_spacebars_default_beautifier`

**Default**: `Pretty Diff`

**Type**: `string`

**Enum**:  `Pretty Diff` 

**Description**:

Default Beautifier to be used for Spacebars

####  [Language Config - Spacebars - Beautify On Save](#language-config---spacebars---beautify-on-save) 

**Key**: `language_spacebars_beautify_on_save`

**Type**: `boolean`

**Description**:

Automatically beautify Spacebars files on save

####  [Language Config - SQL - Disable Beautifying Language](#language-config---sql---disable-beautifying-language) 

**Key**: `language_sql_disabled`

**Type**: `boolean`

**Description**:

Disable SQL Beautification

####  [Language Config - SQL - Default Beautifier](#language-config---sql---default-beautifier) 

**Key**: `language_sql_default_beautifier`

**Default**: `sqlformat`

**Type**: `string`

**Enum**:  `sqlformat` 

**Description**:

Default Beautifier to be used for SQL

####  [Language Config - SQL - Beautify On Save](#language-config---sql---beautify-on-save) 

**Key**: `language_sql_beautify_on_save`

**Type**: `boolean`

**Description**:

Automatically beautify SQL files on save

####  [Language Config - Swig - Disable Beautifying Language](#language-config---swig---disable-beautifying-language) 

**Key**: `language_swig_disabled`

**Type**: `boolean`

**Description**:

Disable Swig Beautification

####  [Language Config - Swig - Default Beautifier](#language-config---swig---default-beautifier) 

**Key**: `language_swig_default_beautifier`

**Default**: `Pretty Diff`

**Type**: `string`

**Enum**:  `Pretty Diff` 

**Description**:

Default Beautifier to be used for Swig

####  [Language Config - Swig - Beautify On Save](#language-config---swig---beautify-on-save) 

**Key**: `language_swig_beautify_on_save`

**Type**: `boolean`

**Description**:

Automatically beautify Swig files on save

####  [Language Config - TSS - Disable Beautifying Language](#language-config---tss---disable-beautifying-language) 

**Key**: `language_tss_disabled`

**Type**: `boolean`

**Description**:

Disable TSS Beautification

####  [Language Config - TSS - Default Beautifier](#language-config---tss---default-beautifier) 

**Key**: `language_tss_default_beautifier`

**Default**: `Pretty Diff`

**Type**: `string`

**Enum**:  `Pretty Diff` 

**Description**:

Default Beautifier to be used for TSS

####  [Language Config - TSS - Beautify On Save](#language-config---tss---beautify-on-save) 

**Key**: `language_tss_beautify_on_save`

**Type**: `boolean`

**Description**:

Automatically beautify TSS files on save

####  [Language Config - Twig - Disable Beautifying Language](#language-config---twig---disable-beautifying-language) 

**Key**: `language_twig_disabled`

**Type**: `boolean`

**Description**:

Disable Twig Beautification

####  [Language Config - Twig - Default Beautifier](#language-config---twig---default-beautifier) 

**Key**: `language_twig_default_beautifier`

**Default**: `Pretty Diff`

**Type**: `string`

**Enum**:  `Pretty Diff` 

**Description**:

Default Beautifier to be used for Twig

####  [Language Config - Twig - Beautify On Save](#language-config---twig---beautify-on-save) 

**Key**: `language_twig_beautify_on_save`

**Type**: `boolean`

**Description**:

Automatically beautify Twig files on save

####  [Language Config - TypeScript - Disable Beautifying Language](#language-config---typescript---disable-beautifying-language) 

**Key**: `language_typescript_disabled`

**Type**: `boolean`

**Description**:

Disable TypeScript Beautification

####  [Language Config - TypeScript - Default Beautifier](#language-config---typescript---default-beautifier) 

**Key**: `language_typescript_default_beautifier`

**Default**: `TypeScript Formatter`

**Type**: `string`

**Enum**:  `TypeScript Formatter` 

**Description**:

Default Beautifier to be used for TypeScript

####  [Language Config - TypeScript - Beautify On Save](#language-config---typescript---beautify-on-save) 

**Key**: `language_typescript_beautify_on_save`

**Type**: `boolean`

**Description**:

Automatically beautify TypeScript files on save

####  [Language Config - Vala - Disable Beautifying Language](#language-config---vala---disable-beautifying-language) 

**Key**: `language_vala_disabled`

**Type**: `boolean`

**Description**:

Disable Vala Beautification

####  [Language Config - Vala - Default Beautifier](#language-config---vala---default-beautifier) 

**Key**: `language_vala_default_beautifier`

**Default**: `Uncrustify`

**Type**: `string`

**Enum**:  `Uncrustify` 

**Description**:

Default Beautifier to be used for Vala

####  [Language Config - Vala - Beautify On Save](#language-config---vala---beautify-on-save) 

**Key**: `language_vala_beautify_on_save`

**Type**: `boolean`

**Description**:

Automatically beautify Vala files on save

####  [Language Config - Visualforce - Disable Beautifying Language](#language-config---visualforce---disable-beautifying-language) 

**Key**: `language_visualforce_disabled`

**Type**: `boolean`

**Description**:

Disable Visualforce Beautification

####  [Language Config - Visualforce - Default Beautifier](#language-config---visualforce---default-beautifier) 

**Key**: `language_visualforce_default_beautifier`

**Default**: `Pretty Diff`

**Type**: `string`

**Enum**:  `Pretty Diff` 

**Description**:

Default Beautifier to be used for Visualforce

####  [Language Config - Visualforce - Beautify On Save](#language-config---visualforce---beautify-on-save) 

**Key**: `language_visualforce_beautify_on_save`

**Type**: `boolean`

**Description**:

Automatically beautify Visualforce files on save

####  [Language Config - XML - Disable Beautifying Language](#language-config---xml---disable-beautifying-language) 

**Key**: `language_xml_disabled`

**Type**: `boolean`

**Description**:

Disable XML Beautification

####  [Language Config - XML - Default Beautifier](#language-config---xml---default-beautifier) 

**Key**: `language_xml_default_beautifier`

**Default**: `Pretty Diff`

**Type**: `string`

**Enum**:  `JS Beautify`  `Pretty Diff` 

**Description**:

Default Beautifier to be used for XML

####  [Language Config - XML - Beautify On Save](#language-config---xml---beautify-on-save) 

**Key**: `language_xml_beautify_on_save`

**Type**: `boolean`

**Description**:

Automatically beautify XML files on save


## Beautifier Options

Supported options for each beautifier.

---

### Uncrustify

####  [C# - Config Path](#c---config-path) 

**Key**: `cs_configPath`

**Type**: `string`

**Supported Beautifiers**:  [`Uncrustify`](#uncrustify) 

**Description**:

Path to uncrustify config file. i.e. uncrustify.cfg (Supported by Uncrustify)

####  [C - Config Path](#c---config-path) 

**Key**: `c_configPath`

**Type**: `string`

**Supported Beautifiers**:  [`Uncrustify`](#uncrustify) 

**Description**:

Path to uncrustify config file. i.e. uncrustify.cfg (Supported by Uncrustify)

####  [C++ - Config Path](#c---config-path) 

**Key**: `cpp_configPath`

**Type**: `string`

**Supported Beautifiers**:  [`Uncrustify`](#uncrustify) 

**Description**:

Path to uncrustify config file. i.e. uncrustify.cfg (Supported by Uncrustify)

####  [D - Config Path](#d---config-path) 

**Key**: `d_configPath`

**Type**: `string`

**Supported Beautifiers**:  [`Uncrustify`](#uncrustify) 

**Description**:

Path to uncrustify config file. i.e. uncrustify.cfg (Supported by Uncrustify)

####  [Java - Config Path](#java---config-path) 

**Key**: `java_configPath`

**Type**: `string`

**Supported Beautifiers**:  [`Uncrustify`](#uncrustify) 

**Description**:

Path to uncrustify config file. i.e. uncrustify.cfg (Supported by Uncrustify)

####  [Objective-C - Config Path](#objective-c---config-path) 

**Key**: `objectivec_configPath`

**Type**: `string`

**Supported Beautifiers**:  [`Uncrustify`](#uncrustify) 

**Description**:

Path to uncrustify config file. i.e. uncrustify.cfg (Supported by Uncrustify)

####  [Pawn - Config Path](#pawn---config-path) 

**Key**: `pawn_configPath`

**Type**: `string`

**Supported Beautifiers**:  [`Uncrustify`](#uncrustify) 

**Description**:

Path to uncrustify config file. i.e. uncrustify.cfg (Supported by Uncrustify)

####  [Vala - Config Path](#vala---config-path) 

**Key**: `vala_configPath`

**Type**: `string`

**Supported Beautifiers**:  [`Uncrustify`](#uncrustify) 

**Description**:

Path to uncrustify config file. i.e. uncrustify.cfg (Supported by Uncrustify)


### JS Beautify

####  [CSS - Indent size](#css---indent-size) 

**Key**: `css_indent_size`

**Default**: `4`

**Type**: `integer`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Indentation size/length (Supported by JS Beautify, Pretty Diff)

####  [CSS - Indent char](#css---indent-char) 

**Key**: `css_indent_char`

**Default**: ` `

**Type**: `string`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Indentation character (Supported by JS Beautify, Pretty Diff)

####  [CSS - Selector separator newline](#css---selector-separator-newline) 

**Key**: `css_selector_separator_newline`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

Add a newline between multiple selectors (Supported by JS Beautify)

####  [CSS - Newline between rules](#css---newline-between-rules) 

**Key**: `css_newline_between_rules`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Add a newline between CSS rules (Supported by JS Beautify, Pretty Diff)

####  [CSS - Preserve newlines](#css---preserve-newlines) 

**Key**: `css_preserve_newlines`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Retain empty lines. Consecutive empty lines will be converted to a single empty line. (Supported by JS Beautify, Pretty Diff)

####  [CSS - Wrap line length](#css---wrap-line-length) 

**Key**: `css_wrap_line_length`

**Type**: `integer`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Maximum amount of characters per line (0 = disable) (Supported by JS Beautify, Pretty Diff)

####  [HTML - Indent inner html](#html---indent-inner-html) 

**Key**: `html_indent_inner_html`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

Indent &lt;head&gt; and &lt;body&gt; sections. (Supported by JS Beautify)

####  [HTML - Indent size](#html---indent-size) 

**Key**: `html_indent_size`

**Default**: `4`

**Type**: `integer`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Indentation size/length (Supported by JS Beautify, Pretty Diff)

####  [HTML - Indent char](#html---indent-char) 

**Key**: `html_indent_char`

**Default**: ` `

**Type**: `string`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Indentation character (Supported by JS Beautify, Pretty Diff)

####  [HTML - Brace style](#html---brace-style) 

**Key**: `html_brace_style`

**Default**: `collapse`

**Type**: `string`

**Enum**:  `collapse`  `expand`  `end-expand`  `none` 

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

[collapse|expand|end-expand|none] (Supported by JS Beautify)

####  [HTML - Indent scripts](#html---indent-scripts) 

**Key**: `html_indent_scripts`

**Default**: `normal`

**Type**: `string`

**Enum**:  `keep`  `separate`  `normal` 

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

[keep|separate|normal] (Supported by JS Beautify)

####  [HTML - Wrap line length](#html---wrap-line-length) 

**Key**: `html_wrap_line_length`

**Default**: `250`

**Type**: `integer`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Maximum characters per line (0 disables) (Supported by JS Beautify, Pretty Diff)

####  [HTML - Wrap attributes](#html---wrap-attributes) 

**Key**: `html_wrap_attributes`

**Default**: `auto`

**Type**: `string`

**Enum**:  `auto`  `force` 

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

Wrap attributes to new lines [auto|force] (Supported by JS Beautify)

####  [HTML - Wrap attributes indent size](#html---wrap-attributes-indent-size) 

**Key**: `html_wrap_attributes_indent_size`

**Default**: `4`

**Type**: `integer`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

Indent wrapped attributes to after N characters (Supported by JS Beautify)

####  [HTML - Preserve newlines](#html---preserve-newlines) 

**Key**: `html_preserve_newlines`

**Default**: `true`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Preserve line-breaks (Supported by JS Beautify, Pretty Diff)

####  [HTML - Max preserve newlines](#html---max-preserve-newlines) 

**Key**: `html_max_preserve_newlines`

**Default**: `10`

**Type**: `integer`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

Number of line-breaks to be preserved in one chunk (Supported by JS Beautify)

####  [HTML - Unformatted](#html---unformatted) 

**Key**: `html_unformatted`

**Default**: `a,sub,sup,b,i,u`

**Type**: `array`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

List of tags (defaults to inline) that should not be reformatted (Supported by JS Beautify)

####  [HTML - End with newline](#html---end-with-newline) 

**Key**: `html_end_with_newline`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

End output with newline (Supported by JS Beautify)

####  [JavaScript - Indent size](#javascript---indent-size) 

**Key**: `js_indent_size`

**Default**: `4`

**Type**: `integer`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Indentation size/length (Supported by JS Beautify, Pretty Diff)

####  [JavaScript - Indent char](#javascript---indent-char) 

**Key**: `js_indent_char`

**Default**: ` `

**Type**: `string`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Indentation character (Supported by JS Beautify, Pretty Diff)

####  [JavaScript - Indent level](#javascript---indent-level) 

**Key**: `js_indent_level`

**Type**: `integer`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

Initial indentation level (Supported by JS Beautify)

####  [JavaScript - Indent with tabs](#javascript---indent-with-tabs) 

**Key**: `js_indent_with_tabs`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

Indentation uses tabs, overrides &#x60;Indent Size&#x60; and &#x60;Indent Char&#x60; (Supported by JS Beautify)

####  [JavaScript - Preserve newlines](#javascript---preserve-newlines) 

**Key**: `js_preserve_newlines`

**Default**: `true`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Preserve line-breaks (Supported by JS Beautify, Pretty Diff)

####  [JavaScript - Max preserve newlines](#javascript---max-preserve-newlines) 

**Key**: `js_max_preserve_newlines`

**Default**: `10`

**Type**: `integer`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

Number of line-breaks to be preserved in one chunk (Supported by JS Beautify)

####  [JavaScript - Space in paren](#javascript---space-in-paren) 

**Key**: `js_space_in_paren`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

Add padding spaces within paren, ie. f( a, b ) (Supported by JS Beautify)

####  [JavaScript - Jslint happy](#javascript---jslint-happy) 

**Key**: `js_jslint_happy`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

Enable jslint-stricter mode (Supported by JS Beautify)

####  [JavaScript - Space after anon function](#javascript---space-after-anon-function) 

**Key**: `js_space_after_anon_function`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Add a space before an anonymous function&#x27;s parens, ie. function () (Supported by JS Beautify, Pretty Diff)

####  [JavaScript - Brace style](#javascript---brace-style) 

**Key**: `js_brace_style`

**Default**: `collapse`

**Type**: `string`

**Enum**:  `collapse`  `expand`  `end-expand`  `none` 

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

[collapse|expand|end-expand|none] (Supported by JS Beautify)

####  [JavaScript - Break chained methods](#javascript---break-chained-methods) 

**Key**: `js_break_chained_methods`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

Break chained method calls across subsequent lines (Supported by JS Beautify)

####  [JavaScript - Keep array indentation](#javascript---keep-array-indentation) 

**Key**: `js_keep_array_indentation`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

Preserve array indentation (Supported by JS Beautify)

####  [JavaScript - Keep function indentation](#javascript---keep-function-indentation) 

**Key**: `js_keep_function_indentation`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

 (Supported by JS Beautify)

####  [JavaScript - Space before conditional](#javascript---space-before-conditional) 

**Key**: `js_space_before_conditional`

**Default**: `true`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

 (Supported by JS Beautify)

####  [JavaScript - Eval code](#javascript---eval-code) 

**Key**: `js_eval_code`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

 (Supported by JS Beautify)

####  [JavaScript - Unescape strings](#javascript---unescape-strings) 

**Key**: `js_unescape_strings`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

Decode printable characters encoded in xNN notation (Supported by JS Beautify)

####  [JavaScript - Wrap line length](#javascript---wrap-line-length) 

**Key**: `js_wrap_line_length`

**Type**: `integer`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Wrap lines at next opportunity after N characters (Supported by JS Beautify, Pretty Diff)

####  [JavaScript - End with newline](#javascript---end-with-newline) 

**Key**: `js_end_with_newline`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

End output with newline (Supported by JS Beautify)


### Pretty Diff

####  [CSS - Indent size](#css---indent-size) 

**Key**: `css_indent_size`

**Default**: `4`

**Type**: `integer`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Indentation size/length (Supported by JS Beautify, Pretty Diff)

####  [CSS - Indent char](#css---indent-char) 

**Key**: `css_indent_char`

**Default**: ` `

**Type**: `string`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Indentation character (Supported by JS Beautify, Pretty Diff)

####  [CSS - Newline between rules](#css---newline-between-rules) 

**Key**: `css_newline_between_rules`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Add a newline between CSS rules (Supported by JS Beautify, Pretty Diff)

####  [CSS - Preserve newlines](#css---preserve-newlines) 

**Key**: `css_preserve_newlines`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Retain empty lines. Consecutive empty lines will be converted to a single empty line. (Supported by JS Beautify, Pretty Diff)

####  [CSS - Wrap line length](#css---wrap-line-length) 

**Key**: `css_wrap_line_length`

**Type**: `integer`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Maximum amount of characters per line (0 = disable) (Supported by JS Beautify, Pretty Diff)

####  [CSS - Indent comments](#css---indent-comments) 

**Key**: `css_indent_comments`

**Default**: `true`

**Type**: `boolean`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Determines whether comments should be indented. (Supported by Pretty Diff)

####  [CSS - Force indentation](#css---force-indentation) 

**Key**: `css_force_indentation`

**Type**: `boolean`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

if indentation should be forcefully applied tomarkup even if it disruptively adds unintended whitespace to the documents rendered output (Supported by Pretty Diff)

####  [CSS - Convert quotes](#css---convert-quotes) 

**Key**: `css_convert_quotes`

**Default**: `none`

**Type**: `string`

**Enum**:  `none`  `double`  `single` 

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Convert the quote characters delimiting strings from either double or single quotes to the other. (Supported by Pretty Diff)

####  [CSS - Align assignments](#css---align-assignments) 

**Key**: `css_align_assignments`

**Type**: `boolean`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

If lists of assignments or properties should be vertically aligned for faster and easier reading. (Supported by Pretty Diff)

####  [HTML - Indent size](#html---indent-size) 

**Key**: `html_indent_size`

**Default**: `4`

**Type**: `integer`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Indentation size/length (Supported by JS Beautify, Pretty Diff)

####  [HTML - Indent char](#html---indent-char) 

**Key**: `html_indent_char`

**Default**: ` `

**Type**: `string`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Indentation character (Supported by JS Beautify, Pretty Diff)

####  [HTML - Wrap line length](#html---wrap-line-length) 

**Key**: `html_wrap_line_length`

**Default**: `250`

**Type**: `integer`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Maximum characters per line (0 disables) (Supported by JS Beautify, Pretty Diff)

####  [HTML - Preserve newlines](#html---preserve-newlines) 

**Key**: `html_preserve_newlines`

**Default**: `true`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Preserve line-breaks (Supported by JS Beautify, Pretty Diff)

####  [JavaScript - Indent size](#javascript---indent-size) 

**Key**: `js_indent_size`

**Default**: `4`

**Type**: `integer`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Indentation size/length (Supported by JS Beautify, Pretty Diff)

####  [JavaScript - Indent char](#javascript---indent-char) 

**Key**: `js_indent_char`

**Default**: ` `

**Type**: `string`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Indentation character (Supported by JS Beautify, Pretty Diff)

####  [JavaScript - Preserve newlines](#javascript---preserve-newlines) 

**Key**: `js_preserve_newlines`

**Default**: `true`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Preserve line-breaks (Supported by JS Beautify, Pretty Diff)

####  [JavaScript - Space after anon function](#javascript---space-after-anon-function) 

**Key**: `js_space_after_anon_function`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Add a space before an anonymous function&#x27;s parens, ie. function () (Supported by JS Beautify, Pretty Diff)

####  [JavaScript - Wrap line length](#javascript---wrap-line-length) 

**Key**: `js_wrap_line_length`

**Type**: `integer`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Wrap lines at next opportunity after N characters (Supported by JS Beautify, Pretty Diff)


### Fortran Beautifier

####  [Fortran - Emacs path](#fortran---emacs-path) 

**Key**: `fortran_emacs_path`

**Type**: `string`

**Supported Beautifiers**:  [`Fortran Beautifier`](#fortran-beautifier) 

**Description**:

Path to the &#x60;emacs&#x60; executable (Supported by Fortran Beautifier)

####  [Fortran - Emacs script path](#fortran---emacs-script-path) 

**Key**: `fortran_emacs_script_path`

**Type**: `string`

**Supported Beautifiers**:  [`Fortran Beautifier`](#fortran-beautifier) 

**Description**:

Path to the emacs script (Supported by Fortran Beautifier)


### Perltidy

####  [Perl - Perltidy profile](#perl---perltidy-profile) 

**Key**: `perl_perltidy_profile`

**Type**: `string`

**Supported Beautifiers**:  [`Perltidy`](#perltidy) 

**Description**:

Specify a configuration file which will override the default name of .perltidyrc (Supported by Perltidy)


### PHP-CS-Fixer

####  [PHP - PHP-CS-Fixer Path](#php---php-cs-fixer-path) 

**Key**: `php_cs_fixer_path`

**Type**: `string`

**Supported Beautifiers**:  [`PHP-CS-Fixer`](#php-cs-fixer) 

**Description**:

Path to the &#x60;php-cs-fixer&#x60; CLI executable (Supported by PHP-CS-Fixer)

####  [PHP - Fixers](#php---fixers) 

**Key**: `php_fixers`

**Type**: `string`

**Supported Beautifiers**:  [`PHP-CS-Fixer`](#php-cs-fixer) 

**Description**:

Add fixer(s). i.e. linefeed,-short_tag,indentation (Supported by PHP-CS-Fixer)

####  [PHP - Level](#php---level) 

**Key**: `php_level`

**Type**: `string`

**Supported Beautifiers**:  [`PHP-CS-Fixer`](#php-cs-fixer) 

**Description**:

By default, all PSR-2 fixers and some additional ones are run. (Supported by PHP-CS-Fixer)


### autopep8

####  [Python - Max line length](#python---max-line-length) 

**Key**: `python_max_line_length`

**Default**: `79`

**Type**: `integer`

**Supported Beautifiers**:  [`autopep8`](#autopep8) 

**Description**:

set maximum allowed line length (Supported by autopep8)

####  [Python - Indent size](#python---indent-size) 

**Key**: `python_indent_size`

**Default**: `4`

**Type**: `integer`

**Supported Beautifiers**:  [`autopep8`](#autopep8) 

**Description**:

Indentation size/length (Supported by autopep8)

####  [Python - Ignore](#python---ignore) 

**Key**: `python_ignore`

**Default**: `E24`

**Type**: `array`

**Supported Beautifiers**:  [`autopep8`](#autopep8) 

**Description**:

do not fix these errors/warnings (Supported by autopep8)


### Rubocop

####  [Ruby - Indent size](#ruby---indent-size) 

**Key**: `ruby_indent_size`

**Default**: `4`

**Type**: `integer`

**Supported Beautifiers**:  [`Rubocop`](#rubocop)  [`Ruby Beautify`](#ruby-beautify) 

**Description**:

Indentation size/length (Supported by Rubocop, Ruby Beautify)


### Ruby Beautify

####  [Ruby - Indent size](#ruby---indent-size) 

**Key**: `ruby_indent_size`

**Default**: `4`

**Type**: `integer`

**Supported Beautifiers**:  [`Rubocop`](#rubocop)  [`Ruby Beautify`](#ruby-beautify) 

**Description**:

Indentation size/length (Supported by Rubocop, Ruby Beautify)

####  [Ruby - Indent char](#ruby---indent-char) 

**Key**: `ruby_indent_char`

**Default**: ` `

**Type**: `string`

**Enum**:  ` `  `	` 

**Supported Beautifiers**:  [`Ruby Beautify`](#ruby-beautify) 

**Description**:

Indentation character (Supported by Ruby Beautify)


### rustfmt

####  [Rust - Rustfmt path](#rust---rustfmt-path) 

**Key**: `rust_rustfmt_path`

**Type**: `string`

**Supported Beautifiers**:  [`rustfmt`](#rustfmt) 

**Description**:

Path to rustfmt program (Supported by rustfmt)


### sqlformat

####  [SQL - Indent size](#sql---indent-size) 

**Key**: `sql_indent_size`

**Default**: `4`

**Type**: `integer`

**Supported Beautifiers**:  [`sqlformat`](#sqlformat) 

**Description**:

Indentation size/length (Supported by sqlformat)

####  [SQL - Keywords](#sql---keywords) 

**Key**: `sql_keywords`

**Default**: `upper`

**Type**: `string`

**Enum**:  `lower`  `upper`  `capitalize` 

**Supported Beautifiers**:  [`sqlformat`](#sqlformat) 

**Description**:

Change case of keywords (Supported by sqlformat)

####  [SQL - Identifiers](#sql---identifiers) 

**Key**: `sql_identifiers`

**Default**: `lower`

**Type**: `string`

**Enum**:  `lower`  `upper`  `capitalize` 

**Supported Beautifiers**:  [`sqlformat`](#sqlformat) 

**Description**:

Change case of identifiers (Supported by sqlformat)



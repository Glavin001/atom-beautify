# Options

Automatically generated documentation for Atom Beautify's options.

## Package Options

Configurable options for Atom Beautify.

---

####  [Anonymous Analytics](#anonymous-analytics) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Default**: `true`

**Type**: `boolean`

**Description**:

There is [Segment.io](https://segment.io/) which forwards data to [Google Analytics](http://www.google.com/analytics/) to track what languages are being used the most, as well as other stats. Everything is anonymized and no personal information, such as source code, is sent. See https://github.com/Glavin001/atom-beautify/issues/47 for more details.

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Anonymous Analytics*" and change it to your desired configuration.

####  [Analytics User Id](#analytics-user-id) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `string`

**Description**:

Unique identifier for this user for tracking usage analytics

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Analytics User Id*" and change it to your desired configuration.

####  [Logger Level](#logger-level) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Default**: `warn`

**Type**: `string`

**Enum**:  `verbose`  `debug`  `info`  `warn`  `error` 

**Description**:

Set the level for the logger

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Logger Level*" and change it to your desired configuration.

####  [Beautify Entire File On Save](#beautify-entire-file-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Default**: `true`

**Type**: `boolean`

**Description**:

When beautifying on save, use the entire file, even if there is selected text in the editor

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Beautify Entire File On Save*" and change it to your desired configuration.

####  [Mute Unsupported Language Errors](#mute-unsupported-language-errors) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Do not show "Unsupported Language" errors when they occur

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Mute Unsupported Language Errors*" and change it to your desired configuration.

####  [Mute All Errors](#mute-all-errors) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Do not show any/all errors when they occur

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Mute All Errors*" and change it to your desired configuration.


## Language Options

Supported options for each language.

---

####  [Arduino - Config Path](#arduino---config-path) 

**Namespace**: `arduino`

**Key**: `configPath`

**Type**: `string`

**Supported Beautifiers**:  [`Uncrustify`](#uncrustify) 

**Description**:

Path to uncrustify config file. i.e. uncrustify.cfg (Supported by Uncrustify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "arduino": {
        "configPath": ""
    }
}
```

####  [C# - Config Path](#c---config-path) 

**Namespace**: `cs`

**Key**: `configPath`

**Type**: `string`

**Supported Beautifiers**:  [`Uncrustify`](#uncrustify) 

**Description**:

Path to uncrustify config file. i.e. uncrustify.cfg (Supported by Uncrustify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "cs": {
        "configPath": ""
    }
}
```

####  [C - Config Path](#c---config-path) 

**Namespace**: `c`

**Key**: `configPath`

**Type**: `string`

**Supported Beautifiers**:  [`Uncrustify`](#uncrustify) 

**Description**:

Path to uncrustify config file. i.e. uncrustify.cfg (Supported by Uncrustify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "c": {
        "configPath": ""
    }
}
```

####  [C++ - Config Path](#c---config-path) 

**Namespace**: `cpp`

**Key**: `configPath`

**Type**: `string`

**Supported Beautifiers**:  [`Uncrustify`](#uncrustify) 

**Description**:

Path to uncrustify config file. i.e. uncrustify.cfg (Supported by Uncrustify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "cpp": {
        "configPath": ""
    }
}
```

####  [CSS - Indent size](#css---indent-size) 

**Namespace**: `css`

**Key**: `indent_size`

**Default**: `4`

**Type**: `integer`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Indentation size/length (Supported by JS Beautify, Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "css": {
        "indent_size": 4
    }
}
```

####  [CSS - Indent char](#css---indent-char) 

**Namespace**: `css`

**Key**: `indent_char`

**Default**: ` `

**Type**: `string`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Indentation character (Supported by JS Beautify, Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "css": {
        "indent_char": " "
    }
}
```

####  [CSS - Selector separator newline](#css---selector-separator-newline) 

**Namespace**: `css`

**Key**: `selector_separator_newline`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

Add a newline between multiple selectors (Supported by JS Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "css": {
        "selector_separator_newline": false
    }
}
```

####  [CSS - Newline between rules](#css---newline-between-rules) 

**Namespace**: `css`

**Key**: `newline_between_rules`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Add a newline between CSS rules (Supported by JS Beautify, Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "css": {
        "newline_between_rules": false
    }
}
```

####  [CSS - Preserve newlines](#css---preserve-newlines) 

**Namespace**: `css`

**Key**: `preserve_newlines`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Retain empty lines. Consecutive empty lines will be converted to a single empty line. (Supported by JS Beautify, Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "css": {
        "preserve_newlines": false
    }
}
```

####  [CSS - Wrap line length](#css---wrap-line-length) 

**Namespace**: `css`

**Key**: `wrap_line_length`

**Type**: `integer`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Maximum amount of characters per line (0 = disable) (Supported by JS Beautify, Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "css": {
        "wrap_line_length": 0
    }
}
```

####  [CSS - Indent comments](#css---indent-comments) 

**Namespace**: `css`

**Key**: `indent_comments`

**Default**: `true`

**Type**: `boolean`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Determines whether comments should be indented. (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "css": {
        "indent_comments": true
    }
}
```

####  [CSS - Force indentation](#css---force-indentation) 

**Namespace**: `css`

**Key**: `force_indentation`

**Type**: `boolean`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

if indentation should be forcefully applied to markup even if it disruptively adds unintended whitespace to the documents rendered output (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "css": {
        "force_indentation": false
    }
}
```

####  [CSS - Convert quotes](#css---convert-quotes) 

**Namespace**: `css`

**Key**: `convert_quotes`

**Default**: `none`

**Type**: `string`

**Enum**:  `none`  `double`  `single` 

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Convert the quote characters delimiting strings from either double or single quotes to the other. (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "css": {
        "convert_quotes": "none"
    }
}
```

####  [CSS - Align assignments](#css---align-assignments) 

**Namespace**: `css`

**Key**: `align_assignments`

**Type**: `boolean`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

If lists of assignments or properties should be vertically aligned for faster and easier reading. (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "css": {
        "align_assignments": false
    }
}
```

####  [CSS - No lead zero](#css---no-lead-zero) 

**Namespace**: `css`

**Key**: `no_lead_zero`

**Type**: `boolean`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

If in CSS values leading 0s immediately preceeding a decimal should be removed or prevented. (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "css": {
        "no_lead_zero": false
    }
}
```

####  [CSS - comb custom config file](#css---comb-custom-config-file) 

**Namespace**: `css`

**Key**: `configPath`

**Type**: `string`

**Supported Beautifiers**:  [`CSScomb`](#csscomb) 

**Description**:

Path to custom CSScomb config file, used in absense of a `.csscomb.json` or `.csscomb.cson` at the root of your project. (Supported by CSScomb)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "css": {
        "configPath": ""
    }
}
```

####  [CSS - comb predefined config](#css---comb-predefined-config) 

**Namespace**: `css`

**Key**: `predefinedConfig`

**Default**: `csscomb`

**Type**: `string`

**Enum**:  `csscomb`  `yandex`  `zen` 

**Supported Beautifiers**:  [`CSScomb`](#csscomb) 

**Description**:

Used if neither a project or custom config file exists. (Supported by CSScomb)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "css": {
        "predefinedConfig": "csscomb"
    }
}
```

####  [D - Config Path](#d---config-path) 

**Namespace**: `d`

**Key**: `configPath`

**Type**: `string`

**Supported Beautifiers**:  [`Uncrustify`](#uncrustify) 

**Description**:

Path to uncrustify config file. i.e. uncrustify.cfg (Supported by Uncrustify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "d": {
        "configPath": ""
    }
}
```

####  [gherkin - Indent size](#gherkin---indent-size) 

**Namespace**: `gherkin`

**Key**: `indent_size`

**Default**: `4`

**Type**: `integer`

**Supported Beautifiers**:  [`Gherkin formatter`](#gherkin-formatter) 

**Description**:

Indentation size/length (Supported by Gherkin formatter)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "gherkin": {
        "indent_size": 4
    }
}
```

####  [gherkin - Indent char](#gherkin---indent-char) 

**Namespace**: `gherkin`

**Key**: `indent_char`

**Default**: ` `

**Type**: `string`

**Supported Beautifiers**:  [`Gherkin formatter`](#gherkin-formatter) 

**Description**:

Indentation character (Supported by Gherkin formatter)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "gherkin": {
        "indent_char": " "
    }
}
```

####  [Fortran - Emacs path](#fortran---emacs-path) 

**Namespace**: `fortran`

**Key**: `emacs_path`

**Type**: `string`

**Supported Beautifiers**:  [`Fortran Beautifier`](#fortran-beautifier) 

**Description**:

Path to the `emacs` executable (Supported by Fortran Beautifier)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "fortran": {
        "emacs_path": ""
    }
}
```

####  [Fortran - Emacs script path](#fortran---emacs-script-path) 

**Namespace**: `fortran`

**Key**: `emacs_script_path`

**Type**: `string`

**Supported Beautifiers**:  [`Fortran Beautifier`](#fortran-beautifier) 

**Description**:

Path to the emacs script (Supported by Fortran Beautifier)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "fortran": {
        "emacs_script_path": ""
    }
}
```

####  [HTML - Indent inner html](#html---indent-inner-html) 

**Namespace**: `html`

**Key**: `indent_inner_html`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

Indent <head> and <body> sections. (Supported by JS Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "indent_inner_html": false
    }
}
```

####  [HTML - Indent size](#html---indent-size) 

**Namespace**: `html`

**Key**: `indent_size`

**Default**: `4`

**Type**: `integer`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Indentation size/length (Supported by JS Beautify, Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "indent_size": 4
    }
}
```

####  [HTML - Indent char](#html---indent-char) 

**Namespace**: `html`

**Key**: `indent_char`

**Default**: ` `

**Type**: `string`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Indentation character (Supported by JS Beautify, Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "indent_char": " "
    }
}
```

####  [HTML - Brace style](#html---brace-style) 

**Namespace**: `html`

**Key**: `brace_style`

**Default**: `collapse`

**Type**: `string`

**Enum**:  `collapse`  `expand`  `end-expand`  `none` 

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

[collapse|expand|end-expand|none] (Supported by JS Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "brace_style": "collapse"
    }
}
```

####  [HTML - Indent scripts](#html---indent-scripts) 

**Namespace**: `html`

**Key**: `indent_scripts`

**Default**: `normal`

**Type**: `string`

**Enum**:  `keep`  `separate`  `normal` 

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

[keep|separate|normal] (Supported by JS Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "indent_scripts": "normal"
    }
}
```

####  [HTML - Wrap line length](#html---wrap-line-length) 

**Namespace**: `html`

**Key**: `wrap_line_length`

**Default**: `250`

**Type**: `integer`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Maximum characters per line (0 disables) (Supported by JS Beautify, Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "wrap_line_length": 250
    }
}
```

####  [HTML - Wrap attributes](#html---wrap-attributes) 

**Namespace**: `html`

**Key**: `wrap_attributes`

**Default**: `auto`

**Type**: `string`

**Enum**:  `auto`  `force` 

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

Wrap attributes to new lines [auto|force] (Supported by JS Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "wrap_attributes": "auto"
    }
}
```

####  [HTML - Wrap attributes indent size](#html---wrap-attributes-indent-size) 

**Namespace**: `html`

**Key**: `wrap_attributes_indent_size`

**Default**: `4`

**Type**: `integer`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

Indent wrapped attributes to after N characters (Supported by JS Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "wrap_attributes_indent_size": 4
    }
}
```

####  [HTML - Preserve newlines](#html---preserve-newlines) 

**Namespace**: `html`

**Key**: `preserve_newlines`

**Default**: `true`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Preserve line-breaks (Supported by JS Beautify, Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "preserve_newlines": true
    }
}
```

####  [HTML - Max preserve newlines](#html---max-preserve-newlines) 

**Namespace**: `html`

**Key**: `max_preserve_newlines`

**Default**: `10`

**Type**: `integer`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

Number of line-breaks to be preserved in one chunk (Supported by JS Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "max_preserve_newlines": 10
    }
}
```

####  [HTML - Unformatted](#html---unformatted) 

**Namespace**: `html`

**Key**: `unformatted`

**Default**: `a,sub,sup,b,i,u`

**Type**: `array`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

List of tags (defaults to inline) that should not be reformatted (Supported by JS Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "unformatted": [
            "a",
            "sub",
            "sup",
            "b",
            "i",
            "u"
        ]
    }
}
```

####  [HTML - End with newline](#html---end-with-newline) 

**Namespace**: `html`

**Key**: `end_with_newline`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

End output with newline (Supported by JS Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "end_with_newline": false
    }
}
```

####  [HTML - Extra liners](#html---extra-liners) 

**Namespace**: `html`

**Key**: `extra_liners`

**Default**: `head,body,/html`

**Type**: `array`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

List of tags (defaults to [head,body,/html] that should have an extra newline before them. (Supported by JS Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "extra_liners": [
            "head",
            "body",
            "/html"
        ]
    }
}
```

####  [Java - Config Path](#java---config-path) 

**Namespace**: `java`

**Key**: `configPath`

**Type**: `string`

**Supported Beautifiers**:  [`Uncrustify`](#uncrustify) 

**Description**:

Path to uncrustify config file. i.e. uncrustify.cfg (Supported by Uncrustify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "java": {
        "configPath": ""
    }
}
```

####  [JavaScript - Indent size](#javascript---indent-size) 

**Namespace**: `js`

**Key**: `indent_size`

**Default**: `4`

**Type**: `integer`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Indentation size/length (Supported by JS Beautify, Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "indent_size": 4
    }
}
```

####  [JavaScript - Indent char](#javascript---indent-char) 

**Namespace**: `js`

**Key**: `indent_char`

**Default**: ` `

**Type**: `string`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Indentation character (Supported by JS Beautify, Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "indent_char": " "
    }
}
```

####  [JavaScript - Indent level](#javascript---indent-level) 

**Namespace**: `js`

**Key**: `indent_level`

**Type**: `integer`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

Initial indentation level (Supported by JS Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "indent_level": 0
    }
}
```

####  [JavaScript - Indent with tabs](#javascript---indent-with-tabs) 

**Namespace**: `js`

**Key**: `indent_with_tabs`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

Indentation uses tabs, overrides `Indent Size` and `Indent Char` (Supported by JS Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "indent_with_tabs": false
    }
}
```

####  [JavaScript - Preserve newlines](#javascript---preserve-newlines) 

**Namespace**: `js`

**Key**: `preserve_newlines`

**Default**: `true`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Preserve line-breaks (Supported by JS Beautify, Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "preserve_newlines": true
    }
}
```

####  [JavaScript - Max preserve newlines](#javascript---max-preserve-newlines) 

**Namespace**: `js`

**Key**: `max_preserve_newlines`

**Default**: `10`

**Type**: `integer`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

Number of line-breaks to be preserved in one chunk (Supported by JS Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "max_preserve_newlines": 10
    }
}
```

####  [JavaScript - Space in paren](#javascript---space-in-paren) 

**Namespace**: `js`

**Key**: `space_in_paren`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

Add padding spaces within paren, ie. f( a, b ) (Supported by JS Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "space_in_paren": false
    }
}
```

####  [JavaScript - Jslint happy](#javascript---jslint-happy) 

**Namespace**: `js`

**Key**: `jslint_happy`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

Enable jslint-stricter mode (Supported by JS Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "jslint_happy": false
    }
}
```

####  [JavaScript - Space after anon function](#javascript---space-after-anon-function) 

**Namespace**: `js`

**Key**: `space_after_anon_function`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Add a space before an anonymous function's parens, ie. function () (Supported by JS Beautify, Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "space_after_anon_function": false
    }
}
```

####  [JavaScript - Brace style](#javascript---brace-style) 

**Namespace**: `js`

**Key**: `brace_style`

**Default**: `collapse`

**Type**: `string`

**Enum**:  `collapse`  `expand`  `end-expand`  `none` 

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

[collapse|expand|end-expand|none] (Supported by JS Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "brace_style": "collapse"
    }
}
```

####  [JavaScript - Break chained methods](#javascript---break-chained-methods) 

**Namespace**: `js`

**Key**: `break_chained_methods`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Break chained method calls across subsequent lines (Supported by JS Beautify, Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "break_chained_methods": false
    }
}
```

####  [JavaScript - Keep array indentation](#javascript---keep-array-indentation) 

**Namespace**: `js`

**Key**: `keep_array_indentation`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

Preserve array indentation (Supported by JS Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "keep_array_indentation": false
    }
}
```

####  [JavaScript - Keep function indentation](#javascript---keep-function-indentation) 

**Namespace**: `js`

**Key**: `keep_function_indentation`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

 (Supported by JS Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "keep_function_indentation": false
    }
}
```

####  [JavaScript - Space before conditional](#javascript---space-before-conditional) 

**Namespace**: `js`

**Key**: `space_before_conditional`

**Default**: `true`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

 (Supported by JS Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "space_before_conditional": true
    }
}
```

####  [JavaScript - Eval code](#javascript---eval-code) 

**Namespace**: `js`

**Key**: `eval_code`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

 (Supported by JS Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "eval_code": false
    }
}
```

####  [JavaScript - Unescape strings](#javascript---unescape-strings) 

**Namespace**: `js`

**Key**: `unescape_strings`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

Decode printable characters encoded in xNN notation (Supported by JS Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "unescape_strings": false
    }
}
```

####  [JavaScript - Wrap line length](#javascript---wrap-line-length) 

**Namespace**: `js`

**Key**: `wrap_line_length`

**Type**: `integer`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Wrap lines at next opportunity after N characters (Supported by JS Beautify, Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "wrap_line_length": 0
    }
}
```

####  [JavaScript - End with newline](#javascript---end-with-newline) 

**Namespace**: `js`

**Key**: `end_with_newline`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

End output with newline (Supported by JS Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "end_with_newline": false
    }
}
```

####  [JavaScript - End with comma](#javascript---end-with-comma) 

**Namespace**: `js`

**Key**: `end_with_comma`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

If a terminating comma should be inserted into arrays, object literals, and destructured objects. (Supported by JS Beautify, Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "end_with_comma": false
    }
}
```

####  [Objective-C - Config Path](#objective-c---config-path) 

**Namespace**: `objectivec`

**Key**: `configPath`

**Type**: `string`

**Supported Beautifiers**:  [`Uncrustify`](#uncrustify) 

**Description**:

Path to uncrustify config file. i.e. uncrustify.cfg (Supported by Uncrustify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "objectivec": {
        "configPath": ""
    }
}
```

####  [Pawn - Config Path](#pawn---config-path) 

**Namespace**: `pawn`

**Key**: `configPath`

**Type**: `string`

**Supported Beautifiers**:  [`Uncrustify`](#uncrustify) 

**Description**:

Path to uncrustify config file. i.e. uncrustify.cfg (Supported by Uncrustify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "pawn": {
        "configPath": ""
    }
}
```

####  [Perl - Perltidy profile](#perl---perltidy-profile) 

**Namespace**: `perl`

**Key**: `perltidy_profile`

**Type**: `string`

**Supported Beautifiers**:  [`Perltidy`](#perltidy) 

**Description**:

Specify a configuration file which will override the default name of .perltidyrc (Supported by Perltidy)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "perl": {
        "perltidy_profile": ""
    }
}
```

####  [PHP - PHP-CS-Fixer Path](#php---php-cs-fixer-path) 

**Namespace**: `php`

**Key**: `cs_fixer_path`

**Type**: `string`

**Supported Beautifiers**:  [`PHP-CS-Fixer`](#php-cs-fixer) 

**Description**:

Path to the `php-cs-fixer` CLI executable (Supported by PHP-CS-Fixer)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "php": {
        "cs_fixer_path": ""
    }
}
```

####  [PHP - Fixers](#php---fixers) 

**Namespace**: `php`

**Key**: `fixers`

**Type**: `string`

**Supported Beautifiers**:  [`PHP-CS-Fixer`](#php-cs-fixer) 

**Description**:

Add fixer(s). i.e. linefeed,-short_tag,indentation (Supported by PHP-CS-Fixer)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "php": {
        "fixers": ""
    }
}
```

####  [PHP - Level](#php---level) 

**Namespace**: `php`

**Key**: `level`

**Type**: `string`

**Supported Beautifiers**:  [`PHP-CS-Fixer`](#php-cs-fixer) 

**Description**:

By default, all PSR-2 fixers and some additional ones are run. (Supported by PHP-CS-Fixer)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "php": {
        "level": ""
    }
}
```

####  [Python - Max line length](#python---max-line-length) 

**Namespace**: `python`

**Key**: `max_line_length`

**Default**: `79`

**Type**: `integer`

**Supported Beautifiers**:  [`autopep8`](#autopep8) 

**Description**:

set maximum allowed line length (Supported by autopep8)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "python": {
        "max_line_length": 79
    }
}
```

####  [Python - Indent size](#python---indent-size) 

**Namespace**: `python`

**Key**: `indent_size`

**Default**: `4`

**Type**: `integer`

**Supported Beautifiers**:  [`autopep8`](#autopep8) 

**Description**:

Indentation size/length (Supported by autopep8)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "python": {
        "indent_size": 4
    }
}
```

####  [Python - Ignore](#python---ignore) 

**Namespace**: `python`

**Key**: `ignore`

**Default**: `E24`

**Type**: `array`

**Supported Beautifiers**:  [`autopep8`](#autopep8) 

**Description**:

do not fix these errors/warnings (Supported by autopep8)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "python": {
        "ignore": [
            "E24"
        ]
    }
}
```

####  [Ruby - Indent size](#ruby---indent-size) 

**Namespace**: `ruby`

**Key**: `indent_size`

**Default**: `4`

**Type**: `integer`

**Supported Beautifiers**:  [`Rubocop`](#rubocop)  [`Ruby Beautify`](#ruby-beautify) 

**Description**:

Indentation size/length (Supported by Rubocop, Ruby Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "ruby": {
        "indent_size": 4
    }
}
```

####  [Ruby - Indent char](#ruby---indent-char) 

**Namespace**: `ruby`

**Key**: `indent_char`

**Default**: ` `

**Type**: `string`

**Enum**:  ` `  `	` 

**Supported Beautifiers**:  [`Ruby Beautify`](#ruby-beautify) 

**Description**:

Indentation character (Supported by Ruby Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "ruby": {
        "indent_char": " "
    }
}
```

####  [Rust - Rustfmt path](#rust---rustfmt-path) 

**Namespace**: `rust`

**Key**: `rustfmt_path`

**Type**: `string`

**Supported Beautifiers**:  [`rustfmt`](#rustfmt) 

**Description**:

Path to rustfmt program (Supported by rustfmt)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "rust": {
        "rustfmt_path": ""
    }
}
```

####  [SQL - Indent size](#sql---indent-size) 

**Namespace**: `sql`

**Key**: `indent_size`

**Default**: `4`

**Type**: `integer`

**Supported Beautifiers**:  [`sqlformat`](#sqlformat) 

**Description**:

Indentation size/length (Supported by sqlformat)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "sql": {
        "indent_size": 4
    }
}
```

####  [SQL - Keywords](#sql---keywords) 

**Namespace**: `sql`

**Key**: `keywords`

**Default**: `upper`

**Type**: `string`

**Enum**:  `lower`  `upper`  `capitalize` 

**Supported Beautifiers**:  [`sqlformat`](#sqlformat) 

**Description**:

Change case of keywords (Supported by sqlformat)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "sql": {
        "keywords": "upper"
    }
}
```

####  [SQL - Identifiers](#sql---identifiers) 

**Namespace**: `sql`

**Key**: `identifiers`

**Default**: `lower`

**Type**: `string`

**Enum**:  `lower`  `upper`  `capitalize` 

**Supported Beautifiers**:  [`sqlformat`](#sqlformat) 

**Description**:

Change case of identifiers (Supported by sqlformat)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "sql": {
        "identifiers": "lower"
    }
}
```

####  [Vala - Config Path](#vala---config-path) 

**Namespace**: `vala`

**Key**: `configPath`

**Type**: `string`

**Supported Beautifiers**:  [`Uncrustify`](#uncrustify) 

**Description**:

Path to uncrustify config file. i.e. uncrustify.cfg (Supported by Uncrustify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "vala": {
        "configPath": ""
    }
}
```

####  [Language Config - Arduino - Disable Beautifying Language](#language-config---arduino---disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable Arduino Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - Arduino - Disable Beautifying Language*" and change it to your desired configuration.

####  [Language Config - Arduino - Default Beautifier](#language-config---arduino---default-beautifier) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Default**: `Uncrustify`

**Type**: `string`

**Enum**:  `Uncrustify` 

**Description**:

Default Beautifier to be used for Arduino

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - Arduino - Default Beautifier*" and change it to your desired configuration.

####  [Language Config - Arduino - Beautify On Save](#language-config---arduino---beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify Arduino files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - Arduino - Beautify On Save*" and change it to your desired configuration.

####  [Language Config - C# - Disable Beautifying Language](#language-config---c---disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable C# Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - C# - Disable Beautifying Language*" and change it to your desired configuration.

####  [Language Config - C# - Default Beautifier](#language-config---c---default-beautifier) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Default**: `Uncrustify`

**Type**: `string`

**Enum**:  `Uncrustify` 

**Description**:

Default Beautifier to be used for C#

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - C# - Default Beautifier*" and change it to your desired configuration.

####  [Language Config - C# - Beautify On Save](#language-config---c---beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify C# files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - C# - Beautify On Save*" and change it to your desired configuration.

####  [Language Config - C - Disable Beautifying Language](#language-config---c---disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable C Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - C - Disable Beautifying Language*" and change it to your desired configuration.

####  [Language Config - C - Default Beautifier](#language-config---c---default-beautifier) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Default**: `Uncrustify`

**Type**: `string`

**Enum**:  `Uncrustify`  `clang-format` 

**Description**:

Default Beautifier to be used for C

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - C - Default Beautifier*" and change it to your desired configuration.

####  [Language Config - C - Beautify On Save](#language-config---c---beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify C files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - C - Beautify On Save*" and change it to your desired configuration.

####  [Language Config - CoffeeScript - Disable Beautifying Language](#language-config---coffeescript---disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable CoffeeScript Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - CoffeeScript - Disable Beautifying Language*" and change it to your desired configuration.

####  [Language Config - CoffeeScript - Default Beautifier](#language-config---coffeescript---default-beautifier) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Default**: `coffee-fmt`

**Type**: `string`

**Enum**:  `Coffee Formatter`  `coffee-fmt` 

**Description**:

Default Beautifier to be used for CoffeeScript

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - CoffeeScript - Default Beautifier*" and change it to your desired configuration.

####  [Language Config - CoffeeScript - Beautify On Save](#language-config---coffeescript---beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify CoffeeScript files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - CoffeeScript - Beautify On Save*" and change it to your desired configuration.

####  [Language Config - C++ - Disable Beautifying Language](#language-config---c---disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable C++ Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - C++ - Disable Beautifying Language*" and change it to your desired configuration.

####  [Language Config - C++ - Default Beautifier](#language-config---c---default-beautifier) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Default**: `Uncrustify`

**Type**: `string`

**Enum**:  `Uncrustify`  `clang-format` 

**Description**:

Default Beautifier to be used for C++

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - C++ - Default Beautifier*" and change it to your desired configuration.

####  [Language Config - C++ - Beautify On Save](#language-config---c---beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify C++ files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - C++ - Beautify On Save*" and change it to your desired configuration.

####  [Language Config - CSS - Disable Beautifying Language](#language-config---css---disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable CSS Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - CSS - Disable Beautifying Language*" and change it to your desired configuration.

####  [Language Config - CSS - Default Beautifier](#language-config---css---default-beautifier) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Default**: `JS Beautify`

**Type**: `string`

**Enum**:  `CSScomb`  `JS Beautify`  `Pretty Diff` 

**Description**:

Default Beautifier to be used for CSS

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - CSS - Default Beautifier*" and change it to your desired configuration.

####  [Language Config - CSS - Beautify On Save](#language-config---css---beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify CSS files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - CSS - Beautify On Save*" and change it to your desired configuration.

####  [Language Config - CSV - Disable Beautifying Language](#language-config---csv---disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable CSV Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - CSV - Disable Beautifying Language*" and change it to your desired configuration.

####  [Language Config - CSV - Default Beautifier](#language-config---csv---default-beautifier) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Default**: `Pretty Diff`

**Type**: `string`

**Enum**:  `Pretty Diff` 

**Description**:

Default Beautifier to be used for CSV

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - CSV - Default Beautifier*" and change it to your desired configuration.

####  [Language Config - CSV - Beautify On Save](#language-config---csv---beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify CSV files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - CSV - Beautify On Save*" and change it to your desired configuration.

####  [Language Config - D - Disable Beautifying Language](#language-config---d---disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable D Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - D - Disable Beautifying Language*" and change it to your desired configuration.

####  [Language Config - D - Default Beautifier](#language-config---d---default-beautifier) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Default**: `Uncrustify`

**Type**: `string`

**Enum**:  `Uncrustify` 

**Description**:

Default Beautifier to be used for D

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - D - Default Beautifier*" and change it to your desired configuration.

####  [Language Config - D - Beautify On Save](#language-config---d---beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify D files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - D - Beautify On Save*" and change it to your desired configuration.

####  [Language Config - EJS - Disable Beautifying Language](#language-config---ejs---disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable EJS Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - EJS - Disable Beautifying Language*" and change it to your desired configuration.

####  [Language Config - EJS - Default Beautifier](#language-config---ejs---default-beautifier) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Default**: `Pretty Diff`

**Type**: `string`

**Enum**:  `Pretty Diff` 

**Description**:

Default Beautifier to be used for EJS

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - EJS - Default Beautifier*" and change it to your desired configuration.

####  [Language Config - EJS - Beautify On Save](#language-config---ejs---beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify EJS files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - EJS - Beautify On Save*" and change it to your desired configuration.

####  [Language Config - ERB - Disable Beautifying Language](#language-config---erb---disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable ERB Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - ERB - Disable Beautifying Language*" and change it to your desired configuration.

####  [Language Config - ERB - Default Beautifier](#language-config---erb---default-beautifier) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Default**: `Pretty Diff`

**Type**: `string`

**Enum**:  `HTML Beautifier`  `Pretty Diff` 

**Description**:

Default Beautifier to be used for ERB

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - ERB - Default Beautifier*" and change it to your desired configuration.

####  [Language Config - ERB - Beautify On Save](#language-config---erb---beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify ERB files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - ERB - Beautify On Save*" and change it to your desired configuration.

####  [Language Config - gherkin - Disable Beautifying Language](#language-config---gherkin---disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable gherkin Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - gherkin - Disable Beautifying Language*" and change it to your desired configuration.

####  [Language Config - gherkin - Default Beautifier](#language-config---gherkin---default-beautifier) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Default**: `Gherkin formatter`

**Type**: `string`

**Enum**:  `Gherkin formatter` 

**Description**:

Default Beautifier to be used for gherkin

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - gherkin - Default Beautifier*" and change it to your desired configuration.

####  [Language Config - gherkin - Beautify On Save](#language-config---gherkin---beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify gherkin files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - gherkin - Beautify On Save*" and change it to your desired configuration.

####  [Language Config - Go - Disable Beautifying Language](#language-config---go---disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable Go Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - Go - Disable Beautifying Language*" and change it to your desired configuration.

####  [Language Config - Go - Default Beautifier](#language-config---go---default-beautifier) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Default**: `gofmt`

**Type**: `string`

**Enum**:  `gofmt` 

**Description**:

Default Beautifier to be used for Go

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - Go - Default Beautifier*" and change it to your desired configuration.

####  [Language Config - Go - Beautify On Save](#language-config---go---beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify Go files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - Go - Beautify On Save*" and change it to your desired configuration.

####  [Language Config - Fortran - Disable Beautifying Language](#language-config---fortran---disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable Fortran Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - Fortran - Disable Beautifying Language*" and change it to your desired configuration.

####  [Language Config - Fortran - Default Beautifier](#language-config---fortran---default-beautifier) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Default**: `Fortran Beautifier`

**Type**: `string`

**Enum**:  `Fortran Beautifier` 

**Description**:

Default Beautifier to be used for Fortran

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - Fortran - Default Beautifier*" and change it to your desired configuration.

####  [Language Config - Fortran - Beautify On Save](#language-config---fortran---beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify Fortran files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - Fortran - Beautify On Save*" and change it to your desired configuration.

####  [Language Config - Handlebars - Disable Beautifying Language](#language-config---handlebars---disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable Handlebars Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - Handlebars - Disable Beautifying Language*" and change it to your desired configuration.

####  [Language Config - Handlebars - Default Beautifier](#language-config---handlebars---default-beautifier) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Default**: `JS Beautify`

**Type**: `string`

**Enum**:  `JS Beautify` 

**Description**:

Default Beautifier to be used for Handlebars

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - Handlebars - Default Beautifier*" and change it to your desired configuration.

####  [Language Config - Handlebars - Beautify On Save](#language-config---handlebars---beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify Handlebars files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - Handlebars - Beautify On Save*" and change it to your desired configuration.

####  [Language Config - Haskell - Disable Beautifying Language](#language-config---haskell---disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable Haskell Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - Haskell - Disable Beautifying Language*" and change it to your desired configuration.

####  [Language Config - Haskell - Default Beautifier](#language-config---haskell---default-beautifier) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Default**: `stylish-haskell`

**Type**: `string`

**Enum**:  `stylish-haskell` 

**Description**:

Default Beautifier to be used for Haskell

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - Haskell - Default Beautifier*" and change it to your desired configuration.

####  [Language Config - Haskell - Beautify On Save](#language-config---haskell---beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify Haskell files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - Haskell - Beautify On Save*" and change it to your desired configuration.

####  [Language Config - HTML - Disable Beautifying Language](#language-config---html---disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable HTML Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - HTML - Disable Beautifying Language*" and change it to your desired configuration.

####  [Language Config - HTML - Default Beautifier](#language-config---html---default-beautifier) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Default**: `JS Beautify`

**Type**: `string`

**Enum**:  `JS Beautify`  `Pretty Diff` 

**Description**:

Default Beautifier to be used for HTML

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - HTML - Default Beautifier*" and change it to your desired configuration.

####  [Language Config - HTML - Beautify On Save](#language-config---html---beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify HTML files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - HTML - Beautify On Save*" and change it to your desired configuration.

####  [Language Config - Java - Disable Beautifying Language](#language-config---java---disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable Java Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - Java - Disable Beautifying Language*" and change it to your desired configuration.

####  [Language Config - Java - Default Beautifier](#language-config---java---default-beautifier) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Default**: `Uncrustify`

**Type**: `string`

**Enum**:  `Uncrustify` 

**Description**:

Default Beautifier to be used for Java

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - Java - Default Beautifier*" and change it to your desired configuration.

####  [Language Config - Java - Beautify On Save](#language-config---java---beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify Java files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - Java - Beautify On Save*" and change it to your desired configuration.

####  [Language Config - JavaScript - Disable Beautifying Language](#language-config---javascript---disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable JavaScript Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - JavaScript - Disable Beautifying Language*" and change it to your desired configuration.

####  [Language Config - JavaScript - Default Beautifier](#language-config---javascript---default-beautifier) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Default**: `JS Beautify`

**Type**: `string`

**Enum**:  `JS Beautify`  `JSCS Fixer`  `Pretty Diff` 

**Description**:

Default Beautifier to be used for JavaScript

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - JavaScript - Default Beautifier*" and change it to your desired configuration.

####  [Language Config - JavaScript - Beautify On Save](#language-config---javascript---beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify JavaScript files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - JavaScript - Beautify On Save*" and change it to your desired configuration.

####  [Language Config - JSON - Disable Beautifying Language](#language-config---json---disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable JSON Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - JSON - Disable Beautifying Language*" and change it to your desired configuration.

####  [Language Config - JSON - Default Beautifier](#language-config---json---default-beautifier) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Default**: `JS Beautify`

**Type**: `string`

**Enum**:  `JS Beautify`  `Pretty Diff` 

**Description**:

Default Beautifier to be used for JSON

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - JSON - Default Beautifier*" and change it to your desired configuration.

####  [Language Config - JSON - Beautify On Save](#language-config---json---beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify JSON files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - JSON - Beautify On Save*" and change it to your desired configuration.

####  [Language Config - JSX - Disable Beautifying Language](#language-config---jsx---disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable JSX Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - JSX - Disable Beautifying Language*" and change it to your desired configuration.

####  [Language Config - JSX - Default Beautifier](#language-config---jsx---default-beautifier) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Default**: `Pretty Diff`

**Type**: `string`

**Enum**:  `Pretty Diff` 

**Description**:

Default Beautifier to be used for JSX

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - JSX - Default Beautifier*" and change it to your desired configuration.

####  [Language Config - JSX - Beautify On Save](#language-config---jsx---beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify JSX files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - JSX - Beautify On Save*" and change it to your desired configuration.

####  [Language Config - LESS - Disable Beautifying Language](#language-config---less---disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable LESS Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - LESS - Disable Beautifying Language*" and change it to your desired configuration.

####  [Language Config - LESS - Default Beautifier](#language-config---less---default-beautifier) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Default**: `Pretty Diff`

**Type**: `string`

**Enum**:  `CSScomb`  `Pretty Diff` 

**Description**:

Default Beautifier to be used for LESS

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - LESS - Default Beautifier*" and change it to your desired configuration.

####  [Language Config - LESS - Beautify On Save](#language-config---less---beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify LESS files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - LESS - Beautify On Save*" and change it to your desired configuration.

####  [Language Config - Markdown - Disable Beautifying Language](#language-config---markdown---disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable Markdown Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - Markdown - Disable Beautifying Language*" and change it to your desired configuration.

####  [Language Config - Markdown - Default Beautifier](#language-config---markdown---default-beautifier) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Default**: `Tidy Markdown`

**Type**: `string`

**Enum**:  `Tidy Markdown` 

**Description**:

Default Beautifier to be used for Markdown

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - Markdown - Default Beautifier*" and change it to your desired configuration.

####  [Language Config - Markdown - Beautify On Save](#language-config---markdown---beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify Markdown files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - Markdown - Beautify On Save*" and change it to your desired configuration.

####  [Language Config - Marko - Disable Beautifying Language](#language-config---marko---disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable Marko Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - Marko - Disable Beautifying Language*" and change it to your desired configuration.

####  [Language Config - Marko - Default Beautifier](#language-config---marko---default-beautifier) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Default**: `JS Beautify`

**Type**: `string`

**Enum**:  `JS Beautify` 

**Description**:

Default Beautifier to be used for Marko

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - Marko - Default Beautifier*" and change it to your desired configuration.

####  [Language Config - Marko - Beautify On Save](#language-config---marko---beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify Marko files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - Marko - Beautify On Save*" and change it to your desired configuration.

####  [Language Config - Mustache - Disable Beautifying Language](#language-config---mustache---disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable Mustache Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - Mustache - Disable Beautifying Language*" and change it to your desired configuration.

####  [Language Config - Mustache - Default Beautifier](#language-config---mustache---default-beautifier) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Default**: `JS Beautify`

**Type**: `string`

**Enum**:  `JS Beautify` 

**Description**:

Default Beautifier to be used for Mustache

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - Mustache - Default Beautifier*" and change it to your desired configuration.

####  [Language Config - Mustache - Beautify On Save](#language-config---mustache---beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify Mustache files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - Mustache - Beautify On Save*" and change it to your desired configuration.

####  [Language Config - Objective-C - Disable Beautifying Language](#language-config---objective-c---disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable Objective-C Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - Objective-C - Disable Beautifying Language*" and change it to your desired configuration.

####  [Language Config - Objective-C - Default Beautifier](#language-config---objective-c---default-beautifier) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Default**: `Uncrustify`

**Type**: `string`

**Enum**:  `Uncrustify`  `clang-format` 

**Description**:

Default Beautifier to be used for Objective-C

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - Objective-C - Default Beautifier*" and change it to your desired configuration.

####  [Language Config - Objective-C - Beautify On Save](#language-config---objective-c---beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify Objective-C files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - Objective-C - Beautify On Save*" and change it to your desired configuration.

####  [Language Config - Pawn - Disable Beautifying Language](#language-config---pawn---disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable Pawn Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - Pawn - Disable Beautifying Language*" and change it to your desired configuration.

####  [Language Config - Pawn - Default Beautifier](#language-config---pawn---default-beautifier) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Default**: `Uncrustify`

**Type**: `string`

**Enum**:  `Uncrustify` 

**Description**:

Default Beautifier to be used for Pawn

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - Pawn - Default Beautifier*" and change it to your desired configuration.

####  [Language Config - Pawn - Beautify On Save](#language-config---pawn---beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify Pawn files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - Pawn - Beautify On Save*" and change it to your desired configuration.

####  [Language Config - Perl - Disable Beautifying Language](#language-config---perl---disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable Perl Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - Perl - Disable Beautifying Language*" and change it to your desired configuration.

####  [Language Config - Perl - Default Beautifier](#language-config---perl---default-beautifier) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Default**: `Perltidy`

**Type**: `string`

**Enum**:  `Perltidy` 

**Description**:

Default Beautifier to be used for Perl

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - Perl - Default Beautifier*" and change it to your desired configuration.

####  [Language Config - Perl - Beautify On Save](#language-config---perl---beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify Perl files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - Perl - Beautify On Save*" and change it to your desired configuration.

####  [Language Config - PHP - Disable Beautifying Language](#language-config---php---disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable PHP Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - PHP - Disable Beautifying Language*" and change it to your desired configuration.

####  [Language Config - PHP - Default Beautifier](#language-config---php---default-beautifier) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Default**: `PHP-CS-Fixer`

**Type**: `string`

**Enum**:  `PHP-CS-Fixer` 

**Description**:

Default Beautifier to be used for PHP

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - PHP - Default Beautifier*" and change it to your desired configuration.

####  [Language Config - PHP - Beautify On Save](#language-config---php---beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify PHP files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - PHP - Beautify On Save*" and change it to your desired configuration.

####  [Language Config - Puppet - Disable Beautifying Language](#language-config---puppet---disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable Puppet Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - Puppet - Disable Beautifying Language*" and change it to your desired configuration.

####  [Language Config - Puppet - Default Beautifier](#language-config---puppet---default-beautifier) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Default**: `puppet-lint`

**Type**: `string`

**Enum**:  `puppet-lint` 

**Description**:

Default Beautifier to be used for Puppet

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - Puppet - Default Beautifier*" and change it to your desired configuration.

####  [Language Config - Puppet - Beautify On Save](#language-config---puppet---beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify Puppet files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - Puppet - Beautify On Save*" and change it to your desired configuration.

####  [Language Config - Python - Disable Beautifying Language](#language-config---python---disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable Python Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - Python - Disable Beautifying Language*" and change it to your desired configuration.

####  [Language Config - Python - Default Beautifier](#language-config---python---default-beautifier) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Default**: `autopep8`

**Type**: `string`

**Enum**:  `autopep8`  `yapf` 

**Description**:

Default Beautifier to be used for Python

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - Python - Default Beautifier*" and change it to your desired configuration.

####  [Language Config - Python - Beautify On Save](#language-config---python---beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify Python files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - Python - Beautify On Save*" and change it to your desired configuration.

####  [Language Config - Ruby - Disable Beautifying Language](#language-config---ruby---disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable Ruby Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - Ruby - Disable Beautifying Language*" and change it to your desired configuration.

####  [Language Config - Ruby - Default Beautifier](#language-config---ruby---default-beautifier) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Default**: `Rubocop`

**Type**: `string`

**Enum**:  `Rubocop`  `Ruby Beautify` 

**Description**:

Default Beautifier to be used for Ruby

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - Ruby - Default Beautifier*" and change it to your desired configuration.

####  [Language Config - Ruby - Beautify On Save](#language-config---ruby---beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify Ruby files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - Ruby - Beautify On Save*" and change it to your desired configuration.

####  [Language Config - Rust - Disable Beautifying Language](#language-config---rust---disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable Rust Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - Rust - Disable Beautifying Language*" and change it to your desired configuration.

####  [Language Config - Rust - Default Beautifier](#language-config---rust---default-beautifier) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Default**: `rustfmt`

**Type**: `string`

**Enum**:  `rustfmt` 

**Description**:

Default Beautifier to be used for Rust

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - Rust - Default Beautifier*" and change it to your desired configuration.

####  [Language Config - Rust - Beautify On Save](#language-config---rust---beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify Rust files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - Rust - Beautify On Save*" and change it to your desired configuration.

####  [Language Config - Sass - Disable Beautifying Language](#language-config---sass---disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable Sass Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - Sass - Disable Beautifying Language*" and change it to your desired configuration.

####  [Language Config - Sass - Default Beautifier](#language-config---sass---default-beautifier) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Default**: `Pretty Diff`

**Type**: `string`

**Enum**:  `CSScomb`  `Pretty Diff` 

**Description**:

Default Beautifier to be used for Sass

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - Sass - Default Beautifier*" and change it to your desired configuration.

####  [Language Config - Sass - Beautify On Save](#language-config---sass---beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify Sass files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - Sass - Beautify On Save*" and change it to your desired configuration.

####  [Language Config - SCSS - Disable Beautifying Language](#language-config---scss---disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable SCSS Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - SCSS - Disable Beautifying Language*" and change it to your desired configuration.

####  [Language Config - SCSS - Default Beautifier](#language-config---scss---default-beautifier) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Default**: `Pretty Diff`

**Type**: `string`

**Enum**:  `CSScomb`  `Pretty Diff` 

**Description**:

Default Beautifier to be used for SCSS

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - SCSS - Default Beautifier*" and change it to your desired configuration.

####  [Language Config - SCSS - Beautify On Save](#language-config---scss---beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify SCSS files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - SCSS - Beautify On Save*" and change it to your desired configuration.

####  [Language Config - Spacebars - Disable Beautifying Language](#language-config---spacebars---disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable Spacebars Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - Spacebars - Disable Beautifying Language*" and change it to your desired configuration.

####  [Language Config - Spacebars - Default Beautifier](#language-config---spacebars---default-beautifier) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Default**: `Pretty Diff`

**Type**: `string`

**Enum**:  `Pretty Diff` 

**Description**:

Default Beautifier to be used for Spacebars

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - Spacebars - Default Beautifier*" and change it to your desired configuration.

####  [Language Config - Spacebars - Beautify On Save](#language-config---spacebars---beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify Spacebars files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - Spacebars - Beautify On Save*" and change it to your desired configuration.

####  [Language Config - SQL - Disable Beautifying Language](#language-config---sql---disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable SQL Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - SQL - Disable Beautifying Language*" and change it to your desired configuration.

####  [Language Config - SQL - Default Beautifier](#language-config---sql---default-beautifier) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Default**: `sqlformat`

**Type**: `string`

**Enum**:  `sqlformat` 

**Description**:

Default Beautifier to be used for SQL

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - SQL - Default Beautifier*" and change it to your desired configuration.

####  [Language Config - SQL - Beautify On Save](#language-config---sql---beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify SQL files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - SQL - Beautify On Save*" and change it to your desired configuration.

####  [Language Config - SVG - Disable Beautifying Language](#language-config---svg---disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable SVG Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - SVG - Disable Beautifying Language*" and change it to your desired configuration.

####  [Language Config - SVG - Default Beautifier](#language-config---svg---default-beautifier) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Default**: `Pretty Diff`

**Type**: `string`

**Enum**:  `Pretty Diff` 

**Description**:

Default Beautifier to be used for SVG

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - SVG - Default Beautifier*" and change it to your desired configuration.

####  [Language Config - SVG - Beautify On Save](#language-config---svg---beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify SVG files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - SVG - Beautify On Save*" and change it to your desired configuration.

####  [Language Config - Swig - Disable Beautifying Language](#language-config---swig---disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable Swig Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - Swig - Disable Beautifying Language*" and change it to your desired configuration.

####  [Language Config - Swig - Default Beautifier](#language-config---swig---default-beautifier) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Default**: `Pretty Diff`

**Type**: `string`

**Enum**:  `Pretty Diff` 

**Description**:

Default Beautifier to be used for Swig

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - Swig - Default Beautifier*" and change it to your desired configuration.

####  [Language Config - Swig - Beautify On Save](#language-config---swig---beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify Swig files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - Swig - Beautify On Save*" and change it to your desired configuration.

####  [Language Config - TSS - Disable Beautifying Language](#language-config---tss---disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable TSS Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - TSS - Disable Beautifying Language*" and change it to your desired configuration.

####  [Language Config - TSS - Default Beautifier](#language-config---tss---default-beautifier) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Default**: `Pretty Diff`

**Type**: `string`

**Enum**:  `Pretty Diff` 

**Description**:

Default Beautifier to be used for TSS

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - TSS - Default Beautifier*" and change it to your desired configuration.

####  [Language Config - TSS - Beautify On Save](#language-config---tss---beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify TSS files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - TSS - Beautify On Save*" and change it to your desired configuration.

####  [Language Config - Twig - Disable Beautifying Language](#language-config---twig---disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable Twig Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - Twig - Disable Beautifying Language*" and change it to your desired configuration.

####  [Language Config - Twig - Default Beautifier](#language-config---twig---default-beautifier) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Default**: `Pretty Diff`

**Type**: `string`

**Enum**:  `Pretty Diff` 

**Description**:

Default Beautifier to be used for Twig

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - Twig - Default Beautifier*" and change it to your desired configuration.

####  [Language Config - Twig - Beautify On Save](#language-config---twig---beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify Twig files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - Twig - Beautify On Save*" and change it to your desired configuration.

####  [Language Config - TypeScript - Disable Beautifying Language](#language-config---typescript---disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable TypeScript Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - TypeScript - Disable Beautifying Language*" and change it to your desired configuration.

####  [Language Config - TypeScript - Default Beautifier](#language-config---typescript---default-beautifier) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Default**: `TypeScript Formatter`

**Type**: `string`

**Enum**:  `TypeScript Formatter` 

**Description**:

Default Beautifier to be used for TypeScript

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - TypeScript - Default Beautifier*" and change it to your desired configuration.

####  [Language Config - TypeScript - Beautify On Save](#language-config---typescript---beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify TypeScript files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - TypeScript - Beautify On Save*" and change it to your desired configuration.

####  [Language Config - Vala - Disable Beautifying Language](#language-config---vala---disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable Vala Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - Vala - Disable Beautifying Language*" and change it to your desired configuration.

####  [Language Config - Vala - Default Beautifier](#language-config---vala---default-beautifier) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Default**: `Uncrustify`

**Type**: `string`

**Enum**:  `Uncrustify` 

**Description**:

Default Beautifier to be used for Vala

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - Vala - Default Beautifier*" and change it to your desired configuration.

####  [Language Config - Vala - Beautify On Save](#language-config---vala---beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify Vala files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - Vala - Beautify On Save*" and change it to your desired configuration.

####  [Language Config - Visualforce - Disable Beautifying Language](#language-config---visualforce---disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable Visualforce Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - Visualforce - Disable Beautifying Language*" and change it to your desired configuration.

####  [Language Config - Visualforce - Default Beautifier](#language-config---visualforce---default-beautifier) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Default**: `Pretty Diff`

**Type**: `string`

**Enum**:  `Pretty Diff` 

**Description**:

Default Beautifier to be used for Visualforce

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - Visualforce - Default Beautifier*" and change it to your desired configuration.

####  [Language Config - Visualforce - Beautify On Save](#language-config---visualforce---beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify Visualforce files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - Visualforce - Beautify On Save*" and change it to your desired configuration.

####  [Language Config - XML - Disable Beautifying Language](#language-config---xml---disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable XML Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - XML - Disable Beautifying Language*" and change it to your desired configuration.

####  [Language Config - XML - Default Beautifier](#language-config---xml---default-beautifier) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Default**: `Pretty Diff`

**Type**: `string`

**Enum**:  `JS Beautify`  `Pretty Diff` 

**Description**:

Default Beautifier to be used for XML

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - XML - Default Beautifier*" and change it to your desired configuration.

####  [Language Config - XML - Beautify On Save](#language-config---xml---beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify XML files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Language Config - XML - Beautify On Save*" and change it to your desired configuration.


## Beautifier Options

Supported options for each beautifier.

---

### Uncrustify

####  [Arduino - Config Path](#arduino---config-path) 

**Namespace**: `arduino`

**Key**: `configPath`

**Type**: `string`

**Supported Beautifiers**:  [`Uncrustify`](#uncrustify) 

**Description**:

Path to uncrustify config file. i.e. uncrustify.cfg (Supported by Uncrustify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "arduino": {
        "configPath": ""
    }
}
```

####  [C# - Config Path](#c---config-path) 

**Namespace**: `cs`

**Key**: `configPath`

**Type**: `string`

**Supported Beautifiers**:  [`Uncrustify`](#uncrustify) 

**Description**:

Path to uncrustify config file. i.e. uncrustify.cfg (Supported by Uncrustify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "cs": {
        "configPath": ""
    }
}
```

####  [C - Config Path](#c---config-path) 

**Namespace**: `c`

**Key**: `configPath`

**Type**: `string`

**Supported Beautifiers**:  [`Uncrustify`](#uncrustify) 

**Description**:

Path to uncrustify config file. i.e. uncrustify.cfg (Supported by Uncrustify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "c": {
        "configPath": ""
    }
}
```

####  [C++ - Config Path](#c---config-path) 

**Namespace**: `cpp`

**Key**: `configPath`

**Type**: `string`

**Supported Beautifiers**:  [`Uncrustify`](#uncrustify) 

**Description**:

Path to uncrustify config file. i.e. uncrustify.cfg (Supported by Uncrustify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "cpp": {
        "configPath": ""
    }
}
```

####  [D - Config Path](#d---config-path) 

**Namespace**: `d`

**Key**: `configPath`

**Type**: `string`

**Supported Beautifiers**:  [`Uncrustify`](#uncrustify) 

**Description**:

Path to uncrustify config file. i.e. uncrustify.cfg (Supported by Uncrustify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "d": {
        "configPath": ""
    }
}
```

####  [Java - Config Path](#java---config-path) 

**Namespace**: `java`

**Key**: `configPath`

**Type**: `string`

**Supported Beautifiers**:  [`Uncrustify`](#uncrustify) 

**Description**:

Path to uncrustify config file. i.e. uncrustify.cfg (Supported by Uncrustify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "java": {
        "configPath": ""
    }
}
```

####  [Objective-C - Config Path](#objective-c---config-path) 

**Namespace**: `objectivec`

**Key**: `configPath`

**Type**: `string`

**Supported Beautifiers**:  [`Uncrustify`](#uncrustify) 

**Description**:

Path to uncrustify config file. i.e. uncrustify.cfg (Supported by Uncrustify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "objectivec": {
        "configPath": ""
    }
}
```

####  [Pawn - Config Path](#pawn---config-path) 

**Namespace**: `pawn`

**Key**: `configPath`

**Type**: `string`

**Supported Beautifiers**:  [`Uncrustify`](#uncrustify) 

**Description**:

Path to uncrustify config file. i.e. uncrustify.cfg (Supported by Uncrustify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "pawn": {
        "configPath": ""
    }
}
```

####  [Vala - Config Path](#vala---config-path) 

**Namespace**: `vala`

**Key**: `configPath`

**Type**: `string`

**Supported Beautifiers**:  [`Uncrustify`](#uncrustify) 

**Description**:

Path to uncrustify config file. i.e. uncrustify.cfg (Supported by Uncrustify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "vala": {
        "configPath": ""
    }
}
```


### JS Beautify

####  [CSS - Indent size](#css---indent-size) 

**Namespace**: `css`

**Key**: `indent_size`

**Default**: `4`

**Type**: `integer`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Indentation size/length (Supported by JS Beautify, Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "css": {
        "indent_size": 4
    }
}
```

####  [CSS - Indent char](#css---indent-char) 

**Namespace**: `css`

**Key**: `indent_char`

**Default**: ` `

**Type**: `string`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Indentation character (Supported by JS Beautify, Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "css": {
        "indent_char": " "
    }
}
```

####  [CSS - Selector separator newline](#css---selector-separator-newline) 

**Namespace**: `css`

**Key**: `selector_separator_newline`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

Add a newline between multiple selectors (Supported by JS Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "css": {
        "selector_separator_newline": false
    }
}
```

####  [CSS - Newline between rules](#css---newline-between-rules) 

**Namespace**: `css`

**Key**: `newline_between_rules`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Add a newline between CSS rules (Supported by JS Beautify, Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "css": {
        "newline_between_rules": false
    }
}
```

####  [CSS - Preserve newlines](#css---preserve-newlines) 

**Namespace**: `css`

**Key**: `preserve_newlines`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Retain empty lines. Consecutive empty lines will be converted to a single empty line. (Supported by JS Beautify, Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "css": {
        "preserve_newlines": false
    }
}
```

####  [CSS - Wrap line length](#css---wrap-line-length) 

**Namespace**: `css`

**Key**: `wrap_line_length`

**Type**: `integer`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Maximum amount of characters per line (0 = disable) (Supported by JS Beautify, Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "css": {
        "wrap_line_length": 0
    }
}
```

####  [HTML - Indent inner html](#html---indent-inner-html) 

**Namespace**: `html`

**Key**: `indent_inner_html`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

Indent <head> and <body> sections. (Supported by JS Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "indent_inner_html": false
    }
}
```

####  [HTML - Indent size](#html---indent-size) 

**Namespace**: `html`

**Key**: `indent_size`

**Default**: `4`

**Type**: `integer`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Indentation size/length (Supported by JS Beautify, Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "indent_size": 4
    }
}
```

####  [HTML - Indent char](#html---indent-char) 

**Namespace**: `html`

**Key**: `indent_char`

**Default**: ` `

**Type**: `string`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Indentation character (Supported by JS Beautify, Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "indent_char": " "
    }
}
```

####  [HTML - Brace style](#html---brace-style) 

**Namespace**: `html`

**Key**: `brace_style`

**Default**: `collapse`

**Type**: `string`

**Enum**:  `collapse`  `expand`  `end-expand`  `none` 

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

[collapse|expand|end-expand|none] (Supported by JS Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "brace_style": "collapse"
    }
}
```

####  [HTML - Indent scripts](#html---indent-scripts) 

**Namespace**: `html`

**Key**: `indent_scripts`

**Default**: `normal`

**Type**: `string`

**Enum**:  `keep`  `separate`  `normal` 

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

[keep|separate|normal] (Supported by JS Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "indent_scripts": "normal"
    }
}
```

####  [HTML - Wrap line length](#html---wrap-line-length) 

**Namespace**: `html`

**Key**: `wrap_line_length`

**Default**: `250`

**Type**: `integer`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Maximum characters per line (0 disables) (Supported by JS Beautify, Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "wrap_line_length": 250
    }
}
```

####  [HTML - Wrap attributes](#html---wrap-attributes) 

**Namespace**: `html`

**Key**: `wrap_attributes`

**Default**: `auto`

**Type**: `string`

**Enum**:  `auto`  `force` 

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

Wrap attributes to new lines [auto|force] (Supported by JS Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "wrap_attributes": "auto"
    }
}
```

####  [HTML - Wrap attributes indent size](#html---wrap-attributes-indent-size) 

**Namespace**: `html`

**Key**: `wrap_attributes_indent_size`

**Default**: `4`

**Type**: `integer`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

Indent wrapped attributes to after N characters (Supported by JS Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "wrap_attributes_indent_size": 4
    }
}
```

####  [HTML - Preserve newlines](#html---preserve-newlines) 

**Namespace**: `html`

**Key**: `preserve_newlines`

**Default**: `true`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Preserve line-breaks (Supported by JS Beautify, Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "preserve_newlines": true
    }
}
```

####  [HTML - Max preserve newlines](#html---max-preserve-newlines) 

**Namespace**: `html`

**Key**: `max_preserve_newlines`

**Default**: `10`

**Type**: `integer`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

Number of line-breaks to be preserved in one chunk (Supported by JS Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "max_preserve_newlines": 10
    }
}
```

####  [HTML - Unformatted](#html---unformatted) 

**Namespace**: `html`

**Key**: `unformatted`

**Default**: `a,sub,sup,b,i,u`

**Type**: `array`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

List of tags (defaults to inline) that should not be reformatted (Supported by JS Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "unformatted": [
            "a",
            "sub",
            "sup",
            "b",
            "i",
            "u"
        ]
    }
}
```

####  [HTML - End with newline](#html---end-with-newline) 

**Namespace**: `html`

**Key**: `end_with_newline`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

End output with newline (Supported by JS Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "end_with_newline": false
    }
}
```

####  [HTML - Extra liners](#html---extra-liners) 

**Namespace**: `html`

**Key**: `extra_liners`

**Default**: `head,body,/html`

**Type**: `array`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

List of tags (defaults to [head,body,/html] that should have an extra newline before them. (Supported by JS Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "extra_liners": [
            "head",
            "body",
            "/html"
        ]
    }
}
```

####  [JavaScript - Indent size](#javascript---indent-size) 

**Namespace**: `js`

**Key**: `indent_size`

**Default**: `4`

**Type**: `integer`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Indentation size/length (Supported by JS Beautify, Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "indent_size": 4
    }
}
```

####  [JavaScript - Indent char](#javascript---indent-char) 

**Namespace**: `js`

**Key**: `indent_char`

**Default**: ` `

**Type**: `string`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Indentation character (Supported by JS Beautify, Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "indent_char": " "
    }
}
```

####  [JavaScript - Indent level](#javascript---indent-level) 

**Namespace**: `js`

**Key**: `indent_level`

**Type**: `integer`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

Initial indentation level (Supported by JS Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "indent_level": 0
    }
}
```

####  [JavaScript - Indent with tabs](#javascript---indent-with-tabs) 

**Namespace**: `js`

**Key**: `indent_with_tabs`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

Indentation uses tabs, overrides `Indent Size` and `Indent Char` (Supported by JS Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "indent_with_tabs": false
    }
}
```

####  [JavaScript - Preserve newlines](#javascript---preserve-newlines) 

**Namespace**: `js`

**Key**: `preserve_newlines`

**Default**: `true`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Preserve line-breaks (Supported by JS Beautify, Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "preserve_newlines": true
    }
}
```

####  [JavaScript - Max preserve newlines](#javascript---max-preserve-newlines) 

**Namespace**: `js`

**Key**: `max_preserve_newlines`

**Default**: `10`

**Type**: `integer`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

Number of line-breaks to be preserved in one chunk (Supported by JS Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "max_preserve_newlines": 10
    }
}
```

####  [JavaScript - Space in paren](#javascript---space-in-paren) 

**Namespace**: `js`

**Key**: `space_in_paren`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

Add padding spaces within paren, ie. f( a, b ) (Supported by JS Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "space_in_paren": false
    }
}
```

####  [JavaScript - Jslint happy](#javascript---jslint-happy) 

**Namespace**: `js`

**Key**: `jslint_happy`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

Enable jslint-stricter mode (Supported by JS Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "jslint_happy": false
    }
}
```

####  [JavaScript - Space after anon function](#javascript---space-after-anon-function) 

**Namespace**: `js`

**Key**: `space_after_anon_function`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Add a space before an anonymous function's parens, ie. function () (Supported by JS Beautify, Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "space_after_anon_function": false
    }
}
```

####  [JavaScript - Brace style](#javascript---brace-style) 

**Namespace**: `js`

**Key**: `brace_style`

**Default**: `collapse`

**Type**: `string`

**Enum**:  `collapse`  `expand`  `end-expand`  `none` 

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

[collapse|expand|end-expand|none] (Supported by JS Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "brace_style": "collapse"
    }
}
```

####  [JavaScript - Break chained methods](#javascript---break-chained-methods) 

**Namespace**: `js`

**Key**: `break_chained_methods`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Break chained method calls across subsequent lines (Supported by JS Beautify, Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "break_chained_methods": false
    }
}
```

####  [JavaScript - Keep array indentation](#javascript---keep-array-indentation) 

**Namespace**: `js`

**Key**: `keep_array_indentation`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

Preserve array indentation (Supported by JS Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "keep_array_indentation": false
    }
}
```

####  [JavaScript - Keep function indentation](#javascript---keep-function-indentation) 

**Namespace**: `js`

**Key**: `keep_function_indentation`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

 (Supported by JS Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "keep_function_indentation": false
    }
}
```

####  [JavaScript - Space before conditional](#javascript---space-before-conditional) 

**Namespace**: `js`

**Key**: `space_before_conditional`

**Default**: `true`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

 (Supported by JS Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "space_before_conditional": true
    }
}
```

####  [JavaScript - Eval code](#javascript---eval-code) 

**Namespace**: `js`

**Key**: `eval_code`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

 (Supported by JS Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "eval_code": false
    }
}
```

####  [JavaScript - Unescape strings](#javascript---unescape-strings) 

**Namespace**: `js`

**Key**: `unescape_strings`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

Decode printable characters encoded in xNN notation (Supported by JS Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "unescape_strings": false
    }
}
```

####  [JavaScript - Wrap line length](#javascript---wrap-line-length) 

**Namespace**: `js`

**Key**: `wrap_line_length`

**Type**: `integer`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Wrap lines at next opportunity after N characters (Supported by JS Beautify, Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "wrap_line_length": 0
    }
}
```

####  [JavaScript - End with newline](#javascript---end-with-newline) 

**Namespace**: `js`

**Key**: `end_with_newline`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

End output with newline (Supported by JS Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "end_with_newline": false
    }
}
```

####  [JavaScript - End with comma](#javascript---end-with-comma) 

**Namespace**: `js`

**Key**: `end_with_comma`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

If a terminating comma should be inserted into arrays, object literals, and destructured objects. (Supported by JS Beautify, Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "end_with_comma": false
    }
}
```


### Pretty Diff

####  [CSS - Indent size](#css---indent-size) 

**Namespace**: `css`

**Key**: `indent_size`

**Default**: `4`

**Type**: `integer`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Indentation size/length (Supported by JS Beautify, Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "css": {
        "indent_size": 4
    }
}
```

####  [CSS - Indent char](#css---indent-char) 

**Namespace**: `css`

**Key**: `indent_char`

**Default**: ` `

**Type**: `string`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Indentation character (Supported by JS Beautify, Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "css": {
        "indent_char": " "
    }
}
```

####  [CSS - Newline between rules](#css---newline-between-rules) 

**Namespace**: `css`

**Key**: `newline_between_rules`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Add a newline between CSS rules (Supported by JS Beautify, Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "css": {
        "newline_between_rules": false
    }
}
```

####  [CSS - Preserve newlines](#css---preserve-newlines) 

**Namespace**: `css`

**Key**: `preserve_newlines`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Retain empty lines. Consecutive empty lines will be converted to a single empty line. (Supported by JS Beautify, Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "css": {
        "preserve_newlines": false
    }
}
```

####  [CSS - Wrap line length](#css---wrap-line-length) 

**Namespace**: `css`

**Key**: `wrap_line_length`

**Type**: `integer`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Maximum amount of characters per line (0 = disable) (Supported by JS Beautify, Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "css": {
        "wrap_line_length": 0
    }
}
```

####  [CSS - Indent comments](#css---indent-comments) 

**Namespace**: `css`

**Key**: `indent_comments`

**Default**: `true`

**Type**: `boolean`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Determines whether comments should be indented. (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "css": {
        "indent_comments": true
    }
}
```

####  [CSS - Force indentation](#css---force-indentation) 

**Namespace**: `css`

**Key**: `force_indentation`

**Type**: `boolean`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

if indentation should be forcefully applied to markup even if it disruptively adds unintended whitespace to the documents rendered output (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "css": {
        "force_indentation": false
    }
}
```

####  [CSS - Convert quotes](#css---convert-quotes) 

**Namespace**: `css`

**Key**: `convert_quotes`

**Default**: `none`

**Type**: `string`

**Enum**:  `none`  `double`  `single` 

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Convert the quote characters delimiting strings from either double or single quotes to the other. (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "css": {
        "convert_quotes": "none"
    }
}
```

####  [CSS - Align assignments](#css---align-assignments) 

**Namespace**: `css`

**Key**: `align_assignments`

**Type**: `boolean`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

If lists of assignments or properties should be vertically aligned for faster and easier reading. (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "css": {
        "align_assignments": false
    }
}
```

####  [CSS - No lead zero](#css---no-lead-zero) 

**Namespace**: `css`

**Key**: `no_lead_zero`

**Type**: `boolean`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

If in CSS values leading 0s immediately preceeding a decimal should be removed or prevented. (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "css": {
        "no_lead_zero": false
    }
}
```

####  [HTML - Indent size](#html---indent-size) 

**Namespace**: `html`

**Key**: `indent_size`

**Default**: `4`

**Type**: `integer`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Indentation size/length (Supported by JS Beautify, Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "indent_size": 4
    }
}
```

####  [HTML - Indent char](#html---indent-char) 

**Namespace**: `html`

**Key**: `indent_char`

**Default**: ` `

**Type**: `string`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Indentation character (Supported by JS Beautify, Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "indent_char": " "
    }
}
```

####  [HTML - Wrap line length](#html---wrap-line-length) 

**Namespace**: `html`

**Key**: `wrap_line_length`

**Default**: `250`

**Type**: `integer`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Maximum characters per line (0 disables) (Supported by JS Beautify, Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "wrap_line_length": 250
    }
}
```

####  [HTML - Preserve newlines](#html---preserve-newlines) 

**Namespace**: `html`

**Key**: `preserve_newlines`

**Default**: `true`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Preserve line-breaks (Supported by JS Beautify, Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "preserve_newlines": true
    }
}
```

####  [JavaScript - Indent size](#javascript---indent-size) 

**Namespace**: `js`

**Key**: `indent_size`

**Default**: `4`

**Type**: `integer`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Indentation size/length (Supported by JS Beautify, Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "indent_size": 4
    }
}
```

####  [JavaScript - Indent char](#javascript---indent-char) 

**Namespace**: `js`

**Key**: `indent_char`

**Default**: ` `

**Type**: `string`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Indentation character (Supported by JS Beautify, Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "indent_char": " "
    }
}
```

####  [JavaScript - Preserve newlines](#javascript---preserve-newlines) 

**Namespace**: `js`

**Key**: `preserve_newlines`

**Default**: `true`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Preserve line-breaks (Supported by JS Beautify, Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "preserve_newlines": true
    }
}
```

####  [JavaScript - Space after anon function](#javascript---space-after-anon-function) 

**Namespace**: `js`

**Key**: `space_after_anon_function`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Add a space before an anonymous function's parens, ie. function () (Supported by JS Beautify, Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "space_after_anon_function": false
    }
}
```

####  [JavaScript - Break chained methods](#javascript---break-chained-methods) 

**Namespace**: `js`

**Key**: `break_chained_methods`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Break chained method calls across subsequent lines (Supported by JS Beautify, Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "break_chained_methods": false
    }
}
```

####  [JavaScript - Wrap line length](#javascript---wrap-line-length) 

**Namespace**: `js`

**Key**: `wrap_line_length`

**Type**: `integer`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Wrap lines at next opportunity after N characters (Supported by JS Beautify, Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "wrap_line_length": 0
    }
}
```

####  [JavaScript - End with comma](#javascript---end-with-comma) 

**Namespace**: `js`

**Key**: `end_with_comma`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

If a terminating comma should be inserted into arrays, object literals, and destructured objects. (Supported by JS Beautify, Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "end_with_comma": false
    }
}
```


### CSScomb

####  [CSS - comb custom config file](#css---comb-custom-config-file) 

**Namespace**: `css`

**Key**: `configPath`

**Type**: `string`

**Supported Beautifiers**:  [`CSScomb`](#csscomb) 

**Description**:

Path to custom CSScomb config file, used in absense of a `.csscomb.json` or `.csscomb.cson` at the root of your project. (Supported by CSScomb)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "css": {
        "configPath": ""
    }
}
```

####  [CSS - comb predefined config](#css---comb-predefined-config) 

**Namespace**: `css`

**Key**: `predefinedConfig`

**Default**: `csscomb`

**Type**: `string`

**Enum**:  `csscomb`  `yandex`  `zen` 

**Supported Beautifiers**:  [`CSScomb`](#csscomb) 

**Description**:

Used if neither a project or custom config file exists. (Supported by CSScomb)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "css": {
        "predefinedConfig": "csscomb"
    }
}
```


### Gherkin formatter

####  [gherkin - Indent size](#gherkin---indent-size) 

**Namespace**: `gherkin`

**Key**: `indent_size`

**Default**: `4`

**Type**: `integer`

**Supported Beautifiers**:  [`Gherkin formatter`](#gherkin-formatter) 

**Description**:

Indentation size/length (Supported by Gherkin formatter)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "gherkin": {
        "indent_size": 4
    }
}
```

####  [gherkin - Indent char](#gherkin---indent-char) 

**Namespace**: `gherkin`

**Key**: `indent_char`

**Default**: ` `

**Type**: `string`

**Supported Beautifiers**:  [`Gherkin formatter`](#gherkin-formatter) 

**Description**:

Indentation character (Supported by Gherkin formatter)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "gherkin": {
        "indent_char": " "
    }
}
```


### Fortran Beautifier

####  [Fortran - Emacs path](#fortran---emacs-path) 

**Namespace**: `fortran`

**Key**: `emacs_path`

**Type**: `string`

**Supported Beautifiers**:  [`Fortran Beautifier`](#fortran-beautifier) 

**Description**:

Path to the `emacs` executable (Supported by Fortran Beautifier)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "fortran": {
        "emacs_path": ""
    }
}
```

####  [Fortran - Emacs script path](#fortran---emacs-script-path) 

**Namespace**: `fortran`

**Key**: `emacs_script_path`

**Type**: `string`

**Supported Beautifiers**:  [`Fortran Beautifier`](#fortran-beautifier) 

**Description**:

Path to the emacs script (Supported by Fortran Beautifier)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "fortran": {
        "emacs_script_path": ""
    }
}
```


### Perltidy

####  [Perl - Perltidy profile](#perl---perltidy-profile) 

**Namespace**: `perl`

**Key**: `perltidy_profile`

**Type**: `string`

**Supported Beautifiers**:  [`Perltidy`](#perltidy) 

**Description**:

Specify a configuration file which will override the default name of .perltidyrc (Supported by Perltidy)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "perl": {
        "perltidy_profile": ""
    }
}
```


### PHP-CS-Fixer

####  [PHP - PHP-CS-Fixer Path](#php---php-cs-fixer-path) 

**Namespace**: `php`

**Key**: `cs_fixer_path`

**Type**: `string`

**Supported Beautifiers**:  [`PHP-CS-Fixer`](#php-cs-fixer) 

**Description**:

Path to the `php-cs-fixer` CLI executable (Supported by PHP-CS-Fixer)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "php": {
        "cs_fixer_path": ""
    }
}
```

####  [PHP - Fixers](#php---fixers) 

**Namespace**: `php`

**Key**: `fixers`

**Type**: `string`

**Supported Beautifiers**:  [`PHP-CS-Fixer`](#php-cs-fixer) 

**Description**:

Add fixer(s). i.e. linefeed,-short_tag,indentation (Supported by PHP-CS-Fixer)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "php": {
        "fixers": ""
    }
}
```

####  [PHP - Level](#php---level) 

**Namespace**: `php`

**Key**: `level`

**Type**: `string`

**Supported Beautifiers**:  [`PHP-CS-Fixer`](#php-cs-fixer) 

**Description**:

By default, all PSR-2 fixers and some additional ones are run. (Supported by PHP-CS-Fixer)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "php": {
        "level": ""
    }
}
```


### autopep8

####  [Python - Max line length](#python---max-line-length) 

**Namespace**: `python`

**Key**: `max_line_length`

**Default**: `79`

**Type**: `integer`

**Supported Beautifiers**:  [`autopep8`](#autopep8) 

**Description**:

set maximum allowed line length (Supported by autopep8)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "python": {
        "max_line_length": 79
    }
}
```

####  [Python - Indent size](#python---indent-size) 

**Namespace**: `python`

**Key**: `indent_size`

**Default**: `4`

**Type**: `integer`

**Supported Beautifiers**:  [`autopep8`](#autopep8) 

**Description**:

Indentation size/length (Supported by autopep8)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "python": {
        "indent_size": 4
    }
}
```

####  [Python - Ignore](#python---ignore) 

**Namespace**: `python`

**Key**: `ignore`

**Default**: `E24`

**Type**: `array`

**Supported Beautifiers**:  [`autopep8`](#autopep8) 

**Description**:

do not fix these errors/warnings (Supported by autopep8)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "python": {
        "ignore": [
            "E24"
        ]
    }
}
```


### Rubocop

####  [Ruby - Indent size](#ruby---indent-size) 

**Namespace**: `ruby`

**Key**: `indent_size`

**Default**: `4`

**Type**: `integer`

**Supported Beautifiers**:  [`Rubocop`](#rubocop)  [`Ruby Beautify`](#ruby-beautify) 

**Description**:

Indentation size/length (Supported by Rubocop, Ruby Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "ruby": {
        "indent_size": 4
    }
}
```


### Ruby Beautify

####  [Ruby - Indent size](#ruby---indent-size) 

**Namespace**: `ruby`

**Key**: `indent_size`

**Default**: `4`

**Type**: `integer`

**Supported Beautifiers**:  [`Rubocop`](#rubocop)  [`Ruby Beautify`](#ruby-beautify) 

**Description**:

Indentation size/length (Supported by Rubocop, Ruby Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "ruby": {
        "indent_size": 4
    }
}
```

####  [Ruby - Indent char](#ruby---indent-char) 

**Namespace**: `ruby`

**Key**: `indent_char`

**Default**: ` `

**Type**: `string`

**Enum**:  ` `  `	` 

**Supported Beautifiers**:  [`Ruby Beautify`](#ruby-beautify) 

**Description**:

Indentation character (Supported by Ruby Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "ruby": {
        "indent_char": " "
    }
}
```


### rustfmt

####  [Rust - Rustfmt path](#rust---rustfmt-path) 

**Namespace**: `rust`

**Key**: `rustfmt_path`

**Type**: `string`

**Supported Beautifiers**:  [`rustfmt`](#rustfmt) 

**Description**:

Path to rustfmt program (Supported by rustfmt)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "rust": {
        "rustfmt_path": ""
    }
}
```


### sqlformat

####  [SQL - Indent size](#sql---indent-size) 

**Namespace**: `sql`

**Key**: `indent_size`

**Default**: `4`

**Type**: `integer`

**Supported Beautifiers**:  [`sqlformat`](#sqlformat) 

**Description**:

Indentation size/length (Supported by sqlformat)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "sql": {
        "indent_size": 4
    }
}
```

####  [SQL - Keywords](#sql---keywords) 

**Namespace**: `sql`

**Key**: `keywords`

**Default**: `upper`

**Type**: `string`

**Enum**:  `lower`  `upper`  `capitalize` 

**Supported Beautifiers**:  [`sqlformat`](#sqlformat) 

**Description**:

Change case of keywords (Supported by sqlformat)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "sql": {
        "keywords": "upper"
    }
}
```

####  [SQL - Identifiers](#sql---identifiers) 

**Namespace**: `sql`

**Key**: `identifiers`

**Default**: `lower`

**Type**: `string`

**Enum**:  `lower`  `upper`  `capitalize` 

**Supported Beautifiers**:  [`sqlformat`](#sqlformat) 

**Description**:

Change case of identifiers (Supported by sqlformat)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "sql": {
        "identifiers": "lower"
    }
}
```



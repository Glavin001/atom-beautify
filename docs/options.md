# Options

Automatically generated documentation for Atom Beautify's options.

## Package Options

Configurable options for Atom Beautify.

---

####  [General](#general) 

**Description**:

General options for Atom Beautify

#####  [Analytics User Id](#analytics-user-id) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `string`

**Description**:

Unique identifier for this user for tracking usage analytics

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Analytics User Id*" and change it to your desired configuration.

#####  [Anonymous Analytics](#anonymous-analytics) 

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

#####  [Beautify Entire File On Save](#beautify-entire-file-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Default**: `true`

**Type**: `boolean`

**Description**:

When beautifying on save, use the entire file, even if there is selected text in the editor. Important: The `beautify on save` option for the specific language must be enabled for this to be applicable. This option is not `beautify on save`.

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Beautify Entire File On Save*" and change it to your desired configuration.

#####  [Logger Level](#logger-level) 

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

#####  [Mute All Errors](#mute-all-errors) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Do not show any/all errors when they occur

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Mute All Errors*" and change it to your desired configuration.

#####  [Mute Unsupported Language Errors](#mute-unsupported-language-errors) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Do not show "Unsupported Language" errors when they occur

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Mute Unsupported Language Errors*" and change it to your desired configuration.


## Language Options

Supported options for each language.

---

####  [Apex](#apex) 

**Supported Beautifiers**:  [`Uncrustify`](#uncrustify) 

**Description**:

Options for language Apex

#####  [Disable Beautifying Language](#disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable Apex Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Disable Beautifying Language*" and change it to your desired configuration.

#####  [Default Beautifier](#default-beautifier) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Default**: `Uncrustify`

**Type**: `string`

**Enum**:  `Uncrustify` 

**Description**:

Default Beautifier to be used for Apex

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Default Beautifier*" and change it to your desired configuration.

#####  [Beautify On Save](#beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify Apex files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Beautify On Save*" and change it to your desired configuration.

#####  [Config Path](#config-path) 

**Namespace**: `apex`

**Key**: `configPath`

**Type**: `string`

**Supported Beautifiers**:  [`Uncrustify`](#uncrustify) 

**Description**:

Path to uncrustify config file. i.e. uncrustify.cfg (Supported by Uncrustify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "apex": {
        "configPath": ""
    }
}
```

####  [Arduino](#arduino) 

**Supported Beautifiers**:  [`Uncrustify`](#uncrustify) 

**Description**:

Options for language Arduino

#####  [Disable Beautifying Language](#disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable Arduino Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Disable Beautifying Language*" and change it to your desired configuration.

#####  [Default Beautifier](#default-beautifier) 

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
3. Find the option "*Default Beautifier*" and change it to your desired configuration.

#####  [Beautify On Save](#beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify Arduino files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Beautify On Save*" and change it to your desired configuration.

#####  [Config Path](#config-path) 

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

####  [C](#c) 

**Supported Beautifiers**:  [`Uncrustify`](#uncrustify)  [`clang-format`](#clang-format) 

**Description**:

Options for language C

#####  [Disable Beautifying Language](#disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable C Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Disable Beautifying Language*" and change it to your desired configuration.

#####  [Default Beautifier](#default-beautifier) 

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
3. Find the option "*Default Beautifier*" and change it to your desired configuration.

#####  [Beautify On Save](#beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify C files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Beautify On Save*" and change it to your desired configuration.

#####  [Config Path](#config-path) 

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

####  [Coldfusion](#coldfusion) 

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Options for language Coldfusion

#####  [Disable Beautifying Language](#disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable Coldfusion Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Disable Beautifying Language*" and change it to your desired configuration.

#####  [Default Beautifier](#default-beautifier) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Default**: `Pretty Diff`

**Type**: `string`

**Enum**:  `Pretty Diff` 

**Description**:

Default Beautifier to be used for Coldfusion

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Default Beautifier*" and change it to your desired configuration.

#####  [Beautify On Save](#beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify Coldfusion files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Beautify On Save*" and change it to your desired configuration.

#####  [Indent char](#indent-char) 

**Namespace**: `cfml`

**Key**: `indent_char`

**Default**: ` `

**Type**: `string`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Indentation character (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "cfml": {
        "indent_char": " "
    }
}
```

#####  [Indent size](#indent-size) 

**Namespace**: `cfml`

**Key**: `indent_size`

**Default**: `4`

**Type**: `integer`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Indentation size/length (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "cfml": {
        "indent_size": 4
    }
}
```

#####  [Preserve newlines](#preserve-newlines) 

**Namespace**: `cfml`

**Key**: `preserve_newlines`

**Default**: `true`

**Type**: `boolean`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Preserve line-breaks (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "cfml": {
        "preserve_newlines": true
    }
}
```

#####  [Wrap line length](#wrap-line-length) 

**Namespace**: `cfml`

**Key**: `wrap_line_length`

**Default**: `250`

**Type**: `integer`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Maximum characters per line (0 disables) (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "cfml": {
        "wrap_line_length": 250
    }
}
```

####  [CoffeeScript](#coffeescript) 

**Supported Beautifiers**:  [`Coffee Formatter`](#coffee-formatter)  [`coffee-fmt`](#coffee-fmt) 

**Description**:

Options for language CoffeeScript

#####  [Disable Beautifying Language](#disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable CoffeeScript Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Disable Beautifying Language*" and change it to your desired configuration.

#####  [Default Beautifier](#default-beautifier) 

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
3. Find the option "*Default Beautifier*" and change it to your desired configuration.

#####  [Beautify On Save](#beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify CoffeeScript files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Beautify On Save*" and change it to your desired configuration.

#####  [Brace style](#brace-style) 

**Namespace**: `js`

**Key**: `brace_style`

**Default**: `collapse`

**Type**: `string`

**Enum**:  `collapse`  `collapse-preserve-inline`  `expand`  `end-expand`  `none` 

**Supported Beautifiers**:  [`Coffee Formatter`](#coffee-formatter) 

**Description**:

[collapse|collapse-preserve-inline|expand|end-expand|none] (Supported by Coffee Formatter)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "brace_style": "collapse"
    }
}
```

#####  [Break chained methods](#break-chained-methods) 

**Namespace**: `js`

**Key**: `break_chained_methods`

**Type**: `boolean`

**Supported Beautifiers**:  [`Coffee Formatter`](#coffee-formatter) 

**Description**:

Break chained method calls across subsequent lines (Supported by Coffee Formatter)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "break_chained_methods": false
    }
}
```

#####  [End with comma](#end-with-comma) 

**Namespace**: `js`

**Key**: `end_with_comma`

**Type**: `boolean`

**Supported Beautifiers**:  [`Coffee Formatter`](#coffee-formatter) 

**Description**:

If a terminating comma should be inserted into arrays, object literals, and destructured objects. (Supported by Coffee Formatter)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "end_with_comma": false
    }
}
```

#####  [End with newline](#end-with-newline) 

**Namespace**: `js`

**Key**: `end_with_newline`

**Type**: `boolean`

**Supported Beautifiers**:  [`Coffee Formatter`](#coffee-formatter) 

**Description**:

End output with newline (Supported by Coffee Formatter)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "end_with_newline": false
    }
}
```

#####  [Eval code](#eval-code) 

**Namespace**: `js`

**Key**: `eval_code`

**Type**: `boolean`

**Supported Beautifiers**:  [`Coffee Formatter`](#coffee-formatter) 

**Description**:

 (Supported by Coffee Formatter)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "eval_code": false
    }
}
```

#####  [Indent char](#indent-char) 

**Namespace**: `js`

**Key**: `indent_char`

**Default**: ` `

**Type**: `string`

**Supported Beautifiers**:  [`Coffee Formatter`](#coffee-formatter)  [`coffee-fmt`](#coffee-fmt) 

**Description**:

Indentation character (Supported by Coffee Formatter, coffee-fmt)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "indent_char": " "
    }
}
```

#####  [Indent level](#indent-level) 

**Namespace**: `js`

**Key**: `indent_level`

**Type**: `integer`

**Supported Beautifiers**:  [`Coffee Formatter`](#coffee-formatter) 

**Description**:

Initial indentation level (Supported by Coffee Formatter)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "indent_level": 0
    }
}
```

#####  [Indent size](#indent-size) 

**Namespace**: `js`

**Key**: `indent_size`

**Default**: `4`

**Type**: `integer`

**Supported Beautifiers**:  [`Coffee Formatter`](#coffee-formatter)  [`coffee-fmt`](#coffee-fmt) 

**Description**:

Indentation size/length (Supported by Coffee Formatter, coffee-fmt)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "indent_size": 4
    }
}
```

#####  [Indent with tabs](#indent-with-tabs) 

**Namespace**: `js`

**Key**: `indent_with_tabs`

**Type**: `boolean`

**Supported Beautifiers**:  [`Coffee Formatter`](#coffee-formatter)  [`coffee-fmt`](#coffee-fmt) 

**Description**:

Indentation uses tabs, overrides `Indent Size` and `Indent Char` (Supported by Coffee Formatter, coffee-fmt)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "indent_with_tabs": false
    }
}
```

#####  [Jslint happy](#jslint-happy) 

**Namespace**: `js`

**Key**: `jslint_happy`

**Type**: `boolean`

**Supported Beautifiers**:  [`Coffee Formatter`](#coffee-formatter) 

**Description**:

Enable jslint-stricter mode (Supported by Coffee Formatter)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "jslint_happy": false
    }
}
```

#####  [Keep array indentation](#keep-array-indentation) 

**Namespace**: `js`

**Key**: `keep_array_indentation`

**Type**: `boolean`

**Supported Beautifiers**:  [`Coffee Formatter`](#coffee-formatter) 

**Description**:

Preserve array indentation (Supported by Coffee Formatter)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "keep_array_indentation": false
    }
}
```

#####  [Keep function indentation](#keep-function-indentation) 

**Namespace**: `js`

**Key**: `keep_function_indentation`

**Type**: `boolean`

**Supported Beautifiers**:  [`Coffee Formatter`](#coffee-formatter) 

**Description**:

 (Supported by Coffee Formatter)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "keep_function_indentation": false
    }
}
```

#####  [Max preserve newlines](#max-preserve-newlines) 

**Namespace**: `js`

**Key**: `max_preserve_newlines`

**Default**: `10`

**Type**: `integer`

**Supported Beautifiers**:  [`Coffee Formatter`](#coffee-formatter) 

**Description**:

Number of line-breaks to be preserved in one chunk (Supported by Coffee Formatter)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "max_preserve_newlines": 10
    }
}
```

#####  [Preserve newlines](#preserve-newlines) 

**Namespace**: `js`

**Key**: `preserve_newlines`

**Default**: `true`

**Type**: `boolean`

**Supported Beautifiers**:  [`Coffee Formatter`](#coffee-formatter) 

**Description**:

Preserve line-breaks (Supported by Coffee Formatter)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "preserve_newlines": true
    }
}
```

#####  [Space after anon function](#space-after-anon-function) 

**Namespace**: `js`

**Key**: `space_after_anon_function`

**Type**: `boolean`

**Supported Beautifiers**:  [`Coffee Formatter`](#coffee-formatter) 

**Description**:

Add a space before an anonymous function's parens, ie. function () (Supported by Coffee Formatter)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "space_after_anon_function": false
    }
}
```

#####  [Space before conditional](#space-before-conditional) 

**Namespace**: `js`

**Key**: `space_before_conditional`

**Default**: `true`

**Type**: `boolean`

**Supported Beautifiers**:  [`Coffee Formatter`](#coffee-formatter) 

**Description**:

 (Supported by Coffee Formatter)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "space_before_conditional": true
    }
}
```

#####  [Space in paren](#space-in-paren) 

**Namespace**: `js`

**Key**: `space_in_paren`

**Type**: `boolean`

**Supported Beautifiers**:  [`Coffee Formatter`](#coffee-formatter) 

**Description**:

Add padding spaces within paren, ie. f( a, b ) (Supported by Coffee Formatter)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "space_in_paren": false
    }
}
```

#####  [Unescape strings](#unescape-strings) 

**Namespace**: `js`

**Key**: `unescape_strings`

**Type**: `boolean`

**Supported Beautifiers**:  [`Coffee Formatter`](#coffee-formatter) 

**Description**:

Decode printable characters encoded in xNN notation (Supported by Coffee Formatter)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "unescape_strings": false
    }
}
```

#####  [Wrap line length](#wrap-line-length) 

**Namespace**: `js`

**Key**: `wrap_line_length`

**Type**: `integer`

**Supported Beautifiers**:  [`Coffee Formatter`](#coffee-formatter) 

**Description**:

Wrap lines at next opportunity after N characters (Supported by Coffee Formatter)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "wrap_line_length": 0
    }
}
```

####  [C++](#c-) 

**Supported Beautifiers**:  [`Uncrustify`](#uncrustify)  [`clang-format`](#clang-format) 

**Description**:

Options for language C++

#####  [Disable Beautifying Language](#disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable C++ Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Disable Beautifying Language*" and change it to your desired configuration.

#####  [Default Beautifier](#default-beautifier) 

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
3. Find the option "*Default Beautifier*" and change it to your desired configuration.

#####  [Beautify On Save](#beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify C++ files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Beautify On Save*" and change it to your desired configuration.

#####  [Config Path](#config-path) 

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

####  [C#](#c-) 

**Supported Beautifiers**:  [`Uncrustify`](#uncrustify) 

**Description**:

Options for language C#

#####  [Disable Beautifying Language](#disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable C# Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Disable Beautifying Language*" and change it to your desired configuration.

#####  [Default Beautifier](#default-beautifier) 

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
3. Find the option "*Default Beautifier*" and change it to your desired configuration.

#####  [Beautify On Save](#beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify C# files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Beautify On Save*" and change it to your desired configuration.

#####  [Config Path](#config-path) 

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

####  [CSS](#css) 

**Supported Beautifiers**:  [`CSScomb`](#csscomb)  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Options for language CSS

#####  [Disable Beautifying Language](#disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable CSS Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Disable Beautifying Language*" and change it to your desired configuration.

#####  [Default Beautifier](#default-beautifier) 

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
3. Find the option "*Default Beautifier*" and change it to your desired configuration.

#####  [Beautify On Save](#beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify CSS files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Beautify On Save*" and change it to your desired configuration.

#####  [Align assignments](#align-assignments) 

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

#####  [comb custom config file](#comb-custom-config-file) 

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

#####  [Convert quotes](#convert-quotes) 

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

#####  [Force indentation](#force-indentation) 

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

#####  [Indent char](#indent-char) 

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

#####  [Indent comments](#indent-comments) 

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

#####  [Indent size](#indent-size) 

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

#####  [Newline between rules](#newline-between-rules) 

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

#####  [No lead zero](#no-lead-zero) 

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

#####  [comb predefined config](#comb-predefined-config) 

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

#####  [Preserve newlines](#preserve-newlines) 

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

#####  [Selector separator newline](#selector-separator-newline) 

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

#####  [Wrap line length](#wrap-line-length) 

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

####  [CSV](#csv) 

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Options for language CSV

#####  [Disable Beautifying Language](#disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable CSV Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Disable Beautifying Language*" and change it to your desired configuration.

#####  [Default Beautifier](#default-beautifier) 

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
3. Find the option "*Default Beautifier*" and change it to your desired configuration.

#####  [Beautify On Save](#beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify CSV files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Beautify On Save*" and change it to your desired configuration.

####  [D](#d) 

**Supported Beautifiers**:  [`Uncrustify`](#uncrustify)  [`dfmt`](#dfmt) 

**Description**:

Options for language D

#####  [Disable Beautifying Language](#disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable D Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Disable Beautifying Language*" and change it to your desired configuration.

#####  [Default Beautifier](#default-beautifier) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Default**: `Uncrustify`

**Type**: `string`

**Enum**:  `Uncrustify`  `dfmt` 

**Description**:

Default Beautifier to be used for D

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Default Beautifier*" and change it to your desired configuration.

#####  [Beautify On Save](#beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify D files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Beautify On Save*" and change it to your desired configuration.

#####  [Config Path](#config-path) 

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

####  [EJS](#ejs) 

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Options for language EJS

#####  [Disable Beautifying Language](#disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable EJS Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Disable Beautifying Language*" and change it to your desired configuration.

#####  [Default Beautifier](#default-beautifier) 

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
3. Find the option "*Default Beautifier*" and change it to your desired configuration.

#####  [Beautify On Save](#beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify EJS files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Beautify On Save*" and change it to your desired configuration.

#####  [Break chained methods](#break-chained-methods) 

**Namespace**: `js`

**Key**: `break_chained_methods`

**Type**: `boolean`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Break chained method calls across subsequent lines (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "break_chained_methods": false
    }
}
```

#####  [End with comma](#end-with-comma) 

**Namespace**: `js`

**Key**: `end_with_comma`

**Type**: `boolean`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

If a terminating comma should be inserted into arrays, object literals, and destructured objects. (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "end_with_comma": false
    }
}
```

#####  [Indent char](#indent-char) 

**Namespace**: `html`

**Key**: `indent_char`

**Default**: ` `

**Type**: `string`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Indentation character (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "indent_char": " "
    }
}
```

#####  [Indent size](#indent-size) 

**Namespace**: `html`

**Key**: `indent_size`

**Default**: `4`

**Type**: `integer`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Indentation size/length (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "indent_size": 4
    }
}
```

#####  [Preserve newlines](#preserve-newlines) 

**Namespace**: `html`

**Key**: `preserve_newlines`

**Default**: `true`

**Type**: `boolean`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Preserve line-breaks (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "preserve_newlines": true
    }
}
```

#####  [Space after anon function](#space-after-anon-function) 

**Namespace**: `js`

**Key**: `space_after_anon_function`

**Type**: `boolean`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Add a space before an anonymous function's parens, ie. function () (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "space_after_anon_function": false
    }
}
```

#####  [Wrap line length](#wrap-line-length) 

**Namespace**: `html`

**Key**: `wrap_line_length`

**Default**: `250`

**Type**: `integer`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Maximum characters per line (0 disables) (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "wrap_line_length": 250
    }
}
```

####  [Elm](#elm) 

**Supported Beautifiers**:  [`elm-format`](#elm-format) 

**Description**:

Options for language Elm

#####  [Disable Beautifying Language](#disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable Elm Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Disable Beautifying Language*" and change it to your desired configuration.

#####  [Default Beautifier](#default-beautifier) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Default**: `elm-format`

**Type**: `string`

**Enum**:  `elm-format` 

**Description**:

Default Beautifier to be used for Elm

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Default Beautifier*" and change it to your desired configuration.

#####  [Beautify On Save](#beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify Elm files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Beautify On Save*" and change it to your desired configuration.

####  [ERB](#erb) 

**Supported Beautifiers**:  [`HTML Beautifier`](#html-beautifier)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Options for language ERB

#####  [Disable Beautifying Language](#disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable ERB Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Disable Beautifying Language*" and change it to your desired configuration.

#####  [Default Beautifier](#default-beautifier) 

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
3. Find the option "*Default Beautifier*" and change it to your desired configuration.

#####  [Beautify On Save](#beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify ERB files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Beautify On Save*" and change it to your desired configuration.

#####  [Indent char](#indent-char) 

**Namespace**: `html`

**Key**: `indent_char`

**Default**: ` `

**Type**: `string`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Indentation character (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "indent_char": " "
    }
}
```

#####  [Indent size](#indent-size) 

**Namespace**: `html`

**Key**: `indent_size`

**Default**: `4`

**Type**: `integer`

**Supported Beautifiers**:  [`HTML Beautifier`](#html-beautifier)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Indentation size/length (Supported by HTML Beautifier, Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "indent_size": 4
    }
}
```

#####  [Preserve newlines](#preserve-newlines) 

**Namespace**: `html`

**Key**: `preserve_newlines`

**Default**: `true`

**Type**: `boolean`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Preserve line-breaks (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "preserve_newlines": true
    }
}
```

#####  [Wrap line length](#wrap-line-length) 

**Namespace**: `html`

**Key**: `wrap_line_length`

**Default**: `250`

**Type**: `integer`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Maximum characters per line (0 disables) (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "wrap_line_length": 250
    }
}
```

####  [Erlang](#erlang) 

**Supported Beautifiers**:  [`erl_tidy`](#erl_tidy) 

**Description**:

Options for language Erlang

#####  [Disable Beautifying Language](#disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable Erlang Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Disable Beautifying Language*" and change it to your desired configuration.

#####  [Default Beautifier](#default-beautifier) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Default**: `erl_tidy`

**Type**: `string`

**Enum**:  `erl_tidy` 

**Description**:

Default Beautifier to be used for Erlang

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Default Beautifier*" and change it to your desired configuration.

#####  [Beautify On Save](#beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify Erlang files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Beautify On Save*" and change it to your desired configuration.

####  [Fortran](#fortran) 

**Supported Beautifiers**:  [`Fortran Beautifier`](#fortran-beautifier) 

**Description**:

Options for language Fortran

#####  [Disable Beautifying Language](#disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable Fortran Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Disable Beautifying Language*" and change it to your desired configuration.

#####  [Default Beautifier](#default-beautifier) 

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
3. Find the option "*Default Beautifier*" and change it to your desired configuration.

#####  [Beautify On Save](#beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify Fortran files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Beautify On Save*" and change it to your desired configuration.

#####  [Emacs path](#emacs-path) 

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

#####  [Emacs script path](#emacs-script-path) 

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

####  [gherkin](#gherkin) 

**Supported Beautifiers**:  [`Gherkin formatter`](#gherkin-formatter) 

**Description**:

Options for language gherkin

#####  [Disable Beautifying Language](#disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable gherkin Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Disable Beautifying Language*" and change it to your desired configuration.

#####  [Default Beautifier](#default-beautifier) 

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
3. Find the option "*Default Beautifier*" and change it to your desired configuration.

#####  [Beautify On Save](#beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify gherkin files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Beautify On Save*" and change it to your desired configuration.

#####  [Indent char](#indent-char) 

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

#####  [Indent size](#indent-size) 

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

####  [Go](#go) 

**Supported Beautifiers**:  [`gofmt`](#gofmt) 

**Description**:

Options for language Go

#####  [Disable Beautifying Language](#disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable Go Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Disable Beautifying Language*" and change it to your desired configuration.

#####  [Default Beautifier](#default-beautifier) 

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
3. Find the option "*Default Beautifier*" and change it to your desired configuration.

#####  [Beautify On Save](#beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify Go files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Beautify On Save*" and change it to your desired configuration.

####  [Handlebars](#handlebars) 

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Options for language Handlebars

#####  [Disable Beautifying Language](#disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable Handlebars Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Disable Beautifying Language*" and change it to your desired configuration.

#####  [Default Beautifier](#default-beautifier) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Default**: `JS Beautify`

**Type**: `string`

**Enum**:  `JS Beautify`  `Pretty Diff` 

**Description**:

Default Beautifier to be used for Handlebars

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Default Beautifier*" and change it to your desired configuration.

#####  [Beautify On Save](#beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify Handlebars files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Beautify On Save*" and change it to your desired configuration.

#####  [Brace style](#brace-style) 

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

#####  [End with newline](#end-with-newline) 

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

#####  [Extra liners](#extra-liners) 

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

#####  [Indent char](#indent-char) 

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

#####  [Indent inner html](#indent-inner-html) 

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

#####  [Indent scripts](#indent-scripts) 

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

#####  [Indent size](#indent-size) 

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

#####  [Max preserve newlines](#max-preserve-newlines) 

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

#####  [Preserve newlines](#preserve-newlines) 

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

#####  [Unformatted](#unformatted) 

**Namespace**: `html`

**Key**: `unformatted`

**Default**: `a,span,img,bdo,em,strong,dfn,code,samp,kbd,var,cite,abbr,acronym,q,sub,sup,tt,i,b,big,small,u,s,strike,font,ins,del,pre,address,dt,h1,h2,h3,h4,h5,h6`

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
            "span",
            "img",
            "bdo",
            "em",
            "strong",
            "dfn",
            "code",
            "samp",
            "kbd",
            "var",
            "cite",
            "abbr",
            "acronym",
            "q",
            "sub",
            "sup",
            "tt",
            "i",
            "b",
            "big",
            "small",
            "u",
            "s",
            "strike",
            "font",
            "ins",
            "del",
            "pre",
            "address",
            "dt",
            "h1",
            "h2",
            "h3",
            "h4",
            "h5",
            "h6"
        ]
    }
}
```

#####  [Wrap attributes](#wrap-attributes) 

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

#####  [Wrap attributes indent size](#wrap-attributes-indent-size) 

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

#####  [Wrap line length](#wrap-line-length) 

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

####  [Haskell](#haskell) 

**Supported Beautifiers**:  [`stylish-haskell`](#stylish-haskell) 

**Description**:

Options for language Haskell

#####  [Disable Beautifying Language](#disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable Haskell Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Disable Beautifying Language*" and change it to your desired configuration.

#####  [Default Beautifier](#default-beautifier) 

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
3. Find the option "*Default Beautifier*" and change it to your desired configuration.

#####  [Beautify On Save](#beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify Haskell files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Beautify On Save*" and change it to your desired configuration.

####  [HTML](#html) 

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Options for language HTML

#####  [Disable Beautifying Language](#disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable HTML Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Disable Beautifying Language*" and change it to your desired configuration.

#####  [Default Beautifier](#default-beautifier) 

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
3. Find the option "*Default Beautifier*" and change it to your desired configuration.

#####  [Beautify On Save](#beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify HTML files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Beautify On Save*" and change it to your desired configuration.

#####  [Brace style](#brace-style) 

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

#####  [End with newline](#end-with-newline) 

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

#####  [Extra liners](#extra-liners) 

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

#####  [Indent char](#indent-char) 

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

#####  [Indent inner html](#indent-inner-html) 

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

#####  [Indent scripts](#indent-scripts) 

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

#####  [Indent size](#indent-size) 

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

#####  [Max preserve newlines](#max-preserve-newlines) 

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

#####  [Preserve newlines](#preserve-newlines) 

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

#####  [Unformatted](#unformatted) 

**Namespace**: `html`

**Key**: `unformatted`

**Default**: `a,span,img,bdo,em,strong,dfn,code,samp,kbd,var,cite,abbr,acronym,q,sub,sup,tt,i,b,big,small,u,s,strike,font,ins,del,pre,address,dt,h1,h2,h3,h4,h5,h6`

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
            "span",
            "img",
            "bdo",
            "em",
            "strong",
            "dfn",
            "code",
            "samp",
            "kbd",
            "var",
            "cite",
            "abbr",
            "acronym",
            "q",
            "sub",
            "sup",
            "tt",
            "i",
            "b",
            "big",
            "small",
            "u",
            "s",
            "strike",
            "font",
            "ins",
            "del",
            "pre",
            "address",
            "dt",
            "h1",
            "h2",
            "h3",
            "h4",
            "h5",
            "h6"
        ]
    }
}
```

#####  [Wrap attributes](#wrap-attributes) 

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

#####  [Wrap attributes indent size](#wrap-attributes-indent-size) 

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

#####  [Wrap line length](#wrap-line-length) 

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

####  [Jade](#jade) 

**Supported Beautifiers**:  [`Pug Beautify`](#pug-beautify) 

**Description**:

Options for language Jade

#####  [Disable Beautifying Language](#disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable Jade Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Disable Beautifying Language*" and change it to your desired configuration.

#####  [Default Beautifier](#default-beautifier) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Default**: `Pug Beautify`

**Type**: `string`

**Enum**:  `Pug Beautify` 

**Description**:

Default Beautifier to be used for Jade

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Default Beautifier*" and change it to your desired configuration.

#####  [Beautify On Save](#beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify Jade files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Beautify On Save*" and change it to your desired configuration.

#####  [Indent char](#indent-char) 

**Namespace**: `html`

**Key**: `indent_char`

**Default**: ` `

**Type**: `string`

**Supported Beautifiers**:  [`Pug Beautify`](#pug-beautify) 

**Description**:

Indentation character (Supported by Pug Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "indent_char": " "
    }
}
```

#####  [Indent size](#indent-size) 

**Namespace**: `html`

**Key**: `indent_size`

**Default**: `4`

**Type**: `integer`

**Supported Beautifiers**:  [`Pug Beautify`](#pug-beautify) 

**Description**:

Indentation size/length (Supported by Pug Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "indent_size": 4
    }
}
```

####  [Java](#java) 

**Supported Beautifiers**:  [`Uncrustify`](#uncrustify) 

**Description**:

Options for language Java

#####  [Disable Beautifying Language](#disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable Java Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Disable Beautifying Language*" and change it to your desired configuration.

#####  [Default Beautifier](#default-beautifier) 

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
3. Find the option "*Default Beautifier*" and change it to your desired configuration.

#####  [Beautify On Save](#beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify Java files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Beautify On Save*" and change it to your desired configuration.

#####  [Config Path](#config-path) 

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

####  [JavaScript](#javascript) 

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`JSCS Fixer`](#jscs-fixer)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Options for language JavaScript

#####  [Disable Beautifying Language](#disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable JavaScript Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Disable Beautifying Language*" and change it to your desired configuration.

#####  [Default Beautifier](#default-beautifier) 

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
3. Find the option "*Default Beautifier*" and change it to your desired configuration.

#####  [Beautify On Save](#beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify JavaScript files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Beautify On Save*" and change it to your desired configuration.

#####  [Brace style](#brace-style) 

**Namespace**: `js`

**Key**: `brace_style`

**Default**: `collapse`

**Type**: `string`

**Enum**:  `collapse`  `collapse-preserve-inline`  `expand`  `end-expand`  `none` 

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

[collapse|collapse-preserve-inline|expand|end-expand|none] (Supported by JS Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "brace_style": "collapse"
    }
}
```

#####  [Break chained methods](#break-chained-methods) 

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

#####  [End with comma](#end-with-comma) 

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

#####  [End with newline](#end-with-newline) 

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

#####  [Eval code](#eval-code) 

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

#####  [Indent char](#indent-char) 

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

#####  [Indent level](#indent-level) 

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

#####  [Indent size](#indent-size) 

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

#####  [Indent with tabs](#indent-with-tabs) 

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

#####  [Jslint happy](#jslint-happy) 

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

#####  [Keep array indentation](#keep-array-indentation) 

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

#####  [Keep function indentation](#keep-function-indentation) 

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

#####  [Max preserve newlines](#max-preserve-newlines) 

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

#####  [Preserve newlines](#preserve-newlines) 

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

#####  [Space after anon function](#space-after-anon-function) 

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

#####  [Space before conditional](#space-before-conditional) 

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

#####  [Space in paren](#space-in-paren) 

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

#####  [Unescape strings](#unescape-strings) 

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

#####  [Wrap line length](#wrap-line-length) 

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

####  [JSON](#json) 

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Options for language JSON

#####  [Disable Beautifying Language](#disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable JSON Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Disable Beautifying Language*" and change it to your desired configuration.

#####  [Default Beautifier](#default-beautifier) 

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
3. Find the option "*Default Beautifier*" and change it to your desired configuration.

#####  [Beautify On Save](#beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify JSON files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Beautify On Save*" and change it to your desired configuration.

#####  [Brace style](#brace-style) 

**Namespace**: `js`

**Key**: `brace_style`

**Default**: `collapse`

**Type**: `string`

**Enum**:  `collapse`  `collapse-preserve-inline`  `expand`  `end-expand`  `none` 

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

[collapse|collapse-preserve-inline|expand|end-expand|none] (Supported by JS Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "brace_style": "collapse"
    }
}
```

#####  [Break chained methods](#break-chained-methods) 

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

#####  [End with comma](#end-with-comma) 

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

#####  [End with newline](#end-with-newline) 

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

#####  [Eval code](#eval-code) 

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

#####  [Indent char](#indent-char) 

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

#####  [Indent level](#indent-level) 

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

#####  [Indent size](#indent-size) 

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

#####  [Indent with tabs](#indent-with-tabs) 

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

#####  [Jslint happy](#jslint-happy) 

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

#####  [Keep array indentation](#keep-array-indentation) 

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

#####  [Keep function indentation](#keep-function-indentation) 

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

#####  [Max preserve newlines](#max-preserve-newlines) 

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

#####  [Preserve newlines](#preserve-newlines) 

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

#####  [Space after anon function](#space-after-anon-function) 

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

#####  [Space before conditional](#space-before-conditional) 

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

#####  [Space in paren](#space-in-paren) 

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

#####  [Unescape strings](#unescape-strings) 

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

#####  [Wrap line length](#wrap-line-length) 

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

####  [JSX](#jsx) 

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Options for language JSX

#####  [Disable Beautifying Language](#disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable JSX Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Disable Beautifying Language*" and change it to your desired configuration.

#####  [Default Beautifier](#default-beautifier) 

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
3. Find the option "*Default Beautifier*" and change it to your desired configuration.

#####  [Beautify On Save](#beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify JSX files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Beautify On Save*" and change it to your desired configuration.

#####  [Break chained methods](#break-chained-methods) 

**Namespace**: `js`

**Key**: `break_chained_methods`

**Type**: `boolean`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Break chained method calls across subsequent lines (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "break_chained_methods": false
    }
}
```

#####  [End with comma](#end-with-comma) 

**Namespace**: `js`

**Key**: `end_with_comma`

**Type**: `boolean`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

If a terminating comma should be inserted into arrays, object literals, and destructured objects. (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "end_with_comma": false
    }
}
```

#####  [Indent char](#indent-char) 

**Namespace**: `js`

**Key**: `indent_char`

**Default**: ` `

**Type**: `string`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Indentation character (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "indent_char": " "
    }
}
```

#####  [Indent size](#indent-size) 

**Namespace**: `js`

**Key**: `indent_size`

**Default**: `4`

**Type**: `integer`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Indentation size/length (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "indent_size": 4
    }
}
```

#####  [Preserve newlines](#preserve-newlines) 

**Namespace**: `js`

**Key**: `preserve_newlines`

**Default**: `true`

**Type**: `boolean`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Preserve line-breaks (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "preserve_newlines": true
    }
}
```

#####  [Space after anon function](#space-after-anon-function) 

**Namespace**: `js`

**Key**: `space_after_anon_function`

**Type**: `boolean`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Add a space before an anonymous function's parens, ie. function () (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "space_after_anon_function": false
    }
}
```

#####  [Wrap line length](#wrap-line-length) 

**Namespace**: `js`

**Key**: `wrap_line_length`

**Type**: `integer`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Wrap lines at next opportunity after N characters (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "wrap_line_length": 0
    }
}
```

####  [LaTeX](#latex) 

**Supported Beautifiers**:  [`Latex Beautify`](#latex-beautify) 

**Description**:

Options for language LaTeX

#####  [Disable Beautifying Language](#disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable LaTeX Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Disable Beautifying Language*" and change it to your desired configuration.

#####  [Default Beautifier](#default-beautifier) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Default**: `Latex Beautify`

**Type**: `string`

**Enum**:  `Latex Beautify` 

**Description**:

Default Beautifier to be used for LaTeX

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Default Beautifier*" and change it to your desired configuration.

#####  [Beautify On Save](#beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify LaTeX files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Beautify On Save*" and change it to your desired configuration.

#####  [Align columns in environments](#align-columns-in-environments) 

**Namespace**: `latex`

**Key**: `align_columns_in_environments`

**Default**: `tabular,matrix,bmatrix,pmatrix`

**Type**: `array`

**Supported Beautifiers**:  [`Latex Beautify`](#latex-beautify) 

**Description**:

undefined (Supported by Latex Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "latex": {
        "align_columns_in_environments": [
            "tabular",
            "matrix",
            "bmatrix",
            "pmatrix"
        ]
    }
}
```

#####  [Always look for split braces](#always-look-for-split-braces) 

**Namespace**: `latex`

**Key**: `always_look_for_split_braces`

**Default**: `true`

**Type**: `boolean`

**Supported Beautifiers**:  [`Latex Beautify`](#latex-beautify) 

**Description**:

If `latexindent` should look for commands that split braces across lines (Supported by Latex Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "latex": {
        "always_look_for_split_braces": true
    }
}
```

#####  [Always look for split brackets](#always-look-for-split-brackets) 

**Namespace**: `latex`

**Key**: `always_look_for_split_brackets`

**Type**: `boolean`

**Supported Beautifiers**:  [`Latex Beautify`](#latex-beautify) 

**Description**:

If `latexindent` should look for commands that split brackets across lines (Supported by Latex Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "latex": {
        "always_look_for_split_brackets": false
    }
}
```

#####  [Indent char](#indent-char) 

**Namespace**: `latex`

**Key**: `indent_char`

**Default**: ` `

**Type**: `string`

**Supported Beautifiers**:  [`Latex Beautify`](#latex-beautify) 

**Description**:

Indentation character (Supported by Latex Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "latex": {
        "indent_char": " "
    }
}
```

#####  [Indent preamble](#indent-preamble) 

**Namespace**: `latex`

**Key**: `indent_preamble`

**Type**: `boolean`

**Supported Beautifiers**:  [`Latex Beautify`](#latex-beautify) 

**Description**:

Indent the preable (Supported by Latex Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "latex": {
        "indent_preamble": false
    }
}
```

#####  [Indent with tabs](#indent-with-tabs) 

**Namespace**: `latex`

**Key**: `indent_with_tabs`

**Default**: `true`

**Type**: `boolean`

**Supported Beautifiers**:  [`Latex Beautify`](#latex-beautify) 

**Description**:

Indentation uses tabs, overrides `Indent Size` and `Indent Char` (Supported by Latex Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "latex": {
        "indent_with_tabs": true
    }
}
```

#####  [Remove trailing whitespace](#remove-trailing-whitespace) 

**Namespace**: `latex`

**Key**: `remove_trailing_whitespace`

**Type**: `boolean`

**Supported Beautifiers**:  [`Latex Beautify`](#latex-beautify) 

**Description**:

Remove trailing whitespace (Supported by Latex Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "latex": {
        "remove_trailing_whitespace": false
    }
}
```

####  [LESS](#less) 

**Supported Beautifiers**:  [`CSScomb`](#csscomb)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Options for language LESS

#####  [Disable Beautifying Language](#disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable LESS Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Disable Beautifying Language*" and change it to your desired configuration.

#####  [Default Beautifier](#default-beautifier) 

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
3. Find the option "*Default Beautifier*" and change it to your desired configuration.

#####  [Beautify On Save](#beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify LESS files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Beautify On Save*" and change it to your desired configuration.

#####  [Align assignments](#align-assignments) 

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

#####  [comb custom config file](#comb-custom-config-file) 

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

#####  [Convert quotes](#convert-quotes) 

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

#####  [Force indentation](#force-indentation) 

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

#####  [Indent char](#indent-char) 

**Namespace**: `css`

**Key**: `indent_char`

**Default**: ` `

**Type**: `string`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Indentation character (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "css": {
        "indent_char": " "
    }
}
```

#####  [Indent comments](#indent-comments) 

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

#####  [Indent size](#indent-size) 

**Namespace**: `css`

**Key**: `indent_size`

**Default**: `4`

**Type**: `integer`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Indentation size/length (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "css": {
        "indent_size": 4
    }
}
```

#####  [Newline between rules](#newline-between-rules) 

**Namespace**: `css`

**Key**: `newline_between_rules`

**Type**: `boolean`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Add a newline between CSS rules (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "css": {
        "newline_between_rules": false
    }
}
```

#####  [No lead zero](#no-lead-zero) 

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

#####  [comb predefined config](#comb-predefined-config) 

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

#####  [Preserve newlines](#preserve-newlines) 

**Namespace**: `css`

**Key**: `preserve_newlines`

**Type**: `boolean`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Retain empty lines. Consecutive empty lines will be converted to a single empty line. (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "css": {
        "preserve_newlines": false
    }
}
```

#####  [Wrap line length](#wrap-line-length) 

**Namespace**: `css`

**Key**: `wrap_line_length`

**Type**: `integer`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Maximum amount of characters per line (0 = disable) (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "css": {
        "wrap_line_length": 0
    }
}
```

####  [Markdown](#markdown) 

**Supported Beautifiers**:  [`Remark`](#remark)  [`Tidy Markdown`](#tidy-markdown) 

**Description**:

Options for language Markdown

#####  [Disable Beautifying Language](#disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable Markdown Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Disable Beautifying Language*" and change it to your desired configuration.

#####  [Default Beautifier](#default-beautifier) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Default**: `Tidy Markdown`

**Type**: `string`

**Enum**:  `Remark`  `Tidy Markdown` 

**Description**:

Default Beautifier to be used for Markdown

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Default Beautifier*" and change it to your desired configuration.

#####  [Beautify On Save](#beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify Markdown files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Beautify On Save*" and change it to your desired configuration.

#####  [Commonmark](#commonmark) 

**Namespace**: `markdown`

**Key**: `commonmark`

**Type**: `boolean`

**Supported Beautifiers**:  [`Remark`](#remark) 

**Description**:

Allows and disallows several constructs. (Supported by Remark)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "markdown": {
        "commonmark": false
    }
}
```

#####  [Gfm](#gfm) 

**Namespace**: `markdown`

**Key**: `gfm`

**Default**: `true`

**Type**: `boolean`

**Supported Beautifiers**:  [`Remark`](#remark) 

**Description**:

GitHub Flavoured Markdown (Supported by Remark)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "markdown": {
        "gfm": true
    }
}
```

#####  [Yaml](#yaml) 

**Namespace**: `markdown`

**Key**: `yaml`

**Default**: `true`

**Type**: `boolean`

**Supported Beautifiers**:  [`Remark`](#remark) 

**Description**:

Enables raw YAML front matter to be detected (thus ignoring markdown-like syntax). (Supported by Remark)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "markdown": {
        "yaml": true
    }
}
```

####  [Marko](#marko) 

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

Options for language Marko

#####  [Disable Beautifying Language](#disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable Marko Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Disable Beautifying Language*" and change it to your desired configuration.

#####  [Default Beautifier](#default-beautifier) 

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
3. Find the option "*Default Beautifier*" and change it to your desired configuration.

#####  [Beautify On Save](#beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify Marko files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Beautify On Save*" and change it to your desired configuration.

#####  [Brace style](#brace-style) 

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

#####  [End with newline](#end-with-newline) 

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

#####  [Extra liners](#extra-liners) 

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

#####  [Indent char](#indent-char) 

**Namespace**: `html`

**Key**: `indent_char`

**Default**: ` `

**Type**: `string`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

Indentation character (Supported by JS Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "indent_char": " "
    }
}
```

#####  [Indent inner html](#indent-inner-html) 

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

#####  [Indent scripts](#indent-scripts) 

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

#####  [Indent size](#indent-size) 

**Namespace**: `html`

**Key**: `indent_size`

**Default**: `4`

**Type**: `integer`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

Indentation size/length (Supported by JS Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "indent_size": 4
    }
}
```

#####  [Max preserve newlines](#max-preserve-newlines) 

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

#####  [Preserve newlines](#preserve-newlines) 

**Namespace**: `html`

**Key**: `preserve_newlines`

**Default**: `true`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

Preserve line-breaks (Supported by JS Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "preserve_newlines": true
    }
}
```

#####  [Unformatted](#unformatted) 

**Namespace**: `html`

**Key**: `unformatted`

**Default**: `a,span,img,bdo,em,strong,dfn,code,samp,kbd,var,cite,abbr,acronym,q,sub,sup,tt,i,b,big,small,u,s,strike,font,ins,del,pre,address,dt,h1,h2,h3,h4,h5,h6`

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
            "span",
            "img",
            "bdo",
            "em",
            "strong",
            "dfn",
            "code",
            "samp",
            "kbd",
            "var",
            "cite",
            "abbr",
            "acronym",
            "q",
            "sub",
            "sup",
            "tt",
            "i",
            "b",
            "big",
            "small",
            "u",
            "s",
            "strike",
            "font",
            "ins",
            "del",
            "pre",
            "address",
            "dt",
            "h1",
            "h2",
            "h3",
            "h4",
            "h5",
            "h6"
        ]
    }
}
```

#####  [Wrap attributes](#wrap-attributes) 

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

#####  [Wrap attributes indent size](#wrap-attributes-indent-size) 

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

#####  [Wrap line length](#wrap-line-length) 

**Namespace**: `html`

**Key**: `wrap_line_length`

**Default**: `250`

**Type**: `integer`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

Maximum characters per line (0 disables) (Supported by JS Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "wrap_line_length": 250
    }
}
```

####  [Mustache](#mustache) 

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

Options for language Mustache

#####  [Disable Beautifying Language](#disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable Mustache Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Disable Beautifying Language*" and change it to your desired configuration.

#####  [Default Beautifier](#default-beautifier) 

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
3. Find the option "*Default Beautifier*" and change it to your desired configuration.

#####  [Beautify On Save](#beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify Mustache files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Beautify On Save*" and change it to your desired configuration.

#####  [Brace style](#brace-style) 

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

#####  [End with newline](#end-with-newline) 

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

#####  [Extra liners](#extra-liners) 

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

#####  [Indent char](#indent-char) 

**Namespace**: `html`

**Key**: `indent_char`

**Default**: ` `

**Type**: `string`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

Indentation character (Supported by JS Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "indent_char": " "
    }
}
```

#####  [Indent inner html](#indent-inner-html) 

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

#####  [Indent scripts](#indent-scripts) 

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

#####  [Indent size](#indent-size) 

**Namespace**: `html`

**Key**: `indent_size`

**Default**: `4`

**Type**: `integer`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

Indentation size/length (Supported by JS Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "indent_size": 4
    }
}
```

#####  [Max preserve newlines](#max-preserve-newlines) 

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

#####  [Preserve newlines](#preserve-newlines) 

**Namespace**: `html`

**Key**: `preserve_newlines`

**Default**: `true`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

Preserve line-breaks (Supported by JS Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "preserve_newlines": true
    }
}
```

#####  [Unformatted](#unformatted) 

**Namespace**: `html`

**Key**: `unformatted`

**Default**: `a,span,img,bdo,em,strong,dfn,code,samp,kbd,var,cite,abbr,acronym,q,sub,sup,tt,i,b,big,small,u,s,strike,font,ins,del,pre,address,dt,h1,h2,h3,h4,h5,h6`

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
            "span",
            "img",
            "bdo",
            "em",
            "strong",
            "dfn",
            "code",
            "samp",
            "kbd",
            "var",
            "cite",
            "abbr",
            "acronym",
            "q",
            "sub",
            "sup",
            "tt",
            "i",
            "b",
            "big",
            "small",
            "u",
            "s",
            "strike",
            "font",
            "ins",
            "del",
            "pre",
            "address",
            "dt",
            "h1",
            "h2",
            "h3",
            "h4",
            "h5",
            "h6"
        ]
    }
}
```

#####  [Wrap attributes](#wrap-attributes) 

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

#####  [Wrap attributes indent size](#wrap-attributes-indent-size) 

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

#####  [Wrap line length](#wrap-line-length) 

**Namespace**: `html`

**Key**: `wrap_line_length`

**Default**: `250`

**Type**: `integer`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

Maximum characters per line (0 disables) (Supported by JS Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "wrap_line_length": 250
    }
}
```

####  [Objective-C](#objective-c) 

**Supported Beautifiers**:  [`Uncrustify`](#uncrustify)  [`clang-format`](#clang-format) 

**Description**:

Options for language Objective-C

#####  [Disable Beautifying Language](#disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable Objective-C Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Disable Beautifying Language*" and change it to your desired configuration.

#####  [Default Beautifier](#default-beautifier) 

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
3. Find the option "*Default Beautifier*" and change it to your desired configuration.

#####  [Beautify On Save](#beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify Objective-C files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Beautify On Save*" and change it to your desired configuration.

#####  [Config Path](#config-path) 

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

####  [Pawn](#pawn) 

**Supported Beautifiers**:  [`Uncrustify`](#uncrustify) 

**Description**:

Options for language Pawn

#####  [Disable Beautifying Language](#disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable Pawn Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Disable Beautifying Language*" and change it to your desired configuration.

#####  [Default Beautifier](#default-beautifier) 

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
3. Find the option "*Default Beautifier*" and change it to your desired configuration.

#####  [Beautify On Save](#beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify Pawn files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Beautify On Save*" and change it to your desired configuration.

#####  [Config Path](#config-path) 

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

####  [Perl](#perl) 

**Supported Beautifiers**:  [`Perltidy`](#perltidy) 

**Description**:

Options for language Perl

#####  [Disable Beautifying Language](#disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable Perl Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Disable Beautifying Language*" and change it to your desired configuration.

#####  [Default Beautifier](#default-beautifier) 

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
3. Find the option "*Default Beautifier*" and change it to your desired configuration.

#####  [Beautify On Save](#beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify Perl files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Beautify On Save*" and change it to your desired configuration.

#####  [Perltidy profile](#perltidy-profile) 

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

####  [PHP](#php) 

**Supported Beautifiers**:  [`PHP-CS-Fixer`](#php-cs-fixer)  [`PHPCBF`](#phpcbf) 

**Description**:

Options for language PHP

#####  [Disable Beautifying Language](#disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable PHP Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Disable Beautifying Language*" and change it to your desired configuration.

#####  [Default Beautifier](#default-beautifier) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Default**: `PHP-CS-Fixer`

**Type**: `string`

**Enum**:  `PHP-CS-Fixer`  `PHPCBF` 

**Description**:

Default Beautifier to be used for PHP

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Default Beautifier*" and change it to your desired configuration.

#####  [Beautify On Save](#beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify PHP files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Beautify On Save*" and change it to your desired configuration.

#####  [PHP-CS-Fixer Path](#php-cs-fixer-path) 

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

#####  [Fixers](#fixers) 

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

#####  [Level](#level) 

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

#####  [PHPCBF Path](#phpcbf-path) 

**Namespace**: `php`

**Key**: `phpcbf_path`

**Type**: `string`

**Supported Beautifiers**:  [`PHP-CS-Fixer`](#php-cs-fixer) 

**Description**:

Path to the `phpcbf` CLI executable (Supported by PHP-CS-Fixer)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "php": {
        "phpcbf_path": ""
    }
}
```

#####  [PHPCBF Standard](#phpcbf-standard) 

**Namespace**: `php`

**Key**: `standard`

**Type**: `string`

**Supported Beautifiers**:  [`PHP-CS-Fixer`](#php-cs-fixer)  [`PHPCBF`](#phpcbf) 

**Description**:

Standard name Squiz, PSR2, PSR1, PHPCS, PEAR, Zend, MySource... or path to CS rules (Supported by PHP-CS-Fixer, PHPCBF)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "php": {
        "standard": ""
    }
}
```

####  [Puppet](#puppet) 

**Supported Beautifiers**:  [`puppet-lint`](#puppet-lint) 

**Description**:

Options for language Puppet

#####  [Disable Beautifying Language](#disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable Puppet Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Disable Beautifying Language*" and change it to your desired configuration.

#####  [Default Beautifier](#default-beautifier) 

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
3. Find the option "*Default Beautifier*" and change it to your desired configuration.

#####  [Beautify On Save](#beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify Puppet files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Beautify On Save*" and change it to your desired configuration.

####  [Python](#python) 

**Supported Beautifiers**:  [`autopep8`](#autopep8)  [`yapf`](#yapf) 

**Description**:

Options for language Python

#####  [Disable Beautifying Language](#disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable Python Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Disable Beautifying Language*" and change it to your desired configuration.

#####  [Default Beautifier](#default-beautifier) 

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
3. Find the option "*Default Beautifier*" and change it to your desired configuration.

#####  [Beautify On Save](#beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify Python files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Beautify On Save*" and change it to your desired configuration.

#####  [Ignore](#ignore) 

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

#####  [Indent size](#indent-size) 

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

#####  [Max line length](#max-line-length) 

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

#####  [Sort imports](#sort-imports) 

**Namespace**: `python`

**Key**: `sort_imports`

**Type**: `boolean`

**Supported Beautifiers**:  [`autopep8`](#autopep8) 

**Description**:

sort imports (requires isort installed) (Supported by autopep8)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "python": {
        "sort_imports": false
    }
}
```

####  [Riot.js](#riot.js) 

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Options for language Riot.js

#####  [Disable Beautifying Language](#disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable Riot.js Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Disable Beautifying Language*" and change it to your desired configuration.

#####  [Default Beautifier](#default-beautifier) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Default**: `Pretty Diff`

**Type**: `string`

**Enum**:  `Pretty Diff` 

**Description**:

Default Beautifier to be used for Riot.js

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Default Beautifier*" and change it to your desired configuration.

#####  [Beautify On Save](#beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify Riot.js files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Beautify On Save*" and change it to your desired configuration.

#####  [Indent char](#indent-char) 

**Namespace**: `html`

**Key**: `indent_char`

**Default**: ` `

**Type**: `string`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Indentation character (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "indent_char": " "
    }
}
```

#####  [Indent size](#indent-size) 

**Namespace**: `html`

**Key**: `indent_size`

**Default**: `4`

**Type**: `integer`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Indentation size/length (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "indent_size": 4
    }
}
```

#####  [Preserve newlines](#preserve-newlines) 

**Namespace**: `html`

**Key**: `preserve_newlines`

**Default**: `true`

**Type**: `boolean`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Preserve line-breaks (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "preserve_newlines": true
    }
}
```

#####  [Wrap line length](#wrap-line-length) 

**Namespace**: `html`

**Key**: `wrap_line_length`

**Default**: `250`

**Type**: `integer`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Maximum characters per line (0 disables) (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "wrap_line_length": 250
    }
}
```

####  [Ruby](#ruby) 

**Supported Beautifiers**:  [`Rubocop`](#rubocop)  [`Ruby Beautify`](#ruby-beautify) 

**Description**:

Options for language Ruby

#####  [Disable Beautifying Language](#disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable Ruby Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Disable Beautifying Language*" and change it to your desired configuration.

#####  [Default Beautifier](#default-beautifier) 

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
3. Find the option "*Default Beautifier*" and change it to your desired configuration.

#####  [Beautify On Save](#beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify Ruby files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Beautify On Save*" and change it to your desired configuration.

#####  [Indent char](#indent-char) 

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

#####  [Indent size](#indent-size) 

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

#####  [Rubocop Path](#rubocop-path) 

**Namespace**: `ruby`

**Key**: `rubocop_path`

**Type**: `string`

**Supported Beautifiers**:  [`Rubocop`](#rubocop) 

**Description**:

Path to the `rubocop` CLI executable (Supported by Rubocop)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "ruby": {
        "rubocop_path": ""
    }
}
```

####  [Rust](#rust) 

**Supported Beautifiers**:  [`rustfmt`](#rustfmt) 

**Description**:

Options for language Rust

#####  [Disable Beautifying Language](#disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable Rust Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Disable Beautifying Language*" and change it to your desired configuration.

#####  [Default Beautifier](#default-beautifier) 

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
3. Find the option "*Default Beautifier*" and change it to your desired configuration.

#####  [Beautify On Save](#beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify Rust files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Beautify On Save*" and change it to your desired configuration.

#####  [Rustfmt path](#rustfmt-path) 

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

####  [Sass](#sass) 

**Supported Beautifiers**:  [`CSScomb`](#csscomb)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Options for language Sass

#####  [Disable Beautifying Language](#disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable Sass Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Disable Beautifying Language*" and change it to your desired configuration.

#####  [Default Beautifier](#default-beautifier) 

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
3. Find the option "*Default Beautifier*" and change it to your desired configuration.

#####  [Beautify On Save](#beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify Sass files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Beautify On Save*" and change it to your desired configuration.

#####  [Align assignments](#align-assignments) 

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

#####  [comb custom config file](#comb-custom-config-file) 

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

#####  [Convert quotes](#convert-quotes) 

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

#####  [Force indentation](#force-indentation) 

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

#####  [Indent char](#indent-char) 

**Namespace**: `css`

**Key**: `indent_char`

**Default**: ` `

**Type**: `string`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Indentation character (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "css": {
        "indent_char": " "
    }
}
```

#####  [Indent comments](#indent-comments) 

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

#####  [Indent size](#indent-size) 

**Namespace**: `css`

**Key**: `indent_size`

**Default**: `4`

**Type**: `integer`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Indentation size/length (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "css": {
        "indent_size": 4
    }
}
```

#####  [Newline between rules](#newline-between-rules) 

**Namespace**: `css`

**Key**: `newline_between_rules`

**Type**: `boolean`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Add a newline between CSS rules (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "css": {
        "newline_between_rules": false
    }
}
```

#####  [No lead zero](#no-lead-zero) 

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

#####  [comb predefined config](#comb-predefined-config) 

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

#####  [Preserve newlines](#preserve-newlines) 

**Namespace**: `css`

**Key**: `preserve_newlines`

**Type**: `boolean`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Retain empty lines. Consecutive empty lines will be converted to a single empty line. (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "css": {
        "preserve_newlines": false
    }
}
```

#####  [Wrap line length](#wrap-line-length) 

**Namespace**: `css`

**Key**: `wrap_line_length`

**Type**: `integer`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Maximum amount of characters per line (0 = disable) (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "css": {
        "wrap_line_length": 0
    }
}
```

####  [SCSS](#scss) 

**Supported Beautifiers**:  [`CSScomb`](#csscomb)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Options for language SCSS

#####  [Disable Beautifying Language](#disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable SCSS Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Disable Beautifying Language*" and change it to your desired configuration.

#####  [Default Beautifier](#default-beautifier) 

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
3. Find the option "*Default Beautifier*" and change it to your desired configuration.

#####  [Beautify On Save](#beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify SCSS files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Beautify On Save*" and change it to your desired configuration.

#####  [Align assignments](#align-assignments) 

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

#####  [comb custom config file](#comb-custom-config-file) 

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

#####  [Convert quotes](#convert-quotes) 

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

#####  [Force indentation](#force-indentation) 

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

#####  [Indent char](#indent-char) 

**Namespace**: `css`

**Key**: `indent_char`

**Default**: ` `

**Type**: `string`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Indentation character (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "css": {
        "indent_char": " "
    }
}
```

#####  [Indent comments](#indent-comments) 

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

#####  [Indent size](#indent-size) 

**Namespace**: `css`

**Key**: `indent_size`

**Default**: `4`

**Type**: `integer`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Indentation size/length (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "css": {
        "indent_size": 4
    }
}
```

#####  [Newline between rules](#newline-between-rules) 

**Namespace**: `css`

**Key**: `newline_between_rules`

**Type**: `boolean`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Add a newline between CSS rules (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "css": {
        "newline_between_rules": false
    }
}
```

#####  [No lead zero](#no-lead-zero) 

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

#####  [comb predefined config](#comb-predefined-config) 

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

#####  [Preserve newlines](#preserve-newlines) 

**Namespace**: `css`

**Key**: `preserve_newlines`

**Type**: `boolean`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Retain empty lines. Consecutive empty lines will be converted to a single empty line. (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "css": {
        "preserve_newlines": false
    }
}
```

#####  [Wrap line length](#wrap-line-length) 

**Namespace**: `css`

**Key**: `wrap_line_length`

**Type**: `integer`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Maximum amount of characters per line (0 = disable) (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "css": {
        "wrap_line_length": 0
    }
}
```

####  [Spacebars](#spacebars) 

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Options for language Spacebars

#####  [Disable Beautifying Language](#disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable Spacebars Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Disable Beautifying Language*" and change it to your desired configuration.

#####  [Default Beautifier](#default-beautifier) 

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
3. Find the option "*Default Beautifier*" and change it to your desired configuration.

#####  [Beautify On Save](#beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify Spacebars files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Beautify On Save*" and change it to your desired configuration.

#####  [Indent char](#indent-char) 

**Namespace**: `html`

**Key**: `indent_char`

**Default**: ` `

**Type**: `string`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Indentation character (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "indent_char": " "
    }
}
```

#####  [Indent size](#indent-size) 

**Namespace**: `html`

**Key**: `indent_size`

**Default**: `4`

**Type**: `integer`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Indentation size/length (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "indent_size": 4
    }
}
```

#####  [Preserve newlines](#preserve-newlines) 

**Namespace**: `html`

**Key**: `preserve_newlines`

**Default**: `true`

**Type**: `boolean`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Preserve line-breaks (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "preserve_newlines": true
    }
}
```

#####  [Wrap line length](#wrap-line-length) 

**Namespace**: `html`

**Key**: `wrap_line_length`

**Default**: `250`

**Type**: `integer`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Maximum characters per line (0 disables) (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "wrap_line_length": 250
    }
}
```

####  [SQL](#sql) 

**Supported Beautifiers**:  [`sqlformat`](#sqlformat) 

**Description**:

Options for language SQL

#####  [Disable Beautifying Language](#disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable SQL Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Disable Beautifying Language*" and change it to your desired configuration.

#####  [Default Beautifier](#default-beautifier) 

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
3. Find the option "*Default Beautifier*" and change it to your desired configuration.

#####  [Beautify On Save](#beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify SQL files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Beautify On Save*" and change it to your desired configuration.

#####  [Identifiers](#identifiers) 

**Namespace**: `sql`

**Key**: `identifiers`

**Default**: `unchanged`

**Type**: `string`

**Enum**:  `unchanged`  `lower`  `upper`  `capitalize` 

**Supported Beautifiers**:  [`sqlformat`](#sqlformat) 

**Description**:

Change case of identifiers (Supported by sqlformat)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "sql": {
        "identifiers": "unchanged"
    }
}
```

#####  [Indent size](#indent-size) 

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

#####  [Keywords](#keywords) 

**Namespace**: `sql`

**Key**: `keywords`

**Default**: `upper`

**Type**: `string`

**Enum**:  `unchanged`  `lower`  `upper`  `capitalize` 

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

####  [SVG](#svg) 

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Options for language SVG

#####  [Disable Beautifying Language](#disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable SVG Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Disable Beautifying Language*" and change it to your desired configuration.

#####  [Default Beautifier](#default-beautifier) 

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
3. Find the option "*Default Beautifier*" and change it to your desired configuration.

#####  [Beautify On Save](#beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify SVG files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Beautify On Save*" and change it to your desired configuration.

#####  [Indent char](#indent-char) 

**Namespace**: `html`

**Key**: `indent_char`

**Default**: ` `

**Type**: `string`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Indentation character (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "indent_char": " "
    }
}
```

#####  [Indent size](#indent-size) 

**Namespace**: `html`

**Key**: `indent_size`

**Default**: `4`

**Type**: `integer`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Indentation size/length (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "indent_size": 4
    }
}
```

#####  [Preserve newlines](#preserve-newlines) 

**Namespace**: `html`

**Key**: `preserve_newlines`

**Default**: `true`

**Type**: `boolean`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Preserve line-breaks (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "preserve_newlines": true
    }
}
```

#####  [Wrap line length](#wrap-line-length) 

**Namespace**: `html`

**Key**: `wrap_line_length`

**Default**: `250`

**Type**: `integer`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Maximum characters per line (0 disables) (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "wrap_line_length": 250
    }
}
```

####  [Swig](#swig) 

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Options for language Swig

#####  [Disable Beautifying Language](#disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable Swig Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Disable Beautifying Language*" and change it to your desired configuration.

#####  [Default Beautifier](#default-beautifier) 

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
3. Find the option "*Default Beautifier*" and change it to your desired configuration.

#####  [Beautify On Save](#beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify Swig files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Beautify On Save*" and change it to your desired configuration.

#####  [Indent char](#indent-char) 

**Namespace**: `html`

**Key**: `indent_char`

**Default**: ` `

**Type**: `string`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Indentation character (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "indent_char": " "
    }
}
```

#####  [Indent size](#indent-size) 

**Namespace**: `html`

**Key**: `indent_size`

**Default**: `4`

**Type**: `integer`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Indentation size/length (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "indent_size": 4
    }
}
```

#####  [Preserve newlines](#preserve-newlines) 

**Namespace**: `html`

**Key**: `preserve_newlines`

**Default**: `true`

**Type**: `boolean`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Preserve line-breaks (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "preserve_newlines": true
    }
}
```

#####  [Wrap line length](#wrap-line-length) 

**Namespace**: `html`

**Key**: `wrap_line_length`

**Default**: `250`

**Type**: `integer`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Maximum characters per line (0 disables) (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "wrap_line_length": 250
    }
}
```

####  [TSS](#tss) 

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Options for language TSS

#####  [Disable Beautifying Language](#disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable TSS Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Disable Beautifying Language*" and change it to your desired configuration.

#####  [Default Beautifier](#default-beautifier) 

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
3. Find the option "*Default Beautifier*" and change it to your desired configuration.

#####  [Beautify On Save](#beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify TSS files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Beautify On Save*" and change it to your desired configuration.

#####  [Align assignments](#align-assignments) 

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

#####  [Convert quotes](#convert-quotes) 

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

#####  [Force indentation](#force-indentation) 

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

#####  [Indent char](#indent-char) 

**Namespace**: `css`

**Key**: `indent_char`

**Default**: ` `

**Type**: `string`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Indentation character (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "css": {
        "indent_char": " "
    }
}
```

#####  [Indent comments](#indent-comments) 

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

#####  [Indent size](#indent-size) 

**Namespace**: `css`

**Key**: `indent_size`

**Default**: `4`

**Type**: `integer`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Indentation size/length (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "css": {
        "indent_size": 4
    }
}
```

#####  [Newline between rules](#newline-between-rules) 

**Namespace**: `css`

**Key**: `newline_between_rules`

**Type**: `boolean`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Add a newline between CSS rules (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "css": {
        "newline_between_rules": false
    }
}
```

#####  [No lead zero](#no-lead-zero) 

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

#####  [Preserve newlines](#preserve-newlines) 

**Namespace**: `css`

**Key**: `preserve_newlines`

**Type**: `boolean`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Retain empty lines. Consecutive empty lines will be converted to a single empty line. (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "css": {
        "preserve_newlines": false
    }
}
```

#####  [Wrap line length](#wrap-line-length) 

**Namespace**: `css`

**Key**: `wrap_line_length`

**Type**: `integer`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Maximum amount of characters per line (0 = disable) (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "css": {
        "wrap_line_length": 0
    }
}
```

####  [Twig](#twig) 

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Options for language Twig

#####  [Disable Beautifying Language](#disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable Twig Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Disable Beautifying Language*" and change it to your desired configuration.

#####  [Default Beautifier](#default-beautifier) 

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
3. Find the option "*Default Beautifier*" and change it to your desired configuration.

#####  [Beautify On Save](#beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify Twig files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Beautify On Save*" and change it to your desired configuration.

#####  [Break chained methods](#break-chained-methods) 

**Namespace**: `js`

**Key**: `break_chained_methods`

**Type**: `boolean`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Break chained method calls across subsequent lines (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "break_chained_methods": false
    }
}
```

#####  [End with comma](#end-with-comma) 

**Namespace**: `js`

**Key**: `end_with_comma`

**Type**: `boolean`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

If a terminating comma should be inserted into arrays, object literals, and destructured objects. (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "end_with_comma": false
    }
}
```

#####  [Indent char](#indent-char) 

**Namespace**: `html`

**Key**: `indent_char`

**Default**: ` `

**Type**: `string`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Indentation character (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "indent_char": " "
    }
}
```

#####  [Indent size](#indent-size) 

**Namespace**: `html`

**Key**: `indent_size`

**Default**: `4`

**Type**: `integer`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Indentation size/length (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "indent_size": 4
    }
}
```

#####  [Preserve newlines](#preserve-newlines) 

**Namespace**: `html`

**Key**: `preserve_newlines`

**Default**: `true`

**Type**: `boolean`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Preserve line-breaks (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "preserve_newlines": true
    }
}
```

#####  [Space after anon function](#space-after-anon-function) 

**Namespace**: `js`

**Key**: `space_after_anon_function`

**Type**: `boolean`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Add a space before an anonymous function's parens, ie. function () (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "space_after_anon_function": false
    }
}
```

#####  [Wrap line length](#wrap-line-length) 

**Namespace**: `html`

**Key**: `wrap_line_length`

**Default**: `250`

**Type**: `integer`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Maximum characters per line (0 disables) (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "wrap_line_length": 250
    }
}
```

####  [TypeScript](#typescript) 

**Supported Beautifiers**:  [`TypeScript Formatter`](#typescript-formatter) 

**Description**:

Options for language TypeScript

#####  [Disable Beautifying Language](#disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable TypeScript Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Disable Beautifying Language*" and change it to your desired configuration.

#####  [Default Beautifier](#default-beautifier) 

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
3. Find the option "*Default Beautifier*" and change it to your desired configuration.

#####  [Beautify On Save](#beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify TypeScript files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Beautify On Save*" and change it to your desired configuration.

#####  [Brace style](#brace-style) 

**Namespace**: `js`

**Key**: `brace_style`

**Default**: `collapse`

**Type**: `string`

**Enum**:  `collapse`  `collapse-preserve-inline`  `expand`  `end-expand`  `none` 

**Supported Beautifiers**:  [`TypeScript Formatter`](#typescript-formatter) 

**Description**:

[collapse|collapse-preserve-inline|expand|end-expand|none] (Supported by TypeScript Formatter)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "brace_style": "collapse"
    }
}
```

#####  [Break chained methods](#break-chained-methods) 

**Namespace**: `js`

**Key**: `break_chained_methods`

**Type**: `boolean`

**Supported Beautifiers**:  [`TypeScript Formatter`](#typescript-formatter) 

**Description**:

Break chained method calls across subsequent lines (Supported by TypeScript Formatter)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "break_chained_methods": false
    }
}
```

#####  [End with comma](#end-with-comma) 

**Namespace**: `js`

**Key**: `end_with_comma`

**Type**: `boolean`

**Supported Beautifiers**:  [`TypeScript Formatter`](#typescript-formatter) 

**Description**:

If a terminating comma should be inserted into arrays, object literals, and destructured objects. (Supported by TypeScript Formatter)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "end_with_comma": false
    }
}
```

#####  [End with newline](#end-with-newline) 

**Namespace**: `js`

**Key**: `end_with_newline`

**Type**: `boolean`

**Supported Beautifiers**:  [`TypeScript Formatter`](#typescript-formatter) 

**Description**:

End output with newline (Supported by TypeScript Formatter)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "end_with_newline": false
    }
}
```

#####  [Eval code](#eval-code) 

**Namespace**: `js`

**Key**: `eval_code`

**Type**: `boolean`

**Supported Beautifiers**:  [`TypeScript Formatter`](#typescript-formatter) 

**Description**:

 (Supported by TypeScript Formatter)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "eval_code": false
    }
}
```

#####  [Indent char](#indent-char) 

**Namespace**: `js`

**Key**: `indent_char`

**Default**: ` `

**Type**: `string`

**Supported Beautifiers**:  [`TypeScript Formatter`](#typescript-formatter) 

**Description**:

Indentation character (Supported by TypeScript Formatter)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "indent_char": " "
    }
}
```

#####  [Indent level](#indent-level) 

**Namespace**: `js`

**Key**: `indent_level`

**Type**: `integer`

**Supported Beautifiers**:  [`TypeScript Formatter`](#typescript-formatter) 

**Description**:

Initial indentation level (Supported by TypeScript Formatter)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "indent_level": 0
    }
}
```

#####  [Indent size](#indent-size) 

**Namespace**: `js`

**Key**: `indent_size`

**Default**: `4`

**Type**: `integer`

**Supported Beautifiers**:  [`TypeScript Formatter`](#typescript-formatter) 

**Description**:

Indentation size/length (Supported by TypeScript Formatter)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "indent_size": 4
    }
}
```

#####  [Indent with tabs](#indent-with-tabs) 

**Namespace**: `js`

**Key**: `indent_with_tabs`

**Type**: `boolean`

**Supported Beautifiers**:  [`TypeScript Formatter`](#typescript-formatter) 

**Description**:

Indentation uses tabs, overrides `Indent Size` and `Indent Char` (Supported by TypeScript Formatter)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "indent_with_tabs": false
    }
}
```

#####  [Jslint happy](#jslint-happy) 

**Namespace**: `js`

**Key**: `jslint_happy`

**Type**: `boolean`

**Supported Beautifiers**:  [`TypeScript Formatter`](#typescript-formatter) 

**Description**:

Enable jslint-stricter mode (Supported by TypeScript Formatter)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "jslint_happy": false
    }
}
```

#####  [Keep array indentation](#keep-array-indentation) 

**Namespace**: `js`

**Key**: `keep_array_indentation`

**Type**: `boolean`

**Supported Beautifiers**:  [`TypeScript Formatter`](#typescript-formatter) 

**Description**:

Preserve array indentation (Supported by TypeScript Formatter)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "keep_array_indentation": false
    }
}
```

#####  [Keep function indentation](#keep-function-indentation) 

**Namespace**: `js`

**Key**: `keep_function_indentation`

**Type**: `boolean`

**Supported Beautifiers**:  [`TypeScript Formatter`](#typescript-formatter) 

**Description**:

 (Supported by TypeScript Formatter)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "keep_function_indentation": false
    }
}
```

#####  [Max preserve newlines](#max-preserve-newlines) 

**Namespace**: `js`

**Key**: `max_preserve_newlines`

**Default**: `10`

**Type**: `integer`

**Supported Beautifiers**:  [`TypeScript Formatter`](#typescript-formatter) 

**Description**:

Number of line-breaks to be preserved in one chunk (Supported by TypeScript Formatter)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "max_preserve_newlines": 10
    }
}
```

#####  [Preserve newlines](#preserve-newlines) 

**Namespace**: `js`

**Key**: `preserve_newlines`

**Default**: `true`

**Type**: `boolean`

**Supported Beautifiers**:  [`TypeScript Formatter`](#typescript-formatter) 

**Description**:

Preserve line-breaks (Supported by TypeScript Formatter)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "preserve_newlines": true
    }
}
```

#####  [Space after anon function](#space-after-anon-function) 

**Namespace**: `js`

**Key**: `space_after_anon_function`

**Type**: `boolean`

**Supported Beautifiers**:  [`TypeScript Formatter`](#typescript-formatter) 

**Description**:

Add a space before an anonymous function's parens, ie. function () (Supported by TypeScript Formatter)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "space_after_anon_function": false
    }
}
```

#####  [Space before conditional](#space-before-conditional) 

**Namespace**: `js`

**Key**: `space_before_conditional`

**Default**: `true`

**Type**: `boolean`

**Supported Beautifiers**:  [`TypeScript Formatter`](#typescript-formatter) 

**Description**:

 (Supported by TypeScript Formatter)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "space_before_conditional": true
    }
}
```

#####  [Space in paren](#space-in-paren) 

**Namespace**: `js`

**Key**: `space_in_paren`

**Type**: `boolean`

**Supported Beautifiers**:  [`TypeScript Formatter`](#typescript-formatter) 

**Description**:

Add padding spaces within paren, ie. f( a, b ) (Supported by TypeScript Formatter)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "space_in_paren": false
    }
}
```

#####  [Unescape strings](#unescape-strings) 

**Namespace**: `js`

**Key**: `unescape_strings`

**Type**: `boolean`

**Supported Beautifiers**:  [`TypeScript Formatter`](#typescript-formatter) 

**Description**:

Decode printable characters encoded in xNN notation (Supported by TypeScript Formatter)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "unescape_strings": false
    }
}
```

#####  [Wrap line length](#wrap-line-length) 

**Namespace**: `js`

**Key**: `wrap_line_length`

**Type**: `integer`

**Supported Beautifiers**:  [`TypeScript Formatter`](#typescript-formatter) 

**Description**:

Wrap lines at next opportunity after N characters (Supported by TypeScript Formatter)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "wrap_line_length": 0
    }
}
```

####  [Vala](#vala) 

**Supported Beautifiers**:  [`Uncrustify`](#uncrustify) 

**Description**:

Options for language Vala

#####  [Disable Beautifying Language](#disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable Vala Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Disable Beautifying Language*" and change it to your desired configuration.

#####  [Default Beautifier](#default-beautifier) 

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
3. Find the option "*Default Beautifier*" and change it to your desired configuration.

#####  [Beautify On Save](#beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify Vala files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Beautify On Save*" and change it to your desired configuration.

#####  [Config Path](#config-path) 

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

####  [Visualforce](#visualforce) 

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Options for language Visualforce

#####  [Disable Beautifying Language](#disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable Visualforce Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Disable Beautifying Language*" and change it to your desired configuration.

#####  [Default Beautifier](#default-beautifier) 

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
3. Find the option "*Default Beautifier*" and change it to your desired configuration.

#####  [Beautify On Save](#beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify Visualforce files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Beautify On Save*" and change it to your desired configuration.

#####  [Indent char](#indent-char) 

**Namespace**: `html`

**Key**: `indent_char`

**Default**: ` `

**Type**: `string`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Indentation character (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "indent_char": " "
    }
}
```

#####  [Indent size](#indent-size) 

**Namespace**: `html`

**Key**: `indent_size`

**Default**: `4`

**Type**: `integer`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Indentation size/length (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "indent_size": 4
    }
}
```

#####  [Preserve newlines](#preserve-newlines) 

**Namespace**: `html`

**Key**: `preserve_newlines`

**Default**: `true`

**Type**: `boolean`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Preserve line-breaks (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "preserve_newlines": true
    }
}
```

#####  [Wrap line length](#wrap-line-length) 

**Namespace**: `html`

**Key**: `wrap_line_length`

**Default**: `250`

**Type**: `integer`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Maximum characters per line (0 disables) (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "wrap_line_length": 250
    }
}
```

####  [XML](#xml) 

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Options for language XML

#####  [Disable Beautifying Language](#disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable XML Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Disable Beautifying Language*" and change it to your desired configuration.

#####  [Default Beautifier](#default-beautifier) 

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
3. Find the option "*Default Beautifier*" and change it to your desired configuration.

#####  [Beautify On Save](#beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify XML files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Beautify On Save*" and change it to your desired configuration.

#####  [Brace style](#brace-style) 

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

#####  [End with newline](#end-with-newline) 

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

#####  [Extra liners](#extra-liners) 

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

#####  [Indent char](#indent-char) 

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

#####  [Indent inner html](#indent-inner-html) 

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

#####  [Indent scripts](#indent-scripts) 

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

#####  [Indent size](#indent-size) 

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

#####  [Max preserve newlines](#max-preserve-newlines) 

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

#####  [Preserve newlines](#preserve-newlines) 

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

#####  [Unformatted](#unformatted) 

**Namespace**: `html`

**Key**: `unformatted`

**Default**: `a,span,img,bdo,em,strong,dfn,code,samp,kbd,var,cite,abbr,acronym,q,sub,sup,tt,i,b,big,small,u,s,strike,font,ins,del,pre,address,dt,h1,h2,h3,h4,h5,h6`

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
            "span",
            "img",
            "bdo",
            "em",
            "strong",
            "dfn",
            "code",
            "samp",
            "kbd",
            "var",
            "cite",
            "abbr",
            "acronym",
            "q",
            "sub",
            "sup",
            "tt",
            "i",
            "b",
            "big",
            "small",
            "u",
            "s",
            "strike",
            "font",
            "ins",
            "del",
            "pre",
            "address",
            "dt",
            "h1",
            "h2",
            "h3",
            "h4",
            "h5",
            "h6"
        ]
    }
}
```

#####  [Wrap attributes](#wrap-attributes) 

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

#####  [Wrap attributes indent size](#wrap-attributes-indent-size) 

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

#####  [Wrap line length](#wrap-line-length) 

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

####  [XTemplate](#xtemplate) 

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Options for language XTemplate

#####  [Disable Beautifying Language](#disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable XTemplate Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Disable Beautifying Language*" and change it to your desired configuration.

#####  [Default Beautifier](#default-beautifier) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Default**: `Pretty Diff`

**Type**: `string`

**Enum**:  `Pretty Diff` 

**Description**:

Default Beautifier to be used for XTemplate

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Default Beautifier*" and change it to your desired configuration.

#####  [Beautify On Save](#beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify XTemplate files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Beautify On Save*" and change it to your desired configuration.

#####  [Indent char](#indent-char) 

**Namespace**: `html`

**Key**: `indent_char`

**Default**: ` `

**Type**: `string`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Indentation character (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "indent_char": " "
    }
}
```

#####  [Indent size](#indent-size) 

**Namespace**: `html`

**Key**: `indent_size`

**Default**: `4`

**Type**: `integer`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Indentation size/length (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "indent_size": 4
    }
}
```

#####  [Preserve newlines](#preserve-newlines) 

**Namespace**: `html`

**Key**: `preserve_newlines`

**Default**: `true`

**Type**: `boolean`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Preserve line-breaks (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "preserve_newlines": true
    }
}
```

#####  [Wrap line length](#wrap-line-length) 

**Namespace**: `html`

**Key**: `wrap_line_length`

**Default**: `250`

**Type**: `integer`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Maximum characters per line (0 disables) (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "wrap_line_length": 250
    }
}
```


## Beautifier Options

Supported options for each beautifier.

---

### CSScomb

#####  [comb custom config file](#comb-custom-config-file) 

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

#####  [comb predefined config](#comb-predefined-config) 

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


### Coffee Formatter

#####  [Indent size](#indent-size) 

**Namespace**: `js`

**Key**: `indent_size`

**Default**: `4`

**Type**: `integer`

**Supported Beautifiers**:  [`Coffee Formatter`](#coffee-formatter)  [`coffee-fmt`](#coffee-fmt) 

**Description**:

Indentation size/length (Supported by Coffee Formatter, coffee-fmt)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "indent_size": 4
    }
}
```

#####  [Indent char](#indent-char) 

**Namespace**: `js`

**Key**: `indent_char`

**Default**: ` `

**Type**: `string`

**Supported Beautifiers**:  [`Coffee Formatter`](#coffee-formatter)  [`coffee-fmt`](#coffee-fmt) 

**Description**:

Indentation character (Supported by Coffee Formatter, coffee-fmt)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "indent_char": " "
    }
}
```

#####  [Indent level](#indent-level) 

**Namespace**: `js`

**Key**: `indent_level`

**Type**: `integer`

**Supported Beautifiers**:  [`Coffee Formatter`](#coffee-formatter) 

**Description**:

Initial indentation level (Supported by Coffee Formatter)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "indent_level": 0
    }
}
```

#####  [Indent with tabs](#indent-with-tabs) 

**Namespace**: `js`

**Key**: `indent_with_tabs`

**Type**: `boolean`

**Supported Beautifiers**:  [`Coffee Formatter`](#coffee-formatter)  [`coffee-fmt`](#coffee-fmt) 

**Description**:

Indentation uses tabs, overrides `Indent Size` and `Indent Char` (Supported by Coffee Formatter, coffee-fmt)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "indent_with_tabs": false
    }
}
```

#####  [Preserve newlines](#preserve-newlines) 

**Namespace**: `js`

**Key**: `preserve_newlines`

**Default**: `true`

**Type**: `boolean`

**Supported Beautifiers**:  [`Coffee Formatter`](#coffee-formatter) 

**Description**:

Preserve line-breaks (Supported by Coffee Formatter)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "preserve_newlines": true
    }
}
```

#####  [Max preserve newlines](#max-preserve-newlines) 

**Namespace**: `js`

**Key**: `max_preserve_newlines`

**Default**: `10`

**Type**: `integer`

**Supported Beautifiers**:  [`Coffee Formatter`](#coffee-formatter) 

**Description**:

Number of line-breaks to be preserved in one chunk (Supported by Coffee Formatter)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "max_preserve_newlines": 10
    }
}
```

#####  [Space in paren](#space-in-paren) 

**Namespace**: `js`

**Key**: `space_in_paren`

**Type**: `boolean`

**Supported Beautifiers**:  [`Coffee Formatter`](#coffee-formatter) 

**Description**:

Add padding spaces within paren, ie. f( a, b ) (Supported by Coffee Formatter)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "space_in_paren": false
    }
}
```

#####  [Jslint happy](#jslint-happy) 

**Namespace**: `js`

**Key**: `jslint_happy`

**Type**: `boolean`

**Supported Beautifiers**:  [`Coffee Formatter`](#coffee-formatter) 

**Description**:

Enable jslint-stricter mode (Supported by Coffee Formatter)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "jslint_happy": false
    }
}
```

#####  [Space after anon function](#space-after-anon-function) 

**Namespace**: `js`

**Key**: `space_after_anon_function`

**Type**: `boolean`

**Supported Beautifiers**:  [`Coffee Formatter`](#coffee-formatter) 

**Description**:

Add a space before an anonymous function's parens, ie. function () (Supported by Coffee Formatter)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "space_after_anon_function": false
    }
}
```

#####  [Brace style](#brace-style) 

**Namespace**: `js`

**Key**: `brace_style`

**Default**: `collapse`

**Type**: `string`

**Enum**:  `collapse`  `collapse-preserve-inline`  `expand`  `end-expand`  `none` 

**Supported Beautifiers**:  [`Coffee Formatter`](#coffee-formatter) 

**Description**:

[collapse|collapse-preserve-inline|expand|end-expand|none] (Supported by Coffee Formatter)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "brace_style": "collapse"
    }
}
```

#####  [Break chained methods](#break-chained-methods) 

**Namespace**: `js`

**Key**: `break_chained_methods`

**Type**: `boolean`

**Supported Beautifiers**:  [`Coffee Formatter`](#coffee-formatter) 

**Description**:

Break chained method calls across subsequent lines (Supported by Coffee Formatter)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "break_chained_methods": false
    }
}
```

#####  [Keep array indentation](#keep-array-indentation) 

**Namespace**: `js`

**Key**: `keep_array_indentation`

**Type**: `boolean`

**Supported Beautifiers**:  [`Coffee Formatter`](#coffee-formatter) 

**Description**:

Preserve array indentation (Supported by Coffee Formatter)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "keep_array_indentation": false
    }
}
```

#####  [Keep function indentation](#keep-function-indentation) 

**Namespace**: `js`

**Key**: `keep_function_indentation`

**Type**: `boolean`

**Supported Beautifiers**:  [`Coffee Formatter`](#coffee-formatter) 

**Description**:

 (Supported by Coffee Formatter)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "keep_function_indentation": false
    }
}
```

#####  [Space before conditional](#space-before-conditional) 

**Namespace**: `js`

**Key**: `space_before_conditional`

**Default**: `true`

**Type**: `boolean`

**Supported Beautifiers**:  [`Coffee Formatter`](#coffee-formatter) 

**Description**:

 (Supported by Coffee Formatter)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "space_before_conditional": true
    }
}
```

#####  [Eval code](#eval-code) 

**Namespace**: `js`

**Key**: `eval_code`

**Type**: `boolean`

**Supported Beautifiers**:  [`Coffee Formatter`](#coffee-formatter) 

**Description**:

 (Supported by Coffee Formatter)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "eval_code": false
    }
}
```

#####  [Unescape strings](#unescape-strings) 

**Namespace**: `js`

**Key**: `unescape_strings`

**Type**: `boolean`

**Supported Beautifiers**:  [`Coffee Formatter`](#coffee-formatter) 

**Description**:

Decode printable characters encoded in xNN notation (Supported by Coffee Formatter)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "unescape_strings": false
    }
}
```

#####  [Wrap line length](#wrap-line-length) 

**Namespace**: `js`

**Key**: `wrap_line_length`

**Type**: `integer`

**Supported Beautifiers**:  [`Coffee Formatter`](#coffee-formatter) 

**Description**:

Wrap lines at next opportunity after N characters (Supported by Coffee Formatter)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "wrap_line_length": 0
    }
}
```

#####  [End with newline](#end-with-newline) 

**Namespace**: `js`

**Key**: `end_with_newline`

**Type**: `boolean`

**Supported Beautifiers**:  [`Coffee Formatter`](#coffee-formatter) 

**Description**:

End output with newline (Supported by Coffee Formatter)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "end_with_newline": false
    }
}
```

#####  [End with comma](#end-with-comma) 

**Namespace**: `js`

**Key**: `end_with_comma`

**Type**: `boolean`

**Supported Beautifiers**:  [`Coffee Formatter`](#coffee-formatter) 

**Description**:

If a terminating comma should be inserted into arrays, object literals, and destructured objects. (Supported by Coffee Formatter)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "end_with_comma": false
    }
}
```


### Fortran Beautifier

#####  [Emacs path](#emacs-path) 

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

#####  [Emacs script path](#emacs-script-path) 

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


### Gherkin formatter

#####  [Indent size](#indent-size) 

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

#####  [Indent char](#indent-char) 

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


### HTML Beautifier

#####  [Indent size](#indent-size) 

**Namespace**: `html`

**Key**: `indent_size`

**Default**: `4`

**Type**: `integer`

**Supported Beautifiers**:  [`HTML Beautifier`](#html-beautifier)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Indentation size/length (Supported by HTML Beautifier, Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "indent_size": 4
    }
}
```


### JS Beautify

#####  [Indent size](#indent-size) 

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

#####  [Indent char](#indent-char) 

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

#####  [Selector separator newline](#selector-separator-newline) 

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

#####  [Newline between rules](#newline-between-rules) 

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

#####  [Preserve newlines](#preserve-newlines) 

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

#####  [Wrap line length](#wrap-line-length) 

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

#####  [Indent inner html](#indent-inner-html) 

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

#####  [Brace style](#brace-style) 

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

#####  [Indent scripts](#indent-scripts) 

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

#####  [Wrap attributes](#wrap-attributes) 

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

#####  [Wrap attributes indent size](#wrap-attributes-indent-size) 

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

#####  [Max preserve newlines](#max-preserve-newlines) 

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

#####  [Unformatted](#unformatted) 

**Namespace**: `html`

**Key**: `unformatted`

**Default**: `a,span,img,bdo,em,strong,dfn,code,samp,kbd,var,cite,abbr,acronym,q,sub,sup,tt,i,b,big,small,u,s,strike,font,ins,del,pre,address,dt,h1,h2,h3,h4,h5,h6`

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
            "span",
            "img",
            "bdo",
            "em",
            "strong",
            "dfn",
            "code",
            "samp",
            "kbd",
            "var",
            "cite",
            "abbr",
            "acronym",
            "q",
            "sub",
            "sup",
            "tt",
            "i",
            "b",
            "big",
            "small",
            "u",
            "s",
            "strike",
            "font",
            "ins",
            "del",
            "pre",
            "address",
            "dt",
            "h1",
            "h2",
            "h3",
            "h4",
            "h5",
            "h6"
        ]
    }
}
```

#####  [End with newline](#end-with-newline) 

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

#####  [Extra liners](#extra-liners) 

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

#####  [Indent level](#indent-level) 

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

#####  [Indent with tabs](#indent-with-tabs) 

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

#####  [Space in paren](#space-in-paren) 

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

#####  [Jslint happy](#jslint-happy) 

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

#####  [Space after anon function](#space-after-anon-function) 

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

#####  [Break chained methods](#break-chained-methods) 

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

#####  [Keep array indentation](#keep-array-indentation) 

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

#####  [Keep function indentation](#keep-function-indentation) 

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

#####  [Space before conditional](#space-before-conditional) 

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

#####  [Eval code](#eval-code) 

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

#####  [Unescape strings](#unescape-strings) 

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

#####  [End with comma](#end-with-comma) 

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


### Latex Beautify

#####  [Indent char](#indent-char) 

**Namespace**: `latex`

**Key**: `indent_char`

**Default**: ` `

**Type**: `string`

**Supported Beautifiers**:  [`Latex Beautify`](#latex-beautify) 

**Description**:

Indentation character (Supported by Latex Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "latex": {
        "indent_char": " "
    }
}
```

#####  [Indent with tabs](#indent-with-tabs) 

**Namespace**: `latex`

**Key**: `indent_with_tabs`

**Default**: `true`

**Type**: `boolean`

**Supported Beautifiers**:  [`Latex Beautify`](#latex-beautify) 

**Description**:

Indentation uses tabs, overrides `Indent Size` and `Indent Char` (Supported by Latex Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "latex": {
        "indent_with_tabs": true
    }
}
```

#####  [Indent preamble](#indent-preamble) 

**Namespace**: `latex`

**Key**: `indent_preamble`

**Type**: `boolean`

**Supported Beautifiers**:  [`Latex Beautify`](#latex-beautify) 

**Description**:

Indent the preable (Supported by Latex Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "latex": {
        "indent_preamble": false
    }
}
```

#####  [Always look for split braces](#always-look-for-split-braces) 

**Namespace**: `latex`

**Key**: `always_look_for_split_braces`

**Default**: `true`

**Type**: `boolean`

**Supported Beautifiers**:  [`Latex Beautify`](#latex-beautify) 

**Description**:

If `latexindent` should look for commands that split braces across lines (Supported by Latex Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "latex": {
        "always_look_for_split_braces": true
    }
}
```

#####  [Always look for split brackets](#always-look-for-split-brackets) 

**Namespace**: `latex`

**Key**: `always_look_for_split_brackets`

**Type**: `boolean`

**Supported Beautifiers**:  [`Latex Beautify`](#latex-beautify) 

**Description**:

If `latexindent` should look for commands that split brackets across lines (Supported by Latex Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "latex": {
        "always_look_for_split_brackets": false
    }
}
```

#####  [Remove trailing whitespace](#remove-trailing-whitespace) 

**Namespace**: `latex`

**Key**: `remove_trailing_whitespace`

**Type**: `boolean`

**Supported Beautifiers**:  [`Latex Beautify`](#latex-beautify) 

**Description**:

Remove trailing whitespace (Supported by Latex Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "latex": {
        "remove_trailing_whitespace": false
    }
}
```

#####  [Align columns in environments](#align-columns-in-environments) 

**Namespace**: `latex`

**Key**: `align_columns_in_environments`

**Default**: `tabular,matrix,bmatrix,pmatrix`

**Type**: `array`

**Supported Beautifiers**:  [`Latex Beautify`](#latex-beautify) 

**Description**:

undefined (Supported by Latex Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "latex": {
        "align_columns_in_environments": [
            "tabular",
            "matrix",
            "bmatrix",
            "pmatrix"
        ]
    }
}
```


### PHP-CS-Fixer

#####  [PHP-CS-Fixer Path](#php-cs-fixer-path) 

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

#####  [Fixers](#fixers) 

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

#####  [Level](#level) 

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

#####  [PHPCBF Path](#phpcbf-path) 

**Namespace**: `php`

**Key**: `phpcbf_path`

**Type**: `string`

**Supported Beautifiers**:  [`PHP-CS-Fixer`](#php-cs-fixer) 

**Description**:

Path to the `phpcbf` CLI executable (Supported by PHP-CS-Fixer)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "php": {
        "phpcbf_path": ""
    }
}
```

#####  [PHPCBF Standard](#phpcbf-standard) 

**Namespace**: `php`

**Key**: `standard`

**Type**: `string`

**Supported Beautifiers**:  [`PHP-CS-Fixer`](#php-cs-fixer)  [`PHPCBF`](#phpcbf) 

**Description**:

Standard name Squiz, PSR2, PSR1, PHPCS, PEAR, Zend, MySource... or path to CS rules (Supported by PHP-CS-Fixer, PHPCBF)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "php": {
        "standard": ""
    }
}
```


### PHPCBF

#####  [PHPCBF Standard](#phpcbf-standard) 

**Namespace**: `php`

**Key**: `standard`

**Type**: `string`

**Supported Beautifiers**:  [`PHP-CS-Fixer`](#php-cs-fixer)  [`PHPCBF`](#phpcbf) 

**Description**:

Standard name Squiz, PSR2, PSR1, PHPCS, PEAR, Zend, MySource... or path to CS rules (Supported by PHP-CS-Fixer, PHPCBF)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "php": {
        "standard": ""
    }
}
```


### Perltidy

#####  [Perltidy profile](#perltidy-profile) 

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


### Pretty Diff

#####  [Indent size](#indent-size) 

**Namespace**: `html`

**Key**: `indent_size`

**Default**: `4`

**Type**: `integer`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Indentation size/length (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "indent_size": 4
    }
}
```

#####  [Indent char](#indent-char) 

**Namespace**: `html`

**Key**: `indent_char`

**Default**: ` `

**Type**: `string`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Indentation character (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "indent_char": " "
    }
}
```

#####  [Wrap line length](#wrap-line-length) 

**Namespace**: `html`

**Key**: `wrap_line_length`

**Default**: `250`

**Type**: `integer`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Maximum characters per line (0 disables) (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "wrap_line_length": 250
    }
}
```

#####  [Preserve newlines](#preserve-newlines) 

**Namespace**: `html`

**Key**: `preserve_newlines`

**Default**: `true`

**Type**: `boolean`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Preserve line-breaks (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "preserve_newlines": true
    }
}
```

#####  [Newline between rules](#newline-between-rules) 

**Namespace**: `css`

**Key**: `newline_between_rules`

**Type**: `boolean`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Add a newline between CSS rules (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "css": {
        "newline_between_rules": false
    }
}
```

#####  [Indent comments](#indent-comments) 

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

#####  [Force indentation](#force-indentation) 

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

#####  [Convert quotes](#convert-quotes) 

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

#####  [Align assignments](#align-assignments) 

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

#####  [No lead zero](#no-lead-zero) 

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

#####  [Space after anon function](#space-after-anon-function) 

**Namespace**: `js`

**Key**: `space_after_anon_function`

**Type**: `boolean`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Add a space before an anonymous function's parens, ie. function () (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "space_after_anon_function": false
    }
}
```

#####  [Break chained methods](#break-chained-methods) 

**Namespace**: `js`

**Key**: `break_chained_methods`

**Type**: `boolean`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Break chained method calls across subsequent lines (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "break_chained_methods": false
    }
}
```

#####  [End with comma](#end-with-comma) 

**Namespace**: `js`

**Key**: `end_with_comma`

**Type**: `boolean`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

If a terminating comma should be inserted into arrays, object literals, and destructured objects. (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "end_with_comma": false
    }
}
```


### Pug Beautify

#####  [Indent size](#indent-size) 

**Namespace**: `html`

**Key**: `indent_size`

**Default**: `4`

**Type**: `integer`

**Supported Beautifiers**:  [`Pug Beautify`](#pug-beautify) 

**Description**:

Indentation size/length (Supported by Pug Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "indent_size": 4
    }
}
```

#####  [Indent char](#indent-char) 

**Namespace**: `html`

**Key**: `indent_char`

**Default**: ` `

**Type**: `string`

**Supported Beautifiers**:  [`Pug Beautify`](#pug-beautify) 

**Description**:

Indentation character (Supported by Pug Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "indent_char": " "
    }
}
```


### Remark

#####  [Gfm](#gfm) 

**Namespace**: `markdown`

**Key**: `gfm`

**Default**: `true`

**Type**: `boolean`

**Supported Beautifiers**:  [`Remark`](#remark) 

**Description**:

GitHub Flavoured Markdown (Supported by Remark)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "markdown": {
        "gfm": true
    }
}
```

#####  [Yaml](#yaml) 

**Namespace**: `markdown`

**Key**: `yaml`

**Default**: `true`

**Type**: `boolean`

**Supported Beautifiers**:  [`Remark`](#remark) 

**Description**:

Enables raw YAML front matter to be detected (thus ignoring markdown-like syntax). (Supported by Remark)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "markdown": {
        "yaml": true
    }
}
```

#####  [Commonmark](#commonmark) 

**Namespace**: `markdown`

**Key**: `commonmark`

**Type**: `boolean`

**Supported Beautifiers**:  [`Remark`](#remark) 

**Description**:

Allows and disallows several constructs. (Supported by Remark)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "markdown": {
        "commonmark": false
    }
}
```


### Rubocop

#####  [Indent size](#indent-size) 

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

#####  [Rubocop Path](#rubocop-path) 

**Namespace**: `ruby`

**Key**: `rubocop_path`

**Type**: `string`

**Supported Beautifiers**:  [`Rubocop`](#rubocop) 

**Description**:

Path to the `rubocop` CLI executable (Supported by Rubocop)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "ruby": {
        "rubocop_path": ""
    }
}
```


### Ruby Beautify

#####  [Indent size](#indent-size) 

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

#####  [Indent char](#indent-char) 

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


### TypeScript Formatter

#####  [Indent size](#indent-size) 

**Namespace**: `js`

**Key**: `indent_size`

**Default**: `4`

**Type**: `integer`

**Supported Beautifiers**:  [`TypeScript Formatter`](#typescript-formatter) 

**Description**:

Indentation size/length (Supported by TypeScript Formatter)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "indent_size": 4
    }
}
```

#####  [Indent char](#indent-char) 

**Namespace**: `js`

**Key**: `indent_char`

**Default**: ` `

**Type**: `string`

**Supported Beautifiers**:  [`TypeScript Formatter`](#typescript-formatter) 

**Description**:

Indentation character (Supported by TypeScript Formatter)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "indent_char": " "
    }
}
```

#####  [Indent level](#indent-level) 

**Namespace**: `js`

**Key**: `indent_level`

**Type**: `integer`

**Supported Beautifiers**:  [`TypeScript Formatter`](#typescript-formatter) 

**Description**:

Initial indentation level (Supported by TypeScript Formatter)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "indent_level": 0
    }
}
```

#####  [Indent with tabs](#indent-with-tabs) 

**Namespace**: `js`

**Key**: `indent_with_tabs`

**Type**: `boolean`

**Supported Beautifiers**:  [`TypeScript Formatter`](#typescript-formatter) 

**Description**:

Indentation uses tabs, overrides `Indent Size` and `Indent Char` (Supported by TypeScript Formatter)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "indent_with_tabs": false
    }
}
```

#####  [Preserve newlines](#preserve-newlines) 

**Namespace**: `js`

**Key**: `preserve_newlines`

**Default**: `true`

**Type**: `boolean`

**Supported Beautifiers**:  [`TypeScript Formatter`](#typescript-formatter) 

**Description**:

Preserve line-breaks (Supported by TypeScript Formatter)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "preserve_newlines": true
    }
}
```

#####  [Max preserve newlines](#max-preserve-newlines) 

**Namespace**: `js`

**Key**: `max_preserve_newlines`

**Default**: `10`

**Type**: `integer`

**Supported Beautifiers**:  [`TypeScript Formatter`](#typescript-formatter) 

**Description**:

Number of line-breaks to be preserved in one chunk (Supported by TypeScript Formatter)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "max_preserve_newlines": 10
    }
}
```

#####  [Space in paren](#space-in-paren) 

**Namespace**: `js`

**Key**: `space_in_paren`

**Type**: `boolean`

**Supported Beautifiers**:  [`TypeScript Formatter`](#typescript-formatter) 

**Description**:

Add padding spaces within paren, ie. f( a, b ) (Supported by TypeScript Formatter)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "space_in_paren": false
    }
}
```

#####  [Jslint happy](#jslint-happy) 

**Namespace**: `js`

**Key**: `jslint_happy`

**Type**: `boolean`

**Supported Beautifiers**:  [`TypeScript Formatter`](#typescript-formatter) 

**Description**:

Enable jslint-stricter mode (Supported by TypeScript Formatter)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "jslint_happy": false
    }
}
```

#####  [Space after anon function](#space-after-anon-function) 

**Namespace**: `js`

**Key**: `space_after_anon_function`

**Type**: `boolean`

**Supported Beautifiers**:  [`TypeScript Formatter`](#typescript-formatter) 

**Description**:

Add a space before an anonymous function's parens, ie. function () (Supported by TypeScript Formatter)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "space_after_anon_function": false
    }
}
```

#####  [Brace style](#brace-style) 

**Namespace**: `js`

**Key**: `brace_style`

**Default**: `collapse`

**Type**: `string`

**Enum**:  `collapse`  `collapse-preserve-inline`  `expand`  `end-expand`  `none` 

**Supported Beautifiers**:  [`TypeScript Formatter`](#typescript-formatter) 

**Description**:

[collapse|collapse-preserve-inline|expand|end-expand|none] (Supported by TypeScript Formatter)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "brace_style": "collapse"
    }
}
```

#####  [Break chained methods](#break-chained-methods) 

**Namespace**: `js`

**Key**: `break_chained_methods`

**Type**: `boolean`

**Supported Beautifiers**:  [`TypeScript Formatter`](#typescript-formatter) 

**Description**:

Break chained method calls across subsequent lines (Supported by TypeScript Formatter)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "break_chained_methods": false
    }
}
```

#####  [Keep array indentation](#keep-array-indentation) 

**Namespace**: `js`

**Key**: `keep_array_indentation`

**Type**: `boolean`

**Supported Beautifiers**:  [`TypeScript Formatter`](#typescript-formatter) 

**Description**:

Preserve array indentation (Supported by TypeScript Formatter)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "keep_array_indentation": false
    }
}
```

#####  [Keep function indentation](#keep-function-indentation) 

**Namespace**: `js`

**Key**: `keep_function_indentation`

**Type**: `boolean`

**Supported Beautifiers**:  [`TypeScript Formatter`](#typescript-formatter) 

**Description**:

 (Supported by TypeScript Formatter)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "keep_function_indentation": false
    }
}
```

#####  [Space before conditional](#space-before-conditional) 

**Namespace**: `js`

**Key**: `space_before_conditional`

**Default**: `true`

**Type**: `boolean`

**Supported Beautifiers**:  [`TypeScript Formatter`](#typescript-formatter) 

**Description**:

 (Supported by TypeScript Formatter)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "space_before_conditional": true
    }
}
```

#####  [Eval code](#eval-code) 

**Namespace**: `js`

**Key**: `eval_code`

**Type**: `boolean`

**Supported Beautifiers**:  [`TypeScript Formatter`](#typescript-formatter) 

**Description**:

 (Supported by TypeScript Formatter)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "eval_code": false
    }
}
```

#####  [Unescape strings](#unescape-strings) 

**Namespace**: `js`

**Key**: `unescape_strings`

**Type**: `boolean`

**Supported Beautifiers**:  [`TypeScript Formatter`](#typescript-formatter) 

**Description**:

Decode printable characters encoded in xNN notation (Supported by TypeScript Formatter)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "unescape_strings": false
    }
}
```

#####  [Wrap line length](#wrap-line-length) 

**Namespace**: `js`

**Key**: `wrap_line_length`

**Type**: `integer`

**Supported Beautifiers**:  [`TypeScript Formatter`](#typescript-formatter) 

**Description**:

Wrap lines at next opportunity after N characters (Supported by TypeScript Formatter)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "wrap_line_length": 0
    }
}
```

#####  [End with newline](#end-with-newline) 

**Namespace**: `js`

**Key**: `end_with_newline`

**Type**: `boolean`

**Supported Beautifiers**:  [`TypeScript Formatter`](#typescript-formatter) 

**Description**:

End output with newline (Supported by TypeScript Formatter)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "end_with_newline": false
    }
}
```

#####  [End with comma](#end-with-comma) 

**Namespace**: `js`

**Key**: `end_with_comma`

**Type**: `boolean`

**Supported Beautifiers**:  [`TypeScript Formatter`](#typescript-formatter) 

**Description**:

If a terminating comma should be inserted into arrays, object literals, and destructured objects. (Supported by TypeScript Formatter)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "end_with_comma": false
    }
}
```


### Uncrustify

#####  [Config Path](#config-path) 

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


### autopep8

#####  [Max line length](#max-line-length) 

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

#####  [Indent size](#indent-size) 

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

#####  [Ignore](#ignore) 

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

#####  [Sort imports](#sort-imports) 

**Namespace**: `python`

**Key**: `sort_imports`

**Type**: `boolean`

**Supported Beautifiers**:  [`autopep8`](#autopep8) 

**Description**:

sort imports (requires isort installed) (Supported by autopep8)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "python": {
        "sort_imports": false
    }
}
```


### coffee-fmt

#####  [Indent size](#indent-size) 

**Namespace**: `js`

**Key**: `indent_size`

**Default**: `4`

**Type**: `integer`

**Supported Beautifiers**:  [`Coffee Formatter`](#coffee-formatter)  [`coffee-fmt`](#coffee-fmt) 

**Description**:

Indentation size/length (Supported by Coffee Formatter, coffee-fmt)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "indent_size": 4
    }
}
```

#####  [Indent char](#indent-char) 

**Namespace**: `js`

**Key**: `indent_char`

**Default**: ` `

**Type**: `string`

**Supported Beautifiers**:  [`Coffee Formatter`](#coffee-formatter)  [`coffee-fmt`](#coffee-fmt) 

**Description**:

Indentation character (Supported by Coffee Formatter, coffee-fmt)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "indent_char": " "
    }
}
```

#####  [Indent with tabs](#indent-with-tabs) 

**Namespace**: `js`

**Key**: `indent_with_tabs`

**Type**: `boolean`

**Supported Beautifiers**:  [`Coffee Formatter`](#coffee-formatter)  [`coffee-fmt`](#coffee-fmt) 

**Description**:

Indentation uses tabs, overrides `Indent Size` and `Indent Char` (Supported by Coffee Formatter, coffee-fmt)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "indent_with_tabs": false
    }
}
```


### rustfmt

#####  [Rustfmt path](#rustfmt-path) 

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

#####  [Indent size](#indent-size) 

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

#####  [Keywords](#keywords) 

**Namespace**: `sql`

**Key**: `keywords`

**Default**: `upper`

**Type**: `string`

**Enum**:  `unchanged`  `lower`  `upper`  `capitalize` 

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

#####  [Identifiers](#identifiers) 

**Namespace**: `sql`

**Key**: `identifiers`

**Default**: `unchanged`

**Type**: `string`

**Enum**:  `unchanged`  `lower`  `upper`  `capitalize` 

**Supported Beautifiers**:  [`sqlformat`](#sqlformat) 

**Description**:

Change case of identifiers (Supported by sqlformat)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "sql": {
        "identifiers": "unchanged"
    }
}
```



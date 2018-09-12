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

#####  [Show Loading View](#show-loading-view) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Default**: `true`

**Type**: `boolean`

**Description**:

Show loading view when beautifying

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Show Loading View*" and change it to your desired configuration.

####  [Executables](#executables) 

**Description**:

Configure executables used by beautifiers.

#####  [autopep8](#autopep8) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `object`

**Description**:

Options for autopep8 executable.

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*autopep8*" and change it to your desired configuration.

#####  [beautysh](#beautysh) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `object`

**Description**:

Options for beautysh executable.

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*beautysh*" and change it to your desired configuration.

#####  [black](#black) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `object`

**Description**:

Options for black executable.

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*black*" and change it to your desired configuration.

#####  [ClangFormat](#clangformat) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `object`

**Description**:

Options for ClangFormat executable.

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*ClangFormat*" and change it to your desired configuration.

#####  [Crystal](#crystal) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `object`

**Description**:

Options for Crystal executable.

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Crystal*" and change it to your desired configuration.

#####  [Dfmt](#dfmt) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `object`

**Description**:

Options for Dfmt executable.

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Dfmt*" and change it to your desired configuration.

#####  [elm-format](#elm-format) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `object`

**Description**:

Options for elm-format executable.

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*elm-format*" and change it to your desired configuration.

#####  [Emacs](#emacs) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `object`

**Description**:

Options for Emacs executable.

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Emacs*" and change it to your desired configuration.

#####  [gn](#gn) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `object`

**Description**:

Options for gn executable.

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*gn*" and change it to your desired configuration.

#####  [goimports](#goimports) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `object`

**Description**:

Options for goimports executable.

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*goimports*" and change it to your desired configuration.

#####  [isort](#isort) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `object`

**Description**:

Options for isort executable.

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*isort*" and change it to your desired configuration.

#####  [ocamlformat](#ocamlformat) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `object`

**Description**:

Options for ocamlformat executable.

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*ocamlformat*" and change it to your desired configuration.

#####  [ocp-indent](#ocp-indent) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `object`

**Description**:

Options for ocp-indent executable.

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*ocp-indent*" and change it to your desired configuration.

#####  [PHP](#php) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `object`

**Description**:

Options for PHP executable.

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*PHP*" and change it to your desired configuration.

#####  [PHP-CS-Fixer](#php-cs-fixer) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `object`

**Description**:

Options for PHP-CS-Fixer executable.

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*PHP-CS-Fixer*" and change it to your desired configuration.

#####  [PHPCBF](#phpcbf) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `object`

**Description**:

Options for PHPCBF executable.

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*PHPCBF*" and change it to your desired configuration.

#####  [puppet-lint](#puppet-lint) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `object`

**Description**:

Options for puppet-lint executable.

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*puppet-lint*" and change it to your desired configuration.

#####  [Rscript](#rscript) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `object`

**Description**:

Options for Rscript executable.

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Rscript*" and change it to your desired configuration.

#####  [Rubocop](#rubocop) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `object`

**Description**:

Options for Rubocop executable.

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Rubocop*" and change it to your desired configuration.

#####  [SassConvert](#sassconvert) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `object`

**Description**:

Options for SassConvert executable.

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*SassConvert*" and change it to your desired configuration.

#####  [Terraform](#terraform) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `object`

**Description**:

Options for Terraform executable.

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Terraform*" and change it to your desired configuration.

#####  [Uncrustify](#uncrustify) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `object`

**Description**:

Options for Uncrustify executable.

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Uncrustify*" and change it to your desired configuration.


## Language Options

Supported options for each language.

---

####  [Apex](#apex) 

**Supported Beautifiers**:  [`Uncrustify`](#uncrustify) 

| Option | Uncrustify |
| --- | --- |
| `disabled` | :white_check_mark: |
| `default_beautifier` | :white_check_mark: |
| `beautify_on_save` | :white_check_mark: |
| `configPath` | :white_check_mark: |

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

| Option | Uncrustify |
| --- | --- |
| `disabled` | :white_check_mark: |
| `default_beautifier` | :white_check_mark: |
| `beautify_on_save` | :white_check_mark: |
| `configPath` | :white_check_mark: |

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

####  [Bash](#bash) 

**Supported Beautifiers**:  [`beautysh`](#beautysh) 

| Option | beautysh |
| --- | --- |
| `disabled` | :white_check_mark: |
| `default_beautifier` | :white_check_mark: |
| `beautify_on_save` | :white_check_mark: |
| `indent_size` | :white_check_mark: |
| `indent_with_tabs` | :white_check_mark: |

**Description**:

Options for language Bash

#####  [Disable Beautifying Language](#disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable Bash Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Disable Beautifying Language*" and change it to your desired configuration.

#####  [Default Beautifier](#default-beautifier) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Default**: `beautysh`

**Type**: `string`

**Enum**:  `beautysh` 

**Description**:

Default Beautifier to be used for Bash

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Default Beautifier*" and change it to your desired configuration.

#####  [Beautify On Save](#beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify Bash files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Beautify On Save*" and change it to your desired configuration.

#####  [Indent size](#indent-size) 

**Namespace**: `bash`

**Key**: `indent_size`

**Default**: `4`

**Type**: `integer`

**Supported Beautifiers**:  [`beautysh`](#beautysh) 

**Description**:

Indentation size/length (Supported by beautysh)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "bash": {
        "indent_size": 4
    }
}
```

#####  [Indent with tabs](#indent-with-tabs) 

**Namespace**: `bash`

**Key**: `indent_with_tabs`

**Type**: `boolean`

**Supported Beautifiers**:  [`beautysh`](#beautysh) 

**Description**:

Indentation uses tabs, overrides `Indent Size` and `Indent Char` (Supported by beautysh)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "bash": {
        "indent_with_tabs": false
    }
}
```

####  [Blade](#blade) 

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

| Option | JS Beautify |
| --- | --- |
| `disabled` | :white_check_mark: |
| `default_beautifier` | :white_check_mark: |
| `beautify_on_save` | :white_check_mark: |
| `brace_style` | :white_check_mark: |
| `content_unformatted` | :white_check_mark: |
| `end_with_newline` | :white_check_mark: |
| `extra_liners` | :white_check_mark: |
| `indent_char` | :white_check_mark: |
| `indent_inner_html` | :white_check_mark: |
| `indent_scripts` | :white_check_mark: |
| `indent_size` | :white_check_mark: |
| `inline` | :white_check_mark: |
| `max_preserve_newlines` | :white_check_mark: |
| `preserve_newlines` | :white_check_mark: |
| `unformatted` | :white_check_mark: |
| `wrap_attributes` | :white_check_mark: |
| `wrap_attributes_indent_size` | :white_check_mark: |
| `wrap_line_length` | :white_check_mark: |

**Description**:

Options for language Blade

#####  [Disable Beautifying Language](#disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable Blade Beautification

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

Default Beautifier to be used for Blade

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Default Beautifier*" and change it to your desired configuration.

#####  [Beautify On Save](#beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify Blade files on save

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

#####  [Content unformatted](#content-unformatted) 

**Namespace**: `html`

**Key**: `content_unformatted`

**Default**: `pre,textarea`

**Type**: `array`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

List of tags whose contents should not be reformatted. Attributes will be reformatted, inner html will not. (Supported by JS Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "content_unformatted": [
            "pre",
            "textarea"
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

#####  [Inline](#inline) 

**Namespace**: `html`

**Key**: `inline`

**Default**: `a,abbr,area,audio,b,bdi,bdo,br,button,canvas,cite,code,data,datalist,del,dfn,em,embed,i,iframe,img,input,ins,kbd,keygen,label,map,mark,math,meter,noscript,object,output,progress,q,ruby,s,samp,select,small,span,strong,sub,sup,svg,template,textarea,time,u,var,video,wbr,text,acronym,address,big,dt,ins,strike,tt`

**Type**: `array`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

List of inline tags. Behaves similar to text content, will not wrap without whitespace. (Supported by JS Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "inline": [
            "a",
            "abbr",
            "area",
            "audio",
            "b",
            "bdi",
            "bdo",
            "br",
            "button",
            "canvas",
            "cite",
            "code",
            "data",
            "datalist",
            "del",
            "dfn",
            "em",
            "embed",
            "i",
            "iframe",
            "img",
            "input",
            "ins",
            "kbd",
            "keygen",
            "label",
            "map",
            "mark",
            "math",
            "meter",
            "noscript",
            "object",
            "output",
            "progress",
            "q",
            "ruby",
            "s",
            "samp",
            "select",
            "small",
            "span",
            "strong",
            "sub",
            "sup",
            "svg",
            "template",
            "textarea",
            "time",
            "u",
            "var",
            "video",
            "wbr",
            "text",
            "acronym",
            "address",
            "big",
            "dt",
            "ins",
            "strike",
            "tt"
        ]
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

**Type**: `array`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

(Deprecated for most scenarios - consider inline or content_unformatted) List of tags that should not be reformatted at all.  NOTE: Set this to [] to get improved beautifier behavior. (Supported by JS Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "unformatted": []
    }
}
```

#####  [Wrap attributes](#wrap-attributes) 

**Namespace**: `html`

**Key**: `wrap_attributes`

**Default**: `auto`

**Type**: `string`

**Enum**:  `auto`  `aligned-multiple`  `force`  `force-aligned`  `force-expand-multiline` 

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

Wrap attributes to new lines [auto|aligned-multiple|force|force-aligned|force-expand-multiline] (Supported by JS Beautify)

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

####  [C](#c) 

**Supported Beautifiers**:  [`Uncrustify`](#uncrustify)  [`clang-format`](#clang-format) 

| Option | Uncrustify | clang-format |
| --- | --- | --- |
| `disabled` | :white_check_mark: | :white_check_mark: |
| `default_beautifier` | :white_check_mark: | :white_check_mark: |
| `beautify_on_save` | :white_check_mark: | :white_check_mark: |
| `configPath` | :white_check_mark: | :x: |

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

| Option | Pretty Diff |
| --- | --- |
| `disabled` | :white_check_mark: |
| `default_beautifier` | :white_check_mark: |
| `beautify_on_save` | :white_check_mark: |
| `indent_char` | :white_check_mark: |
| `indent_size` | :white_check_mark: |
| `preserve_newlines` | :white_check_mark: |
| `wrap_line_length` | :white_check_mark: |

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

####  [Clojure](#clojure) 

**Supported Beautifiers**:  [`cljfmt`](#cljfmt) 

| Option | cljfmt |
| --- | --- |
| `disabled` | :white_check_mark: |
| `default_beautifier` | :white_check_mark: |
| `beautify_on_save` | :white_check_mark: |

**Description**:

Options for language Clojure

#####  [Disable Beautifying Language](#disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable Clojure Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Disable Beautifying Language*" and change it to your desired configuration.

#####  [Default Beautifier](#default-beautifier) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Default**: `cljfmt`

**Type**: `string`

**Enum**:  `cljfmt` 

**Description**:

Default Beautifier to be used for Clojure

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Default Beautifier*" and change it to your desired configuration.

#####  [Beautify On Save](#beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify Clojure files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Beautify On Save*" and change it to your desired configuration.

####  [CoffeeScript](#coffeescript) 

**Supported Beautifiers**:  [`Coffee Formatter`](#coffee-formatter)  [`coffee-fmt`](#coffee-fmt) 

| Option | Coffee Formatter | coffee-fmt |
| --- | --- | --- |
| `disabled` | :white_check_mark: | :white_check_mark: |
| `default_beautifier` | :white_check_mark: | :white_check_mark: |
| `beautify_on_save` | :white_check_mark: | :white_check_mark: |
| `indent_char` | :x: | :white_check_mark: |
| `indent_size` | :x: | :white_check_mark: |
| `indent_with_tabs` | :x: | :white_check_mark: |

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

#####  [Indent char](#indent-char) 

**Namespace**: `js`

**Key**: `indent_char`

**Default**: ` `

**Type**: `string`

**Supported Beautifiers**:  [`coffee-fmt`](#coffee-fmt) 

**Description**:

Indentation character (Supported by coffee-fmt)

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

**Supported Beautifiers**:  [`coffee-fmt`](#coffee-fmt) 

**Description**:

Indentation size/length (Supported by coffee-fmt)

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

**Supported Beautifiers**:  [`coffee-fmt`](#coffee-fmt) 

**Description**:

Indentation uses tabs, overrides `Indent Size` and `Indent Char` (Supported by coffee-fmt)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "indent_with_tabs": false
    }
}
```

####  [C++](#c-) 

**Supported Beautifiers**:  [`Uncrustify`](#uncrustify)  [`clang-format`](#clang-format) 

| Option | Uncrustify | clang-format |
| --- | --- | --- |
| `disabled` | :white_check_mark: | :white_check_mark: |
| `default_beautifier` | :white_check_mark: | :white_check_mark: |
| `beautify_on_save` | :white_check_mark: | :white_check_mark: |
| `configPath` | :white_check_mark: | :x: |

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

####  [Crystal](#crystal) 

**Supported Beautifiers**:  [`Crystal`](#crystal) 

| Option | Crystal |
| --- | --- |
| `disabled` | :white_check_mark: |
| `default_beautifier` | :white_check_mark: |
| `beautify_on_save` | :white_check_mark: |

**Description**:

Options for language Crystal

#####  [Disable Beautifying Language](#disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable Crystal Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Disable Beautifying Language*" and change it to your desired configuration.

#####  [Default Beautifier](#default-beautifier) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Default**: `Crystal`

**Type**: `string`

**Enum**:  `Crystal` 

**Description**:

Default Beautifier to be used for Crystal

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Default Beautifier*" and change it to your desired configuration.

#####  [Beautify On Save](#beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify Crystal files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Beautify On Save*" and change it to your desired configuration.

####  [C#](#c-) 

**Supported Beautifiers**:  [`Uncrustify`](#uncrustify) 

| Option | Uncrustify |
| --- | --- |
| `disabled` | :white_check_mark: |
| `default_beautifier` | :white_check_mark: |
| `beautify_on_save` | :white_check_mark: |
| `configPath` | :white_check_mark: |

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

**Supported Beautifiers**:  [`CSScomb`](#csscomb)  [`JS Beautify`](#js-beautify)  [`Prettier`](#prettier)  [`Pretty Diff`](#pretty-diff)  [`SassConvert`](#sassconvert) 

| Option | CSScomb | JS Beautify | Prettier | Pretty Diff | SassConvert |
| --- | --- | --- | --- | --- | --- |
| `disabled` | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: |
| `default_beautifier` | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: |
| `beautify_on_save` | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: |
| `align_assignments` | :x: | :x: | :x: | :white_check_mark: | :x: |
| `configPath` | :white_check_mark: | :x: | :x: | :x: | :x: |
| `convert_quotes` | :x: | :x: | :x: | :white_check_mark: | :x: |
| `end_with_newline` | :x: | :white_check_mark: | :x: | :x: | :x: |
| `force_indentation` | :x: | :x: | :x: | :white_check_mark: | :x: |
| `indent_char` | :x: | :white_check_mark: | :x: | :white_check_mark: | :x: |
| `indent_comments` | :x: | :x: | :x: | :white_check_mark: | :x: |
| `indent_size` | :x: | :white_check_mark: | :x: | :white_check_mark: | :x: |
| `newline_between_rules` | :x: | :white_check_mark: | :x: | :white_check_mark: | :x: |
| `no_lead_zero` | :x: | :x: | :x: | :white_check_mark: | :x: |
| `predefinedConfig` | :white_check_mark: | :x: | :x: | :x: | :x: |
| `preserve_newlines` | :x: | :white_check_mark: | :x: | :white_check_mark: | :x: |
| `selector_separator_newline` | :x: | :white_check_mark: | :x: | :x: | :x: |
| `wrap_line_length` | :x: | :white_check_mark: | :x: | :white_check_mark: | :x: |

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

**Enum**:  `CSScomb`  `JS Beautify`  `Prettier`  `Pretty Diff`  `SassConvert` 

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

Path to custom CSScomb config file, used in absence of a `.csscomb.json` or `.csscomb.cson` at the root of your project. (Supported by CSScomb)

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

#####  [End with newline](#end-with-newline) 

**Namespace**: `css`

**Key**: `end_with_newline`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

End output with newline (Supported by JS Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "css": {
        "end_with_newline": false
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

**Default**: `true`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Add a newline between CSS rules (Supported by JS Beautify, Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "css": {
        "newline_between_rules": true
    }
}
```

#####  [No lead zero](#no-lead-zero) 

**Namespace**: `css`

**Key**: `no_lead_zero`

**Type**: `boolean`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

If in CSS values leading 0s immediately preceding a decimal should be removed or prevented. (Supported by Pretty Diff)

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

| Option | Pretty Diff |
| --- | --- |
| `disabled` | :white_check_mark: |
| `default_beautifier` | :white_check_mark: |
| `beautify_on_save` | :white_check_mark: |

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

| Option | Uncrustify | dfmt |
| --- | --- | --- |
| `disabled` | :white_check_mark: | :white_check_mark: |
| `default_beautifier` | :white_check_mark: | :white_check_mark: |
| `beautify_on_save` | :white_check_mark: | :white_check_mark: |
| `configPath` | :white_check_mark: | :x: |

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

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

| Option | JS Beautify | Pretty Diff |
| --- | --- | --- |
| `disabled` | :white_check_mark: | :white_check_mark: |
| `default_beautifier` | :white_check_mark: | :white_check_mark: |
| `beautify_on_save` | :white_check_mark: | :white_check_mark: |
| `brace_style` | :white_check_mark: | :x: |
| `break_chained_methods` | :white_check_mark: | :white_check_mark: |
| `content_unformatted` | :white_check_mark: | :x: |
| `end_of_line` | :white_check_mark: | :x: |
| `end_with_comma` | :white_check_mark: | :white_check_mark: |
| `end_with_newline` | :white_check_mark: | :x: |
| `eval_code` | :white_check_mark: | :x: |
| `extra_liners` | :white_check_mark: | :x: |
| `indent_char` | :white_check_mark: | :white_check_mark: |
| `indent_inner_html` | :white_check_mark: | :x: |
| `indent_level` | :white_check_mark: | :x: |
| `indent_scripts` | :white_check_mark: | :x: |
| `indent_size` | :white_check_mark: | :white_check_mark: |
| `indent_with_tabs` | :white_check_mark: | :white_check_mark: |
| `inline` | :white_check_mark: | :x: |
| `jslint_happy` | :white_check_mark: | :x: |
| `keep_array_indentation` | :white_check_mark: | :x: |
| `keep_function_indentation` | :white_check_mark: | :x: |
| `max_preserve_newlines` | :white_check_mark: | :x: |
| `object_curly_spacing` | :white_check_mark: | :x: |
| `preserve_newlines` | :white_check_mark: | :white_check_mark: |
| `space_after_anon_function` | :white_check_mark: | :white_check_mark: |
| `space_before_conditional` | :white_check_mark: | :x: |
| `space_in_paren` | :white_check_mark: | :white_check_mark: |
| `unescape_strings` | :white_check_mark: | :x: |
| `unformatted` | :white_check_mark: | :x: |
| `wrap_attributes` | :white_check_mark: | :x: |
| `wrap_attributes_indent_size` | :white_check_mark: | :x: |
| `wrap_line_length` | :white_check_mark: | :white_check_mark: |

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

**Default**: `JS Beautify`

**Type**: `string`

**Enum**:  `JS Beautify`  `Pretty Diff` 

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

#####  [Brace style](#brace-style) 

**Namespace**: `html`

**Key**: `brace_style`

**Default**: `collapse`

**Type**: `string`

**Enum**:  `collapse`  `collapse-preserve-inline`  `expand`  `end-expand`  `none` 

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

#####  [Content unformatted](#content-unformatted) 

**Namespace**: `html`

**Key**: `content_unformatted`

**Default**: `pre,textarea`

**Type**: `array`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

List of tags whose contents should not be reformatted. Attributes will be reformatted, inner html will not. (Supported by JS Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "content_unformatted": [
            "pre",
            "textarea"
        ]
    }
}
```

#####  [End of line](#end-of-line) 

**Namespace**: `js`

**Key**: `end_of_line`

**Default**: `System Default`

**Type**: `string`

**Enum**:  `CRLF`  `LF`  `System Default` 

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

Override EOL from line-ending-selector (Supported by JS Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "end_of_line": "System Default"
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

#####  [Indent with tabs](#indent-with-tabs) 

**Namespace**: `js`

**Key**: `indent_with_tabs`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Indentation uses tabs, overrides `Indent Size` and `Indent Char` (Supported by JS Beautify, Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "indent_with_tabs": false
    }
}
```

#####  [Inline](#inline) 

**Namespace**: `html`

**Key**: `inline`

**Default**: `a,abbr,area,audio,b,bdi,bdo,br,button,canvas,cite,code,data,datalist,del,dfn,em,embed,i,iframe,img,input,ins,kbd,keygen,label,map,mark,math,meter,noscript,object,output,progress,q,ruby,s,samp,select,small,span,strong,sub,sup,svg,template,textarea,time,u,var,video,wbr,text,acronym,address,big,dt,ins,strike,tt`

**Type**: `array`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

List of inline tags. Behaves similar to text content, will not wrap without whitespace. (Supported by JS Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "inline": [
            "a",
            "abbr",
            "area",
            "audio",
            "b",
            "bdi",
            "bdo",
            "br",
            "button",
            "canvas",
            "cite",
            "code",
            "data",
            "datalist",
            "del",
            "dfn",
            "em",
            "embed",
            "i",
            "iframe",
            "img",
            "input",
            "ins",
            "kbd",
            "keygen",
            "label",
            "map",
            "mark",
            "math",
            "meter",
            "noscript",
            "object",
            "output",
            "progress",
            "q",
            "ruby",
            "s",
            "samp",
            "select",
            "small",
            "span",
            "strong",
            "sub",
            "sup",
            "svg",
            "template",
            "textarea",
            "time",
            "u",
            "var",
            "video",
            "wbr",
            "text",
            "acronym",
            "address",
            "big",
            "dt",
            "ins",
            "strike",
            "tt"
        ]
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

#####  [Object curly spacing](#object-curly-spacing) 

**Namespace**: `js`

**Key**: `object_curly_spacing`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

Insert spaces between brackets in object literals (Supported by JS Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "object_curly_spacing": false
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

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Add padding spaces within paren, ie. f( a, b ) (Supported by JS Beautify, Pretty Diff)

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

#####  [Unformatted](#unformatted) 

**Namespace**: `html`

**Key**: `unformatted`

**Type**: `array`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

(Deprecated for most scenarios - consider inline or content_unformatted) List of tags that should not be reformatted at all.  NOTE: Set this to [] to get improved beautifier behavior. (Supported by JS Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "unformatted": []
    }
}
```

#####  [Wrap attributes](#wrap-attributes) 

**Namespace**: `html`

**Key**: `wrap_attributes`

**Default**: `auto`

**Type**: `string`

**Enum**:  `auto`  `aligned-multiple`  `force`  `force-aligned`  `force-expand-multiline` 

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

Wrap attributes to new lines [auto|aligned-multiple|force|force-aligned|force-expand-multiline] (Supported by JS Beautify)

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

####  [Elm](#elm) 

**Supported Beautifiers**:  [`elm-format`](#elm-format) 

| Option | elm-format |
| --- | --- |
| `disabled` | :white_check_mark: |
| `default_beautifier` | :white_check_mark: |
| `beautify_on_save` | :white_check_mark: |

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

| Option | HTML Beautifier | Pretty Diff |
| --- | --- | --- |
| `disabled` | :white_check_mark: | :white_check_mark: |
| `default_beautifier` | :white_check_mark: | :white_check_mark: |
| `beautify_on_save` | :white_check_mark: | :white_check_mark: |
| `indent_char` | :x: | :white_check_mark: |
| `indent_size` | :white_check_mark: | :white_check_mark: |
| `preserve_newlines` | :x: | :white_check_mark: |
| `wrap_line_length` | :x: | :white_check_mark: |

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

| Option | erl_tidy |
| --- | --- |
| `disabled` | :white_check_mark: |
| `default_beautifier` | :white_check_mark: |
| `beautify_on_save` | :white_check_mark: |

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

| Option | Fortran Beautifier |
| --- | --- |
| `disabled` | :white_check_mark: |
| `default_beautifier` | :white_check_mark: |
| `beautify_on_save` | :white_check_mark: |
| `emacs_path` | :white_check_mark: |
| `emacs_script_path` | :white_check_mark: |

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

| Option | Gherkin formatter |
| --- | --- |
| `disabled` | :white_check_mark: |
| `default_beautifier` | :white_check_mark: |
| `beautify_on_save` | :white_check_mark: |
| `indent_char` | :white_check_mark: |
| `indent_size` | :white_check_mark: |

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

####  [GLSL](#glsl) 

**Supported Beautifiers**:  [`clang-format`](#clang-format) 

| Option | clang-format |
| --- | --- |
| `disabled` | :white_check_mark: |
| `default_beautifier` | :white_check_mark: |
| `beautify_on_save` | :white_check_mark: |
| `configPath` | :white_check_mark: |

**Description**:

Options for language GLSL

#####  [Disable Beautifying Language](#disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable GLSL Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Disable Beautifying Language*" and change it to your desired configuration.

#####  [Default Beautifier](#default-beautifier) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Default**: `clang-format`

**Type**: `string`

**Enum**:  `clang-format` 

**Description**:

Default Beautifier to be used for GLSL

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Default Beautifier*" and change it to your desired configuration.

#####  [Beautify On Save](#beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify GLSL files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Beautify On Save*" and change it to your desired configuration.

#####  [Config Path](#config-path) 

**Namespace**: `glsl`

**Key**: `configPath`

**Type**: `string`

**Supported Beautifiers**:  [`clang-format`](#clang-format) 

**Description**:

Path to clang-format config file. i.e. clang-format.cfg (Supported by clang-format)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "glsl": {
        "configPath": ""
    }
}
```

####  [GN](#gn) 

**Supported Beautifiers**:  [`GN`](#gn) 

| Option | GN |
| --- | --- |
| `disabled` | :white_check_mark: |
| `default_beautifier` | :white_check_mark: |
| `beautify_on_save` | :white_check_mark: |

**Description**:

Options for language GN

#####  [Disable Beautifying Language](#disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable GN Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Disable Beautifying Language*" and change it to your desired configuration.

#####  [Default Beautifier](#default-beautifier) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Default**: `GN`

**Type**: `string`

**Enum**:  `GN` 

**Description**:

Default Beautifier to be used for GN

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Default Beautifier*" and change it to your desired configuration.

#####  [Beautify On Save](#beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify GN files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Beautify On Save*" and change it to your desired configuration.

####  [Go](#go) 

**Supported Beautifiers**:  [`gofmt`](#gofmt)  [`goimports`](#goimports) 

| Option | gofmt | goimports |
| --- | --- | --- |
| `disabled` | :white_check_mark: | :white_check_mark: |
| `default_beautifier` | :white_check_mark: | :white_check_mark: |
| `beautify_on_save` | :white_check_mark: | :white_check_mark: |

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

**Enum**:  `gofmt`  `goimports` 

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

####  [Golang Template](#golang-template) 

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

| Option | Pretty Diff |
| --- | --- |
| `disabled` | :white_check_mark: |
| `default_beautifier` | :white_check_mark: |
| `beautify_on_save` | :white_check_mark: |
| `indent_char` | :white_check_mark: |
| `indent_size` | :white_check_mark: |
| `preserve_newlines` | :white_check_mark: |
| `wrap_line_length` | :white_check_mark: |

**Description**:

Options for language Golang Template

#####  [Disable Beautifying Language](#disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable Golang Template Beautification

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

Default Beautifier to be used for Golang Template

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Default Beautifier*" and change it to your desired configuration.

#####  [Beautify On Save](#beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify Golang Template files on save

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

####  [Handlebars](#handlebars) 

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

| Option | JS Beautify | Pretty Diff |
| --- | --- | --- |
| `disabled` | :white_check_mark: | :white_check_mark: |
| `default_beautifier` | :white_check_mark: | :white_check_mark: |
| `beautify_on_save` | :white_check_mark: | :white_check_mark: |
| `brace_style` | :white_check_mark: | :x: |
| `content_unformatted` | :white_check_mark: | :x: |
| `end_with_newline` | :white_check_mark: | :x: |
| `extra_liners` | :white_check_mark: | :x: |
| `indent_char` | :white_check_mark: | :white_check_mark: |
| `indent_inner_html` | :white_check_mark: | :x: |
| `indent_scripts` | :white_check_mark: | :x: |
| `indent_size` | :white_check_mark: | :white_check_mark: |
| `inline` | :white_check_mark: | :x: |
| `max_preserve_newlines` | :white_check_mark: | :x: |
| `preserve_newlines` | :white_check_mark: | :white_check_mark: |
| `unformatted` | :white_check_mark: | :x: |
| `wrap_attributes` | :white_check_mark: | :x: |
| `wrap_attributes_indent_size` | :white_check_mark: | :x: |
| `wrap_line_length` | :white_check_mark: | :white_check_mark: |

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

#####  [Content unformatted](#content-unformatted) 

**Namespace**: `html`

**Key**: `content_unformatted`

**Default**: `pre,textarea`

**Type**: `array`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

List of tags whose contents should not be reformatted. Attributes will be reformatted, inner html will not. (Supported by JS Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "content_unformatted": [
            "pre",
            "textarea"
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

#####  [Inline](#inline) 

**Namespace**: `html`

**Key**: `inline`

**Default**: `a,abbr,area,audio,b,bdi,bdo,br,button,canvas,cite,code,data,datalist,del,dfn,em,embed,i,iframe,img,input,ins,kbd,keygen,label,map,mark,math,meter,noscript,object,output,progress,q,ruby,s,samp,select,small,span,strong,sub,sup,svg,template,textarea,time,u,var,video,wbr,text,acronym,address,big,dt,ins,strike,tt`

**Type**: `array`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

List of inline tags. Behaves similar to text content, will not wrap without whitespace. (Supported by JS Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "inline": [
            "a",
            "abbr",
            "area",
            "audio",
            "b",
            "bdi",
            "bdo",
            "br",
            "button",
            "canvas",
            "cite",
            "code",
            "data",
            "datalist",
            "del",
            "dfn",
            "em",
            "embed",
            "i",
            "iframe",
            "img",
            "input",
            "ins",
            "kbd",
            "keygen",
            "label",
            "map",
            "mark",
            "math",
            "meter",
            "noscript",
            "object",
            "output",
            "progress",
            "q",
            "ruby",
            "s",
            "samp",
            "select",
            "small",
            "span",
            "strong",
            "sub",
            "sup",
            "svg",
            "template",
            "textarea",
            "time",
            "u",
            "var",
            "video",
            "wbr",
            "text",
            "acronym",
            "address",
            "big",
            "dt",
            "ins",
            "strike",
            "tt"
        ]
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

**Type**: `array`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

(Deprecated for most scenarios - consider inline or content_unformatted) List of tags that should not be reformatted at all.  NOTE: Set this to [] to get improved beautifier behavior. (Supported by JS Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "unformatted": []
    }
}
```

#####  [Wrap attributes](#wrap-attributes) 

**Namespace**: `html`

**Key**: `wrap_attributes`

**Default**: `auto`

**Type**: `string`

**Enum**:  `auto`  `aligned-multiple`  `force`  `force-aligned`  `force-expand-multiline` 

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

Wrap attributes to new lines [auto|aligned-multiple|force|force-aligned|force-expand-multiline] (Supported by JS Beautify)

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

**Supported Beautifiers**:  [`brittany`](#brittany)  [`hindent`](#hindent)  [`stylish-haskell`](#stylish-haskell) 

| Option | brittany | hindent | stylish-haskell |
| --- | --- | --- | --- |
| `disabled` | :white_check_mark: | :white_check_mark: | :white_check_mark: |
| `default_beautifier` | :white_check_mark: | :white_check_mark: | :white_check_mark: |
| `beautify_on_save` | :white_check_mark: | :white_check_mark: | :white_check_mark: |

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

**Enum**:  `brittany`  `hindent`  `stylish-haskell` 

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

| Option | JS Beautify | Pretty Diff |
| --- | --- | --- |
| `disabled` | :white_check_mark: | :white_check_mark: |
| `default_beautifier` | :white_check_mark: | :white_check_mark: |
| `beautify_on_save` | :white_check_mark: | :white_check_mark: |
| `brace_style` | :white_check_mark: | :x: |
| `content_unformatted` | :white_check_mark: | :x: |
| `end_with_newline` | :white_check_mark: | :x: |
| `extra_liners` | :white_check_mark: | :x: |
| `indent_char` | :white_check_mark: | :white_check_mark: |
| `indent_inner_html` | :white_check_mark: | :x: |
| `indent_scripts` | :white_check_mark: | :x: |
| `indent_size` | :white_check_mark: | :white_check_mark: |
| `inline` | :white_check_mark: | :x: |
| `max_preserve_newlines` | :white_check_mark: | :x: |
| `preserve_newlines` | :white_check_mark: | :white_check_mark: |
| `unformatted` | :white_check_mark: | :x: |
| `wrap_attributes` | :white_check_mark: | :x: |
| `wrap_attributes_indent_size` | :white_check_mark: | :x: |
| `wrap_line_length` | :white_check_mark: | :white_check_mark: |

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

#####  [Content unformatted](#content-unformatted) 

**Namespace**: `html`

**Key**: `content_unformatted`

**Default**: `pre,textarea`

**Type**: `array`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

List of tags whose contents should not be reformatted. Attributes will be reformatted, inner html will not. (Supported by JS Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "content_unformatted": [
            "pre",
            "textarea"
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

#####  [Inline](#inline) 

**Namespace**: `html`

**Key**: `inline`

**Default**: `a,abbr,area,audio,b,bdi,bdo,br,button,canvas,cite,code,data,datalist,del,dfn,em,embed,i,iframe,img,input,ins,kbd,keygen,label,map,mark,math,meter,noscript,object,output,progress,q,ruby,s,samp,select,small,span,strong,sub,sup,svg,template,textarea,time,u,var,video,wbr,text,acronym,address,big,dt,ins,strike,tt`

**Type**: `array`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

List of inline tags. Behaves similar to text content, will not wrap without whitespace. (Supported by JS Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "inline": [
            "a",
            "abbr",
            "area",
            "audio",
            "b",
            "bdi",
            "bdo",
            "br",
            "button",
            "canvas",
            "cite",
            "code",
            "data",
            "datalist",
            "del",
            "dfn",
            "em",
            "embed",
            "i",
            "iframe",
            "img",
            "input",
            "ins",
            "kbd",
            "keygen",
            "label",
            "map",
            "mark",
            "math",
            "meter",
            "noscript",
            "object",
            "output",
            "progress",
            "q",
            "ruby",
            "s",
            "samp",
            "select",
            "small",
            "span",
            "strong",
            "sub",
            "sup",
            "svg",
            "template",
            "textarea",
            "time",
            "u",
            "var",
            "video",
            "wbr",
            "text",
            "acronym",
            "address",
            "big",
            "dt",
            "ins",
            "strike",
            "tt"
        ]
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

**Type**: `array`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

(Deprecated for most scenarios - consider inline or content_unformatted) List of tags that should not be reformatted at all.  NOTE: Set this to [] to get improved beautifier behavior. (Supported by JS Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "unformatted": []
    }
}
```

#####  [Wrap attributes](#wrap-attributes) 

**Namespace**: `html`

**Key**: `wrap_attributes`

**Default**: `auto`

**Type**: `string`

**Enum**:  `auto`  `aligned-multiple`  `force`  `force-aligned`  `force-expand-multiline` 

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

Wrap attributes to new lines [auto|aligned-multiple|force|force-aligned|force-expand-multiline] (Supported by JS Beautify)

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

| Option | Pug Beautify |
| --- | --- |
| `disabled` | :white_check_mark: |
| `default_beautifier` | :white_check_mark: |
| `beautify_on_save` | :white_check_mark: |
| `indent_char` | :white_check_mark: |
| `indent_size` | :white_check_mark: |

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

| Option | Uncrustify |
| --- | --- |
| `disabled` | :white_check_mark: |
| `default_beautifier` | :white_check_mark: |
| `beautify_on_save` | :white_check_mark: |
| `configPath` | :white_check_mark: |

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

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`JSCS Fixer`](#jscs-fixer)  [`ESLint Fixer`](#eslint-fixer)  [`Prettier`](#prettier)  [`Pretty Diff`](#pretty-diff) 

| Option | ESLint Fixer | JS Beautify | JSCS Fixer | Prettier | Pretty Diff |
| --- | --- | --- | --- | --- | --- |
| `disabled` | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: |
| `default_beautifier` | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: |
| `beautify_on_save` | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: |
| `brace_style` | :x: | :white_check_mark: | :x: | :x: | :x: |
| `break_chained_methods` | :x: | :white_check_mark: | :x: | :x: | :white_check_mark: |
| `end_of_line` | :x: | :white_check_mark: | :x: | :x: | :x: |
| `end_with_comma` | :x: | :white_check_mark: | :x: | :x: | :white_check_mark: |
| `end_with_newline` | :x: | :white_check_mark: | :x: | :x: | :x: |
| `eval_code` | :x: | :white_check_mark: | :x: | :x: | :x: |
| `indent_char` | :x: | :white_check_mark: | :x: | :white_check_mark: | :white_check_mark: |
| `indent_level` | :x: | :white_check_mark: | :x: | :x: | :x: |
| `indent_size` | :x: | :white_check_mark: | :x: | :white_check_mark: | :white_check_mark: |
| `indent_with_tabs` | :x: | :white_check_mark: | :x: | :white_check_mark: | :white_check_mark: |
| `jslint_happy` | :x: | :white_check_mark: | :x: | :x: | :x: |
| `keep_array_indentation` | :x: | :white_check_mark: | :x: | :x: | :x: |
| `keep_function_indentation` | :x: | :white_check_mark: | :x: | :x: | :x: |
| `max_preserve_newlines` | :x: | :white_check_mark: | :x: | :x: | :x: |
| `object_curly_spacing` | :x: | :white_check_mark: | :x: | :white_check_mark: | :x: |
| `preserve_newlines` | :x: | :white_check_mark: | :x: | :x: | :white_check_mark: |
| `space_after_anon_function` | :x: | :white_check_mark: | :x: | :x: | :white_check_mark: |
| `space_before_conditional` | :x: | :white_check_mark: | :x: | :x: | :x: |
| `space_in_paren` | :x: | :white_check_mark: | :x: | :x: | :white_check_mark: |
| `unescape_strings` | :x: | :white_check_mark: | :x: | :x: | :x: |
| `wrap_line_length` | :x: | :white_check_mark: | :x: | :x: | :white_check_mark: |

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

**Enum**:  `JS Beautify`  `JSCS Fixer`  `ESLint Fixer`  `Prettier`  `Pretty Diff` 

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

#####  [End of line](#end-of-line) 

**Namespace**: `js`

**Key**: `end_of_line`

**Default**: `System Default`

**Type**: `string`

**Enum**:  `CRLF`  `LF`  `System Default` 

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

Override EOL from line-ending-selector (Supported by JS Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "end_of_line": "System Default"
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

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Prettier`](#prettier)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Indentation character (Supported by JS Beautify, Prettier, Pretty Diff)

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

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Prettier`](#prettier)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Indentation size/length (Supported by JS Beautify, Prettier, Pretty Diff)

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

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Prettier`](#prettier)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Indentation uses tabs, overrides `Indent Size` and `Indent Char` (Supported by JS Beautify, Prettier, Pretty Diff)

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

#####  [Object curly spacing](#object-curly-spacing) 

**Namespace**: `js`

**Key**: `object_curly_spacing`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Prettier`](#prettier) 

**Description**:

Insert spaces between brackets in object literals (Supported by JS Beautify, Prettier)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "object_curly_spacing": false
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

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Add padding spaces within paren, ie. f( a, b ) (Supported by JS Beautify, Pretty Diff)

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

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Prettier`](#prettier)  [`Pretty Diff`](#pretty-diff) 

| Option | JS Beautify | Prettier | Pretty Diff |
| --- | --- | --- | --- |
| `disabled` | :white_check_mark: | :white_check_mark: | :white_check_mark: |
| `default_beautifier` | :white_check_mark: | :white_check_mark: | :white_check_mark: |
| `beautify_on_save` | :white_check_mark: | :white_check_mark: | :white_check_mark: |
| `brace_style` | :white_check_mark: | :x: | :x: |
| `break_chained_methods` | :white_check_mark: | :x: | :white_check_mark: |
| `end_of_line` | :white_check_mark: | :x: | :x: |
| `end_with_comma` | :white_check_mark: | :x: | :white_check_mark: |
| `end_with_newline` | :white_check_mark: | :x: | :x: |
| `eval_code` | :white_check_mark: | :x: | :x: |
| `indent_char` | :white_check_mark: | :x: | :white_check_mark: |
| `indent_level` | :white_check_mark: | :x: | :x: |
| `indent_size` | :white_check_mark: | :x: | :white_check_mark: |
| `indent_with_tabs` | :white_check_mark: | :x: | :white_check_mark: |
| `jslint_happy` | :white_check_mark: | :x: | :x: |
| `keep_array_indentation` | :white_check_mark: | :x: | :x: |
| `keep_function_indentation` | :white_check_mark: | :x: | :x: |
| `max_preserve_newlines` | :white_check_mark: | :x: | :x: |
| `object_curly_spacing` | :white_check_mark: | :x: | :x: |
| `preserve_newlines` | :white_check_mark: | :x: | :white_check_mark: |
| `space_after_anon_function` | :white_check_mark: | :x: | :white_check_mark: |
| `space_before_conditional` | :white_check_mark: | :x: | :x: |
| `space_in_paren` | :white_check_mark: | :x: | :white_check_mark: |
| `unescape_strings` | :white_check_mark: | :x: | :x: |
| `wrap_line_length` | :white_check_mark: | :x: | :white_check_mark: |

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

**Enum**:  `JS Beautify`  `Prettier`  `Pretty Diff` 

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

#####  [End of line](#end-of-line) 

**Namespace**: `js`

**Key**: `end_of_line`

**Default**: `System Default`

**Type**: `string`

**Enum**:  `CRLF`  `LF`  `System Default` 

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

Override EOL from line-ending-selector (Supported by JS Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "end_of_line": "System Default"
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

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Indentation uses tabs, overrides `Indent Size` and `Indent Char` (Supported by JS Beautify, Pretty Diff)

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

#####  [Object curly spacing](#object-curly-spacing) 

**Namespace**: `js`

**Key**: `object_curly_spacing`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

Insert spaces between brackets in object literals (Supported by JS Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "object_curly_spacing": false
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

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Add padding spaces within paren, ie. f( a, b ) (Supported by JS Beautify, Pretty Diff)

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

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

| Option | JS Beautify | Pretty Diff |
| --- | --- | --- |
| `disabled` | :white_check_mark: | :white_check_mark: |
| `default_beautifier` | :white_check_mark: | :white_check_mark: |
| `beautify_on_save` | :white_check_mark: | :white_check_mark: |
| `brace_style` | :white_check_mark: | :x: |
| `break_chained_methods` | :white_check_mark: | :white_check_mark: |
| `e4x` | :white_check_mark: | :x: |
| `end_of_line` | :white_check_mark: | :x: |
| `end_with_comma` | :white_check_mark: | :white_check_mark: |
| `end_with_newline` | :white_check_mark: | :x: |
| `eval_code` | :white_check_mark: | :x: |
| `indent_char` | :white_check_mark: | :white_check_mark: |
| `indent_level` | :white_check_mark: | :x: |
| `indent_size` | :white_check_mark: | :white_check_mark: |
| `indent_with_tabs` | :white_check_mark: | :white_check_mark: |
| `jslint_happy` | :white_check_mark: | :x: |
| `keep_array_indentation` | :white_check_mark: | :x: |
| `keep_function_indentation` | :white_check_mark: | :x: |
| `max_preserve_newlines` | :white_check_mark: | :x: |
| `object_curly_spacing` | :white_check_mark: | :x: |
| `preserve_newlines` | :white_check_mark: | :white_check_mark: |
| `space_after_anon_function` | :white_check_mark: | :white_check_mark: |
| `space_before_conditional` | :white_check_mark: | :x: |
| `space_in_paren` | :white_check_mark: | :white_check_mark: |
| `unescape_strings` | :white_check_mark: | :x: |
| `wrap_line_length` | :white_check_mark: | :white_check_mark: |

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

**Enum**:  `JS Beautify`  `Pretty Diff` 

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

#####  [E4x](#e4x) 

**Namespace**: `jsx`

**Key**: `e4x`

**Default**: `true`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

Support e4x/jsx syntax (Supported by JS Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "jsx": {
        "e4x": true
    }
}
```

#####  [End of line](#end-of-line) 

**Namespace**: `js`

**Key**: `end_of_line`

**Default**: `System Default`

**Type**: `string`

**Enum**:  `CRLF`  `LF`  `System Default` 

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

Override EOL from line-ending-selector (Supported by JS Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "end_of_line": "System Default"
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

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Indentation uses tabs, overrides `Indent Size` and `Indent Char` (Supported by JS Beautify, Pretty Diff)

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

#####  [Object curly spacing](#object-curly-spacing) 

**Namespace**: `js`

**Key**: `object_curly_spacing`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

Insert spaces between brackets in object literals (Supported by JS Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "object_curly_spacing": false
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

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Add padding spaces within paren, ie. f( a, b ) (Supported by JS Beautify, Pretty Diff)

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

####  [LaTeX](#latex) 

**Supported Beautifiers**:  [`Latex Beautify`](#latex-beautify) 

| Option | Latex Beautify |
| --- | --- |
| `disabled` | :white_check_mark: |
| `default_beautifier` | :white_check_mark: |
| `beautify_on_save` | :white_check_mark: |
| `align_columns_in_environments` | :white_check_mark: |
| `always_look_for_split_braces` | :white_check_mark: |
| `always_look_for_split_brackets` | :white_check_mark: |
| `indent_char` | :white_check_mark: |
| `indent_preamble` | :white_check_mark: |
| `indent_with_tabs` | :white_check_mark: |
| `remove_trailing_whitespace` | :white_check_mark: |

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

Aligns columns by the alignment tabs for environments specified (Supported by Latex Beautify)

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

Indent the preamble (Supported by Latex Beautify)

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

**Type**: `boolean`

**Supported Beautifiers**:  [`Latex Beautify`](#latex-beautify) 

**Description**:

Indentation uses tabs, overrides `Indent Size` and `Indent Char` (Supported by Latex Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "latex": {
        "indent_with_tabs": false
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

**Supported Beautifiers**:  [`CSScomb`](#csscomb)  [`Prettier`](#prettier)  [`Pretty Diff`](#pretty-diff) 

| Option | CSScomb | Prettier | Pretty Diff |
| --- | --- | --- | --- |
| `disabled` | :white_check_mark: | :white_check_mark: | :white_check_mark: |
| `default_beautifier` | :white_check_mark: | :white_check_mark: | :white_check_mark: |
| `beautify_on_save` | :white_check_mark: | :white_check_mark: | :white_check_mark: |
| `align_assignments` | :x: | :x: | :white_check_mark: |
| `configPath` | :white_check_mark: | :x: | :x: |
| `convert_quotes` | :x: | :x: | :white_check_mark: |
| `force_indentation` | :x: | :x: | :white_check_mark: |
| `indent_char` | :x: | :x: | :white_check_mark: |
| `indent_comments` | :x: | :x: | :white_check_mark: |
| `indent_size` | :x: | :x: | :white_check_mark: |
| `newline_between_rules` | :x: | :x: | :white_check_mark: |
| `no_lead_zero` | :x: | :x: | :white_check_mark: |
| `predefinedConfig` | :white_check_mark: | :x: | :x: |
| `preserve_newlines` | :x: | :x: | :white_check_mark: |
| `wrap_line_length` | :x: | :x: | :white_check_mark: |

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

**Enum**:  `CSScomb`  `Prettier`  `Pretty Diff` 

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

Path to custom CSScomb config file, used in absence of a `.csscomb.json` or `.csscomb.cson` at the root of your project. (Supported by CSScomb)

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

**Default**: `true`

**Type**: `boolean`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Add a newline between CSS rules (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "css": {
        "newline_between_rules": true
    }
}
```

#####  [No lead zero](#no-lead-zero) 

**Namespace**: `css`

**Key**: `no_lead_zero`

**Type**: `boolean`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

If in CSS values leading 0s immediately preceding a decimal should be removed or prevented. (Supported by Pretty Diff)

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

####  [Lua](#lua) 

**Supported Beautifiers**:  [`Lua beautifier`](#lua-beautifier) 

| Option | Lua beautifier |
| --- | --- |
| `disabled` | :white_check_mark: |
| `default_beautifier` | :white_check_mark: |
| `beautify_on_save` | :white_check_mark: |
| `end_of_line` | :white_check_mark: |
| `indent_char` | :white_check_mark: |
| `indent_size` | :white_check_mark: |

**Description**:

Options for language Lua

#####  [Disable Beautifying Language](#disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable Lua Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Disable Beautifying Language*" and change it to your desired configuration.

#####  [Default Beautifier](#default-beautifier) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Default**: `Lua beautifier`

**Type**: `string`

**Enum**:  `Lua beautifier` 

**Description**:

Default Beautifier to be used for Lua

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Default Beautifier*" and change it to your desired configuration.

#####  [Beautify On Save](#beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify Lua files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Beautify On Save*" and change it to your desired configuration.

#####  [End of line](#end-of-line) 

**Namespace**: `lua`

**Key**: `end_of_line`

**Default**: `System Default`

**Type**: `string`

**Enum**:  `CRLF`  `LF`  `System Default` 

**Supported Beautifiers**:  [`Lua beautifier`](#lua-beautifier) 

**Description**:

Override EOL from line-ending-selector (Supported by Lua beautifier)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "lua": {
        "end_of_line": "System Default"
    }
}
```

#####  [Indent char](#indent-char) 

**Namespace**: `lua`

**Key**: `indent_char`

**Default**: ` `

**Type**: `string`

**Supported Beautifiers**:  [`Lua beautifier`](#lua-beautifier) 

**Description**:

Indentation character (Supported by Lua beautifier)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "lua": {
        "indent_char": " "
    }
}
```

#####  [Indent size](#indent-size) 

**Namespace**: `lua`

**Key**: `indent_size`

**Default**: `4`

**Type**: `integer`

**Supported Beautifiers**:  [`Lua beautifier`](#lua-beautifier) 

**Description**:

Indentation size/length (Supported by Lua beautifier)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "lua": {
        "indent_size": 4
    }
}
```

####  [Markdown](#markdown) 

**Supported Beautifiers**:  [`Prettier`](#prettier)  [`Remark`](#remark)  [`Tidy Markdown`](#tidy-markdown) 

| Option | Prettier | Remark | Tidy Markdown |
| --- | --- | --- | --- |
| `disabled` | :white_check_mark: | :white_check_mark: | :white_check_mark: |
| `default_beautifier` | :white_check_mark: | :white_check_mark: | :white_check_mark: |
| `beautify_on_save` | :white_check_mark: | :white_check_mark: | :white_check_mark: |
| `commonmark` | :x: | :white_check_mark: | :x: |
| `gfm` | :x: | :white_check_mark: | :x: |
| `yaml` | :x: | :white_check_mark: | :x: |

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

**Default**: `Remark`

**Type**: `string`

**Enum**:  `Prettier`  `Remark`  `Tidy Markdown` 

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

**Supported Beautifiers**:  [`Marko Beautifier`](#marko-beautifier) 

| Option | Marko Beautifier |
| --- | --- |
| `disabled` | :white_check_mark: |
| `default_beautifier` | :white_check_mark: |
| `beautify_on_save` | :white_check_mark: |
| `brace_style` | :white_check_mark: |
| `content_unformatted` | :white_check_mark: |
| `end_with_newline` | :white_check_mark: |
| `extra_liners` | :white_check_mark: |
| `indent_char` | :white_check_mark: |
| `indent_inner_html` | :white_check_mark: |
| `indent_scripts` | :white_check_mark: |
| `indent_size` | :white_check_mark: |
| `inline` | :white_check_mark: |
| `max_preserve_newlines` | :white_check_mark: |
| `preserve_newlines` | :white_check_mark: |
| `syntax` | :white_check_mark: |
| `unformatted` | :white_check_mark: |
| `wrap_attributes` | :white_check_mark: |
| `wrap_attributes_indent_size` | :white_check_mark: |
| `wrap_line_length` | :white_check_mark: |

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

**Default**: `Marko Beautifier`

**Type**: `string`

**Enum**:  `Marko Beautifier` 

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

**Supported Beautifiers**:  [`Marko Beautifier`](#marko-beautifier) 

**Description**:

[collapse|expand|end-expand|none] (Supported by Marko Beautifier)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "brace_style": "collapse"
    }
}
```

#####  [Content unformatted](#content-unformatted) 

**Namespace**: `html`

**Key**: `content_unformatted`

**Default**: `pre,textarea`

**Type**: `array`

**Supported Beautifiers**:  [`Marko Beautifier`](#marko-beautifier) 

**Description**:

List of tags whose contents should not be reformatted. Attributes will be reformatted, inner html will not. (Supported by Marko Beautifier)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "content_unformatted": [
            "pre",
            "textarea"
        ]
    }
}
```

#####  [End with newline](#end-with-newline) 

**Namespace**: `html`

**Key**: `end_with_newline`

**Type**: `boolean`

**Supported Beautifiers**:  [`Marko Beautifier`](#marko-beautifier) 

**Description**:

End output with newline (Supported by Marko Beautifier)

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

**Supported Beautifiers**:  [`Marko Beautifier`](#marko-beautifier) 

**Description**:

List of tags (defaults to [head,body,/html] that should have an extra newline before them. (Supported by Marko Beautifier)

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

**Supported Beautifiers**:  [`Marko Beautifier`](#marko-beautifier) 

**Description**:

Indentation character (Supported by Marko Beautifier)

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

**Supported Beautifiers**:  [`Marko Beautifier`](#marko-beautifier) 

**Description**:

Indent <head> and <body> sections. (Supported by Marko Beautifier)

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

**Supported Beautifiers**:  [`Marko Beautifier`](#marko-beautifier) 

**Description**:

[keep|separate|normal] (Supported by Marko Beautifier)

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

**Supported Beautifiers**:  [`Marko Beautifier`](#marko-beautifier) 

**Description**:

Indentation size/length (Supported by Marko Beautifier)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "indent_size": 4
    }
}
```

#####  [Inline](#inline) 

**Namespace**: `html`

**Key**: `inline`

**Default**: `a,abbr,area,audio,b,bdi,bdo,br,button,canvas,cite,code,data,datalist,del,dfn,em,embed,i,iframe,img,input,ins,kbd,keygen,label,map,mark,math,meter,noscript,object,output,progress,q,ruby,s,samp,select,small,span,strong,sub,sup,svg,template,textarea,time,u,var,video,wbr,text,acronym,address,big,dt,ins,strike,tt`

**Type**: `array`

**Supported Beautifiers**:  [`Marko Beautifier`](#marko-beautifier) 

**Description**:

List of inline tags. Behaves similar to text content, will not wrap without whitespace. (Supported by Marko Beautifier)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "inline": [
            "a",
            "abbr",
            "area",
            "audio",
            "b",
            "bdi",
            "bdo",
            "br",
            "button",
            "canvas",
            "cite",
            "code",
            "data",
            "datalist",
            "del",
            "dfn",
            "em",
            "embed",
            "i",
            "iframe",
            "img",
            "input",
            "ins",
            "kbd",
            "keygen",
            "label",
            "map",
            "mark",
            "math",
            "meter",
            "noscript",
            "object",
            "output",
            "progress",
            "q",
            "ruby",
            "s",
            "samp",
            "select",
            "small",
            "span",
            "strong",
            "sub",
            "sup",
            "svg",
            "template",
            "textarea",
            "time",
            "u",
            "var",
            "video",
            "wbr",
            "text",
            "acronym",
            "address",
            "big",
            "dt",
            "ins",
            "strike",
            "tt"
        ]
    }
}
```

#####  [Max preserve newlines](#max-preserve-newlines) 

**Namespace**: `html`

**Key**: `max_preserve_newlines`

**Default**: `10`

**Type**: `integer`

**Supported Beautifiers**:  [`Marko Beautifier`](#marko-beautifier) 

**Description**:

Number of line-breaks to be preserved in one chunk (Supported by Marko Beautifier)

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

**Supported Beautifiers**:  [`Marko Beautifier`](#marko-beautifier) 

**Description**:

Preserve line-breaks (Supported by Marko Beautifier)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "preserve_newlines": true
    }
}
```

#####  [Syntax](#syntax) 

**Namespace**: `marko`

**Key**: `syntax`

**Default**: `html`

**Type**: `string`

**Enum**:  `html`  `concise` 

**Supported Beautifiers**:  [`Marko Beautifier`](#marko-beautifier) 

**Description**:

[html|concise] (Supported by Marko Beautifier)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "marko": {
        "syntax": "html"
    }
}
```

#####  [Unformatted](#unformatted) 

**Namespace**: `html`

**Key**: `unformatted`

**Type**: `array`

**Supported Beautifiers**:  [`Marko Beautifier`](#marko-beautifier) 

**Description**:

(Deprecated for most scenarios - consider inline or content_unformatted) List of tags that should not be reformatted at all.  NOTE: Set this to [] to get improved beautifier behavior. (Supported by Marko Beautifier)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "unformatted": []
    }
}
```

#####  [Wrap attributes](#wrap-attributes) 

**Namespace**: `html`

**Key**: `wrap_attributes`

**Default**: `auto`

**Type**: `string`

**Enum**:  `auto`  `aligned-multiple`  `force`  `force-aligned`  `force-expand-multiline` 

**Supported Beautifiers**:  [`Marko Beautifier`](#marko-beautifier) 

**Description**:

Wrap attributes to new lines [auto|aligned-multiple|force|force-aligned|force-expand-multiline] (Supported by Marko Beautifier)

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

**Supported Beautifiers**:  [`Marko Beautifier`](#marko-beautifier) 

**Description**:

Indent wrapped attributes to after N characters (Supported by Marko Beautifier)

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

**Supported Beautifiers**:  [`Marko Beautifier`](#marko-beautifier) 

**Description**:

Maximum characters per line (0 disables) (Supported by Marko Beautifier)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "wrap_line_length": 250
    }
}
```

####  [Mustache](#mustache) 

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

| Option | JS Beautify | Pretty Diff |
| --- | --- | --- |
| `disabled` | :white_check_mark: | :white_check_mark: |
| `default_beautifier` | :white_check_mark: | :white_check_mark: |
| `beautify_on_save` | :white_check_mark: | :white_check_mark: |
| `brace_style` | :white_check_mark: | :x: |
| `content_unformatted` | :white_check_mark: | :x: |
| `end_with_newline` | :white_check_mark: | :x: |
| `extra_liners` | :white_check_mark: | :x: |
| `indent_char` | :white_check_mark: | :white_check_mark: |
| `indent_inner_html` | :white_check_mark: | :x: |
| `indent_scripts` | :white_check_mark: | :x: |
| `indent_size` | :white_check_mark: | :white_check_mark: |
| `inline` | :white_check_mark: | :x: |
| `max_preserve_newlines` | :white_check_mark: | :x: |
| `preserve_newlines` | :white_check_mark: | :white_check_mark: |
| `unformatted` | :white_check_mark: | :x: |
| `wrap_attributes` | :white_check_mark: | :x: |
| `wrap_attributes_indent_size` | :white_check_mark: | :x: |
| `wrap_line_length` | :white_check_mark: | :white_check_mark: |

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

**Enum**:  `JS Beautify`  `Pretty Diff` 

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

#####  [Content unformatted](#content-unformatted) 

**Namespace**: `html`

**Key**: `content_unformatted`

**Default**: `pre,textarea`

**Type**: `array`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

List of tags whose contents should not be reformatted. Attributes will be reformatted, inner html will not. (Supported by JS Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "content_unformatted": [
            "pre",
            "textarea"
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

#####  [Inline](#inline) 

**Namespace**: `html`

**Key**: `inline`

**Default**: `a,abbr,area,audio,b,bdi,bdo,br,button,canvas,cite,code,data,datalist,del,dfn,em,embed,i,iframe,img,input,ins,kbd,keygen,label,map,mark,math,meter,noscript,object,output,progress,q,ruby,s,samp,select,small,span,strong,sub,sup,svg,template,textarea,time,u,var,video,wbr,text,acronym,address,big,dt,strike,tt`

**Type**: `array`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

List of inline tags. Behaves similar to text content, will not wrap without whitespace. (Supported by JS Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "inline": [
            "a",
            "abbr",
            "area",
            "audio",
            "b",
            "bdi",
            "bdo",
            "br",
            "button",
            "canvas",
            "cite",
            "code",
            "data",
            "datalist",
            "del",
            "dfn",
            "em",
            "embed",
            "i",
            "iframe",
            "img",
            "input",
            "ins",
            "kbd",
            "keygen",
            "label",
            "map",
            "mark",
            "math",
            "meter",
            "noscript",
            "object",
            "output",
            "progress",
            "q",
            "ruby",
            "s",
            "samp",
            "select",
            "small",
            "span",
            "strong",
            "sub",
            "sup",
            "svg",
            "template",
            "textarea",
            "time",
            "u",
            "var",
            "video",
            "wbr",
            "text",
            "acronym",
            "address",
            "big",
            "dt",
            "strike",
            "tt"
        ]
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

**Type**: `array`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

(Deprecated for most scenarios - consider inline or content_unformatted) List of tags that should not be reformatted at all.  NOTE: Set this to [] to get improved beautifier behavior. (Supported by JS Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "unformatted": []
    }
}
```

#####  [Wrap attributes](#wrap-attributes) 

**Namespace**: `html`

**Key**: `wrap_attributes`

**Default**: `auto`

**Type**: `string`

**Enum**:  `auto`  `aligned-multiple`  `force`  `force-aligned`  `force-expand-multiline` 

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

Wrap attributes to new lines [auto|aligned-multiple|force|force-aligned|force-expand-multiline] (Supported by JS Beautify)

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

####  [Nginx](#nginx) 

**Supported Beautifiers**:  [`Nginx Beautify`](#nginx-beautify) 

| Option | Nginx Beautify |
| --- | --- |
| `disabled` | :white_check_mark: |
| `default_beautifier` | :white_check_mark: |
| `beautify_on_save` | :white_check_mark: |
| `dontJoinCurlyBracet` | :white_check_mark: |
| `indent_char` | :white_check_mark: |
| `indent_size` | :white_check_mark: |
| `indent_with_tabs` | :white_check_mark: |

**Description**:

Options for language Nginx

#####  [Disable Beautifying Language](#disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable Nginx Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Disable Beautifying Language*" and change it to your desired configuration.

#####  [Default Beautifier](#default-beautifier) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Default**: `Nginx Beautify`

**Type**: `string`

**Enum**:  `Nginx Beautify` 

**Description**:

Default Beautifier to be used for Nginx

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Default Beautifier*" and change it to your desired configuration.

#####  [Beautify On Save](#beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify Nginx files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Beautify On Save*" and change it to your desired configuration.

#####  [Don&#x27;t join curly brackets](#don't-join-curly-brackets) 

**Namespace**: `nginx`

**Key**: `dontJoinCurlyBracet`

**Default**: `true`

**Type**: `boolean`

**Supported Beautifiers**:  [`Nginx Beautify`](#nginx-beautify) 

**Description**:

 (Supported by Nginx Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "nginx": {
        "dontJoinCurlyBracet": true
    }
}
```

#####  [Indent char](#indent-char) 

**Namespace**: `nginx`

**Key**: `indent_char`

**Default**: ` `

**Type**: `string`

**Supported Beautifiers**:  [`Nginx Beautify`](#nginx-beautify) 

**Description**:

Indentation character (Supported by Nginx Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "nginx": {
        "indent_char": " "
    }
}
```

#####  [Indent size](#indent-size) 

**Namespace**: `nginx`

**Key**: `indent_size`

**Default**: `4`

**Type**: `integer`

**Supported Beautifiers**:  [`Nginx Beautify`](#nginx-beautify) 

**Description**:

Indentation size/length (Supported by Nginx Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "nginx": {
        "indent_size": 4
    }
}
```

#####  [Indent with tabs](#indent-with-tabs) 

**Namespace**: `nginx`

**Key**: `indent_with_tabs`

**Type**: `boolean`

**Supported Beautifiers**:  [`Nginx Beautify`](#nginx-beautify) 

**Description**:

Indentation uses tabs, overrides `Indent Size` and `Indent Char` (Supported by Nginx Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "nginx": {
        "indent_with_tabs": false
    }
}
```

####  [Nunjucks](#nunjucks) 

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

| Option | Pretty Diff |
| --- | --- |
| `disabled` | :white_check_mark: |
| `default_beautifier` | :white_check_mark: |
| `beautify_on_save` | :white_check_mark: |
| `indent_char` | :white_check_mark: |
| `indent_size` | :white_check_mark: |
| `preserve_newlines` | :white_check_mark: |
| `wrap_line_length` | :white_check_mark: |

**Description**:

Options for language Nunjucks

#####  [Disable Beautifying Language](#disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable Nunjucks Beautification

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

Default Beautifier to be used for Nunjucks

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Default Beautifier*" and change it to your desired configuration.

#####  [Beautify On Save](#beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify Nunjucks files on save

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

####  [Objective-C](#objective-c) 

**Supported Beautifiers**:  [`Uncrustify`](#uncrustify)  [`clang-format`](#clang-format) 

| Option | Uncrustify | clang-format |
| --- | --- | --- |
| `disabled` | :white_check_mark: | :white_check_mark: |
| `default_beautifier` | :white_check_mark: | :white_check_mark: |
| `beautify_on_save` | :white_check_mark: | :white_check_mark: |
| `configPath` | :white_check_mark: | :x: |

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

####  [OCaml](#ocaml) 

**Supported Beautifiers**:  [`ocp-indent`](#ocp-indent)  [`ocamlformat`](#ocamlformat) 

| Option | ocamlformat | ocp-indent |
| --- | --- | --- |
| `disabled` | :white_check_mark: | :white_check_mark: |
| `default_beautifier` | :white_check_mark: | :white_check_mark: |
| `beautify_on_save` | :white_check_mark: | :white_check_mark: |

**Description**:

Options for language OCaml

#####  [Disable Beautifying Language](#disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable OCaml Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Disable Beautifying Language*" and change it to your desired configuration.

#####  [Default Beautifier](#default-beautifier) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Default**: `ocp-indent`

**Type**: `string`

**Enum**:  `ocp-indent`  `ocamlformat` 

**Description**:

Default Beautifier to be used for OCaml

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Default Beautifier*" and change it to your desired configuration.

#####  [Beautify On Save](#beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify OCaml files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Beautify On Save*" and change it to your desired configuration.

####  [Pawn](#pawn) 

**Supported Beautifiers**:  [`Uncrustify`](#uncrustify) 

| Option | Uncrustify |
| --- | --- |
| `disabled` | :white_check_mark: |
| `default_beautifier` | :white_check_mark: |
| `beautify_on_save` | :white_check_mark: |
| `configPath` | :white_check_mark: |

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

| Option | Perltidy |
| --- | --- |
| `disabled` | :white_check_mark: |
| `default_beautifier` | :white_check_mark: |
| `beautify_on_save` | :white_check_mark: |
| `perltidy_profile` | :white_check_mark: |

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

**Supported Beautifiers**:  [`hh_format`](#hh_format)  [`PHP-CS-Fixer`](#php-cs-fixer)  [`PHPCBF`](#phpcbf) 

| Option | PHP-CS-Fixer | PHPCBF | hh_format |
| --- | --- | --- | --- |
| `disabled` | :white_check_mark: | :white_check_mark: | :white_check_mark: |
| `default_beautifier` | :white_check_mark: | :white_check_mark: | :white_check_mark: |
| `beautify_on_save` | :white_check_mark: | :white_check_mark: | :white_check_mark: |
| `allow_risky` | :white_check_mark: | :x: | :x: |
| `cs_fixer_config_file` | :white_check_mark: | :x: | :x: |
| `cs_fixer_path` | :white_check_mark: | :x: | :x: |
| `cs_fixer_version` | :white_check_mark: | :x: | :x: |
| `fixers` | :white_check_mark: | :x: | :x: |
| `level` | :white_check_mark: | :x: | :x: |
| `phpcbf_path` | :x: | :white_check_mark: | :x: |
| `phpcbf_version` | :x: | :white_check_mark: | :x: |
| `rules` | :white_check_mark: | :x: | :x: |
| `standard` | :x: | :white_check_mark: | :x: |

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

**Enum**:  `hh_format`  `PHP-CS-Fixer`  `PHPCBF` 

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

#####  [Allow risky rules](#allow-risky-rules) 

**Namespace**: `php`

**Key**: `allow_risky`

**Default**: `no`

**Type**: `string`

**Enum**:  `no`  `yes` 

**Supported Beautifiers**:  [`PHP-CS-Fixer`](#php-cs-fixer) 

**Description**:

Allow risky rules to be applied (PHP-CS-Fixer 2 only) (Supported by PHP-CS-Fixer)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "php": {
        "allow_risky": "no"
    }
}
```

#####  [PHP-CS-Fixer Config File](#php-cs-fixer-config-file) 

**Namespace**: `php`

**Key**: `cs_fixer_config_file`

**Type**: `string`

**Supported Beautifiers**:  [`PHP-CS-Fixer`](#php-cs-fixer) 

**Description**:

Path to php-cs-fixer config file. Will use local `.php_cs` or `.php_cs.dist` if found in the working directory or project root. (Supported by PHP-CS-Fixer)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "php": {
        "cs_fixer_config_file": ""
    }
}
```

#####  [PHP-CS-Fixer Path](#php-cs-fixer-path) 

**Namespace**: `php`

**Key**: `cs_fixer_path`

**Type**: `string`

**Supported Beautifiers**:  [`PHP-CS-Fixer`](#php-cs-fixer) 

**Description**:

Absolute path to the `php-cs-fixer` CLI executable (Supported by PHP-CS-Fixer)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "php": {
        "cs_fixer_path": ""
    }
}
```

#####  [PHP-CS-Fixer Version](#php-cs-fixer-version) 

**Namespace**: `php`

**Key**: `cs_fixer_version`

**Default**: `2`

**Type**: `integer`

**Enum**:  `1`  `2` 

**Supported Beautifiers**:  [`PHP-CS-Fixer`](#php-cs-fixer) 

**Description**:

 (Supported by PHP-CS-Fixer)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "php": {
        "cs_fixer_version": 2
    }
}
```

#####  [Fixers](#fixers) 

**Namespace**: `php`

**Key**: `fixers`

**Type**: `string`

**Supported Beautifiers**:  [`PHP-CS-Fixer`](#php-cs-fixer) 

**Description**:

Add fixer(s). i.e. linefeed,-short_tag,indentation (PHP-CS-Fixer 1 only) (Supported by PHP-CS-Fixer)

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

By default, all PSR-2 fixers and some additional ones are run. (PHP-CS-Fixer 1 only) (Supported by PHP-CS-Fixer)

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

**Supported Beautifiers**:  [`PHPCBF`](#phpcbf) 

**Description**:

Path to the `phpcbf` CLI executable (Supported by PHPCBF)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "php": {
        "phpcbf_path": ""
    }
}
```

#####  [PHPCBF Version](#phpcbf-version) 

**Namespace**: `php`

**Key**: `phpcbf_version`

**Default**: `2`

**Type**: `integer`

**Enum**:  `1`  `2`  `3` 

**Supported Beautifiers**:  [`PHPCBF`](#phpcbf) 

**Description**:

 (Supported by PHPCBF)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "php": {
        "phpcbf_version": 2
    }
}
```

#####  [Rules](#rules) 

**Namespace**: `php`

**Key**: `rules`

**Type**: `string`

**Supported Beautifiers**:  [`PHP-CS-Fixer`](#php-cs-fixer) 

**Description**:

Add rule(s). i.e. line_ending,-full_opening_tag,@PSR2 (PHP-CS-Fixer 2 only) (Supported by PHP-CS-Fixer)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "php": {
        "rules": ""
    }
}
```

#####  [PHPCBF Standard](#phpcbf-standard) 

**Namespace**: `php`

**Key**: `standard`

**Default**: `PEAR`

**Type**: `string`

**Supported Beautifiers**:  [`PHPCBF`](#phpcbf) 

**Description**:

Standard name Squiz, PSR2, PSR1, PHPCS, PEAR, Zend, MySource... or path to CS rules. Will use local `phpcs.xml`, `phpcs.xml.dist`, `phpcs.ruleset.xml` or `ruleset.xml` if found in the project root. (Supported by PHPCBF)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "php": {
        "standard": "PEAR"
    }
}
```

####  [Puppet](#puppet) 

**Supported Beautifiers**:  [`puppet-lint`](#puppet-lint) 

| Option | puppet-lint |
| --- | --- |
| `disabled` | :white_check_mark: |
| `default_beautifier` | :white_check_mark: |
| `beautify_on_save` | :white_check_mark: |

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

**Supported Beautifiers**:  [`autopep8`](#autopep8)  [`black`](#black)  [`pybeautifier`](#pybeautifier)  [`yapf`](#yapf) 

| Option | autopep8 | black | pybeautifier | yapf |
| --- | --- | --- | --- | --- |
| `disabled` | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: |
| `default_beautifier` | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: |
| `beautify_on_save` | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: |
| `formatter` | :white_check_mark: | :x: | :white_check_mark: | :x: |
| `ignore` | :white_check_mark: | :x: | :white_check_mark: | :x: |
| `indent_size` | :white_check_mark: | :x: | :white_check_mark: | :x: |
| `max_line_length` | :white_check_mark: | :x: | :white_check_mark: | :x: |
| `multi_line_output` | :white_check_mark: | :x: | :white_check_mark: | :x: |
| `sort_imports` | :white_check_mark: | :x: | :white_check_mark: | :x: |
| `style_config` | :white_check_mark: | :x: | :white_check_mark: | :x: |

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

**Enum**:  `autopep8`  `black`  `pybeautifier`  `yapf` 

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

#####  [Formatter](#formatter) 

**Namespace**: `python`

**Key**: `formatter`

**Default**: `autopep8`

**Type**: `string`

**Enum**:  `autopep8`  `yapf` 

**Supported Beautifiers**:  [`autopep8`](#autopep8)  [`pybeautifier`](#pybeautifier) 

**Description**:

formatter used by pybeautifier (Supported by autopep8, pybeautifier)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "python": {
        "formatter": "autopep8"
    }
}
```

#####  [Ignore](#ignore) 

**Namespace**: `python`

**Key**: `ignore`

**Default**: `E24`

**Type**: `array`

**Supported Beautifiers**:  [`autopep8`](#autopep8)  [`pybeautifier`](#pybeautifier) 

**Description**:

do not fix these errors/warnings (Supported by autopep8, pybeautifier)

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

**Supported Beautifiers**:  [`autopep8`](#autopep8)  [`pybeautifier`](#pybeautifier) 

**Description**:

Indentation size/length (Supported by autopep8, pybeautifier)

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

**Supported Beautifiers**:  [`autopep8`](#autopep8)  [`pybeautifier`](#pybeautifier) 

**Description**:

set maximum allowed line length (Supported by autopep8, pybeautifier)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "python": {
        "max_line_length": 79
    }
}
```

#####  [Multi line output](#multi-line-output) 

**Namespace**: `python`

**Key**: `multi_line_output`

**Default**: `Hanging Grid Grouped`

**Type**: `string`

**Enum**:  `Grid`  `Vertical`  `Hanging Indent`  `Vertical Hanging Indent`  `Hanging Grid`  `Hanging Grid Grouped`  `NOQA` 

**Supported Beautifiers**:  [`autopep8`](#autopep8)  [`pybeautifier`](#pybeautifier) 

**Description**:

defines how from imports wrap (requires isort installed) (Supported by autopep8, pybeautifier)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "python": {
        "multi_line_output": "Hanging Grid Grouped"
    }
}
```

#####  [Sort imports](#sort-imports) 

**Namespace**: `python`

**Key**: `sort_imports`

**Type**: `boolean`

**Supported Beautifiers**:  [`autopep8`](#autopep8)  [`pybeautifier`](#pybeautifier) 

**Description**:

sort imports (requires isort installed) (Supported by autopep8, pybeautifier)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "python": {
        "sort_imports": false
    }
}
```

#####  [Style config](#style-config) 

**Namespace**: `python`

**Key**: `style_config`

**Default**: `pep8`

**Type**: `string`

**Supported Beautifiers**:  [`autopep8`](#autopep8)  [`pybeautifier`](#pybeautifier) 

**Description**:

formatting style used by yapf (Supported by autopep8, pybeautifier)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "python": {
        "style_config": "pep8"
    }
}
```

####  [R](#r) 

**Supported Beautifiers**:  [`formatR`](#formatr) 

| Option | formatR |
| --- | --- |
| `disabled` | :white_check_mark: |
| `default_beautifier` | :white_check_mark: |
| `beautify_on_save` | :white_check_mark: |
| `indent_size` | :white_check_mark: |

**Description**:

Options for language R

#####  [Disable Beautifying Language](#disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable R Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Disable Beautifying Language*" and change it to your desired configuration.

#####  [Default Beautifier](#default-beautifier) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Default**: `formatR`

**Type**: `string`

**Enum**:  `formatR` 

**Description**:

Default Beautifier to be used for R

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Default Beautifier*" and change it to your desired configuration.

#####  [Beautify On Save](#beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify R files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Beautify On Save*" and change it to your desired configuration.

#####  [Indent size](#indent-size) 

**Namespace**: `r`

**Key**: `indent_size`

**Default**: `4`

**Type**: `integer`

**Supported Beautifiers**:  [`formatR`](#formatr) 

**Description**:

Indentation size/length (Supported by formatR)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "r": {
        "indent_size": 4
    }
}
```

####  [Riot.js](#riot.js) 

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

| Option | Pretty Diff |
| --- | --- |
| `disabled` | :white_check_mark: |
| `default_beautifier` | :white_check_mark: |
| `beautify_on_save` | :white_check_mark: |
| `indent_char` | :white_check_mark: |
| `indent_size` | :white_check_mark: |
| `preserve_newlines` | :white_check_mark: |
| `wrap_line_length` | :white_check_mark: |

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

| Option | Rubocop | Ruby Beautify |
| --- | --- | --- |
| `disabled` | :white_check_mark: | :white_check_mark: |
| `default_beautifier` | :white_check_mark: | :white_check_mark: |
| `beautify_on_save` | :white_check_mark: | :white_check_mark: |
| `indent_char` | :x: | :white_check_mark: |
| `indent_size` | :white_check_mark: | :white_check_mark: |
| `rubocop_path` | :white_check_mark: | :x: |

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

| Option | rustfmt |
| --- | --- |
| `disabled` | :white_check_mark: |
| `default_beautifier` | :white_check_mark: |
| `beautify_on_save` | :white_check_mark: |
| `rustfmt_path` | :white_check_mark: |

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

**Supported Beautifiers**:  [`SassConvert`](#sassconvert) 

| Option | SassConvert |
| --- | --- |
| `disabled` | :white_check_mark: |
| `default_beautifier` | :white_check_mark: |
| `beautify_on_save` | :white_check_mark: |

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

**Default**: `SassConvert`

**Type**: `string`

**Enum**:  `SassConvert` 

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

####  [SCSS](#scss) 

**Supported Beautifiers**:  [`CSScomb`](#csscomb)  [`Prettier`](#prettier)  [`Pretty Diff`](#pretty-diff)  [`SassConvert`](#sassconvert) 

| Option | CSScomb | Prettier | Pretty Diff | SassConvert |
| --- | --- | --- | --- | --- |
| `disabled` | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: |
| `default_beautifier` | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: |
| `beautify_on_save` | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: |
| `align_assignments` | :x: | :x: | :white_check_mark: | :x: |
| `configPath` | :white_check_mark: | :x: | :x: | :x: |
| `convert_quotes` | :x: | :x: | :white_check_mark: | :x: |
| `force_indentation` | :x: | :x: | :white_check_mark: | :x: |
| `indent_char` | :x: | :x: | :white_check_mark: | :x: |
| `indent_comments` | :x: | :x: | :white_check_mark: | :x: |
| `indent_size` | :x: | :x: | :white_check_mark: | :x: |
| `newline_between_rules` | :x: | :x: | :white_check_mark: | :x: |
| `no_lead_zero` | :x: | :x: | :white_check_mark: | :x: |
| `predefinedConfig` | :white_check_mark: | :x: | :x: | :x: |
| `preserve_newlines` | :x: | :x: | :white_check_mark: | :x: |
| `wrap_line_length` | :x: | :x: | :white_check_mark: | :x: |

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

**Enum**:  `CSScomb`  `Prettier`  `Pretty Diff`  `SassConvert` 

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

Path to custom CSScomb config file, used in absence of a `.csscomb.json` or `.csscomb.cson` at the root of your project. (Supported by CSScomb)

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

**Default**: `true`

**Type**: `boolean`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Add a newline between CSS rules (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "css": {
        "newline_between_rules": true
    }
}
```

#####  [No lead zero](#no-lead-zero) 

**Namespace**: `css`

**Key**: `no_lead_zero`

**Type**: `boolean`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

If in CSS values leading 0s immediately preceding a decimal should be removed or prevented. (Supported by Pretty Diff)

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

| Option | Pretty Diff |
| --- | --- |
| `disabled` | :white_check_mark: |
| `default_beautifier` | :white_check_mark: |
| `beautify_on_save` | :white_check_mark: |
| `indent_char` | :white_check_mark: |
| `indent_size` | :white_check_mark: |
| `preserve_newlines` | :white_check_mark: |
| `wrap_line_length` | :white_check_mark: |

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

| Option | sqlformat |
| --- | --- |
| `disabled` | :white_check_mark: |
| `default_beautifier` | :white_check_mark: |
| `beautify_on_save` | :white_check_mark: |
| `identifiers` | :white_check_mark: |
| `indent_size` | :white_check_mark: |
| `keywords` | :white_check_mark: |
| `reindent` | :white_check_mark: |

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

#####  [Reindent](#reindent) 

**Namespace**: `sql`

**Key**: `reindent`

**Default**: `true`

**Type**: `boolean`

**Supported Beautifiers**:  [`sqlformat`](#sqlformat) 

**Description**:

Change indentations of the statements. Uncheck this option to preserve indentation (Supported by sqlformat)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "sql": {
        "reindent": true
    }
}
```

####  [SVG](#svg) 

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

| Option | Pretty Diff |
| --- | --- |
| `disabled` | :white_check_mark: |
| `default_beautifier` | :white_check_mark: |
| `beautify_on_save` | :white_check_mark: |
| `indent_char` | :white_check_mark: |
| `indent_size` | :white_check_mark: |
| `preserve_newlines` | :white_check_mark: |
| `wrap_line_length` | :white_check_mark: |

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

| Option | Pretty Diff |
| --- | --- |
| `disabled` | :white_check_mark: |
| `default_beautifier` | :white_check_mark: |
| `beautify_on_save` | :white_check_mark: |
| `indent_char` | :white_check_mark: |
| `indent_size` | :white_check_mark: |
| `preserve_newlines` | :white_check_mark: |
| `wrap_line_length` | :white_check_mark: |

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

####  [Terraform](#terraform) 

**Supported Beautifiers**:  [`terraformfmt`](#terraformfmt) 

| Option | terraformfmt |
| --- | --- |
| `disabled` | :white_check_mark: |
| `default_beautifier` | :white_check_mark: |
| `beautify_on_save` | :white_check_mark: |

**Description**:

Options for language Terraform

#####  [Disable Beautifying Language](#disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable Terraform Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Disable Beautifying Language*" and change it to your desired configuration.

#####  [Default Beautifier](#default-beautifier) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Default**: `terraformfmt`

**Type**: `string`

**Enum**:  `terraformfmt` 

**Description**:

Default Beautifier to be used for Terraform

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Default Beautifier*" and change it to your desired configuration.

#####  [Beautify On Save](#beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify Terraform files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Beautify On Save*" and change it to your desired configuration.

####  [TSS](#tss) 

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

| Option | Pretty Diff |
| --- | --- |
| `disabled` | :white_check_mark: |
| `default_beautifier` | :white_check_mark: |
| `beautify_on_save` | :white_check_mark: |
| `align_assignments` | :white_check_mark: |
| `convert_quotes` | :white_check_mark: |
| `force_indentation` | :white_check_mark: |
| `indent_char` | :white_check_mark: |
| `indent_comments` | :white_check_mark: |
| `indent_size` | :white_check_mark: |
| `newline_between_rules` | :white_check_mark: |
| `no_lead_zero` | :white_check_mark: |
| `preserve_newlines` | :white_check_mark: |
| `wrap_line_length` | :white_check_mark: |

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

**Default**: `true`

**Type**: `boolean`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Add a newline between CSS rules (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "css": {
        "newline_between_rules": true
    }
}
```

#####  [No lead zero](#no-lead-zero) 

**Namespace**: `css`

**Key**: `no_lead_zero`

**Type**: `boolean`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

If in CSS values leading 0s immediately preceding a decimal should be removed or prevented. (Supported by Pretty Diff)

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

####  [TSX](#tsx) 

**Supported Beautifiers**:  [`TypeScript Formatter`](#typescript-formatter) 

| Option | TypeScript Formatter |
| --- | --- |
| `disabled` | :white_check_mark: |
| `default_beautifier` | :white_check_mark: |
| `beautify_on_save` | :white_check_mark: |
| `indent_size` | :white_check_mark: |
| `indent_with_tabs` | :white_check_mark: |

**Description**:

Options for language TSX

#####  [Disable Beautifying Language](#disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable TSX Beautification

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

Default Beautifier to be used for TSX

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Default Beautifier*" and change it to your desired configuration.

#####  [Beautify On Save](#beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify TSX files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Beautify On Save*" and change it to your desired configuration.

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

####  [Twig](#twig) 

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

| Option | Pretty Diff |
| --- | --- |
| `disabled` | :white_check_mark: |
| `default_beautifier` | :white_check_mark: |
| `beautify_on_save` | :white_check_mark: |
| `break_chained_methods` | :white_check_mark: |
| `end_with_comma` | :white_check_mark: |
| `indent_char` | :white_check_mark: |
| `indent_size` | :white_check_mark: |
| `indent_with_tabs` | :white_check_mark: |
| `preserve_newlines` | :white_check_mark: |
| `space_after_anon_function` | :white_check_mark: |
| `space_in_paren` | :white_check_mark: |
| `wrap_line_length` | :white_check_mark: |

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

#####  [Indent with tabs](#indent-with-tabs) 

**Namespace**: `js`

**Key**: `indent_with_tabs`

**Type**: `boolean`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Indentation uses tabs, overrides `Indent Size` and `Indent Char` (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "indent_with_tabs": false
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

#####  [Space in paren](#space-in-paren) 

**Namespace**: `js`

**Key**: `space_in_paren`

**Type**: `boolean`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Add padding spaces within paren, ie. f( a, b ) (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "space_in_paren": false
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

**Supported Beautifiers**:  [`Prettier`](#prettier)  [`TypeScript Formatter`](#typescript-formatter) 

| Option | Prettier | TypeScript Formatter |
| --- | --- | --- |
| `disabled` | :white_check_mark: | :white_check_mark: |
| `default_beautifier` | :white_check_mark: | :white_check_mark: |
| `beautify_on_save` | :white_check_mark: | :white_check_mark: |
| `indent_size` | :x: | :white_check_mark: |
| `indent_with_tabs` | :x: | :white_check_mark: |

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

**Enum**:  `Prettier`  `TypeScript Formatter` 

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

####  [UX Markup](#ux-markup) 

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

| Option | Pretty Diff |
| --- | --- |
| `disabled` | :white_check_mark: |
| `default_beautifier` | :white_check_mark: |
| `beautify_on_save` | :white_check_mark: |
| `indent_char` | :white_check_mark: |
| `indent_size` | :white_check_mark: |
| `preserve_newlines` | :white_check_mark: |
| `wrap_line_length` | :white_check_mark: |

**Description**:

Options for language UX Markup

#####  [Disable Beautifying Language](#disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable UX Markup Beautification

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

Default Beautifier to be used for UX Markup

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Default Beautifier*" and change it to your desired configuration.

#####  [Beautify On Save](#beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify UX Markup files on save

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

####  [Vala](#vala) 

**Supported Beautifiers**:  [`Uncrustify`](#uncrustify) 

| Option | Uncrustify |
| --- | --- |
| `disabled` | :white_check_mark: |
| `default_beautifier` | :white_check_mark: |
| `beautify_on_save` | :white_check_mark: |
| `configPath` | :white_check_mark: |

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

####  [Verilog](#verilog) 

**Supported Beautifiers**:  [`Emacs Verilog Mode`](#emacs-verilog-mode) 

| Option | Emacs Verilog Mode |
| --- | --- |
| `disabled` | :white_check_mark: |
| `default_beautifier` | :white_check_mark: |
| `beautify_on_save` | :white_check_mark: |
| `emacs_script_path` | :white_check_mark: |

**Description**:

Options for language Verilog

#####  [Disable Beautifying Language](#disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable Verilog Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Disable Beautifying Language*" and change it to your desired configuration.

#####  [Default Beautifier](#default-beautifier) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Default**: `Emacs Verilog Mode`

**Type**: `string`

**Enum**:  `Emacs Verilog Mode` 

**Description**:

Default Beautifier to be used for Verilog

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Default Beautifier*" and change it to your desired configuration.

#####  [Beautify On Save](#beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify Verilog files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Beautify On Save*" and change it to your desired configuration.

#####  [Emacs script path](#emacs-script-path) 

**Namespace**: `verilog`

**Key**: `emacs_script_path`

**Type**: `string`

**Supported Beautifiers**:  [`Emacs Verilog Mode`](#emacs-verilog-mode) 

**Description**:

Path to emacs init.el script with formatting settings. (Leave blank to use default one) (Supported by Emacs Verilog Mode)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "verilog": {
        "emacs_script_path": ""
    }
}
```

####  [VHDL](#vhdl) 

**Supported Beautifiers**:  [`VHDL Beautifier`](#vhdl-beautifier) 

| Option | VHDL Beautifier |
| --- | --- |
| `disabled` | :white_check_mark: |
| `default_beautifier` | :white_check_mark: |
| `beautify_on_save` | :white_check_mark: |
| `emacs_script_path` | :white_check_mark: |

**Description**:

Options for language VHDL

#####  [Disable Beautifying Language](#disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable VHDL Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Disable Beautifying Language*" and change it to your desired configuration.

#####  [Default Beautifier](#default-beautifier) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Default**: `VHDL Beautifier`

**Type**: `string`

**Enum**:  `VHDL Beautifier` 

**Description**:

Default Beautifier to be used for VHDL

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Default Beautifier*" and change it to your desired configuration.

#####  [Beautify On Save](#beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify VHDL files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Beautify On Save*" and change it to your desired configuration.

#####  [Emacs script path](#emacs-script-path) 

**Namespace**: `vhdl`

**Key**: `emacs_script_path`

**Type**: `string`

**Supported Beautifiers**:  [`VHDL Beautifier`](#vhdl-beautifier) 

**Description**:

Path to the emacs script (Supported by VHDL Beautifier)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "vhdl": {
        "emacs_script_path": ""
    }
}
```

####  [Visualforce](#visualforce) 

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

| Option | Pretty Diff |
| --- | --- |
| `disabled` | :white_check_mark: |
| `default_beautifier` | :white_check_mark: |
| `beautify_on_save` | :white_check_mark: |
| `indent_char` | :white_check_mark: |
| `indent_size` | :white_check_mark: |
| `preserve_newlines` | :white_check_mark: |
| `wrap_line_length` | :white_check_mark: |

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

####  [Vue](#vue) 

**Supported Beautifiers**:  [`ESLint Fixer`](#eslint-fixer)  [`Prettier`](#prettier)  [`Vue Beautifier`](#vue-beautifier) 

| Option | ESLint Fixer | Prettier | Vue Beautifier |
| --- | --- | --- | --- |
| `disabled` | :white_check_mark: | :white_check_mark: | :white_check_mark: |
| `default_beautifier` | :white_check_mark: | :white_check_mark: | :white_check_mark: |
| `beautify_on_save` | :white_check_mark: | :white_check_mark: | :white_check_mark: |
| `brace_style` | :x: | :x: | :white_check_mark: |
| `break_chained_methods` | :x: | :x: | :white_check_mark: |
| `content_unformatted` | :x: | :x: | :white_check_mark: |
| `end_of_line` | :x: | :x: | :white_check_mark: |
| `end_with_comma` | :x: | :x: | :white_check_mark: |
| `end_with_newline` | :x: | :x: | :white_check_mark: |
| `eval_code` | :x: | :x: | :white_check_mark: |
| `extra_liners` | :x: | :x: | :white_check_mark: |
| `indent_char` | :x: | :x: | :white_check_mark: |
| `indent_inner_html` | :x: | :x: | :white_check_mark: |
| `indent_level` | :x: | :x: | :white_check_mark: |
| `indent_scripts` | :x: | :x: | :white_check_mark: |
| `indent_size` | :x: | :x: | :white_check_mark: |
| `indent_with_tabs` | :x: | :x: | :white_check_mark: |
| `inline` | :x: | :x: | :white_check_mark: |
| `jslint_happy` | :x: | :x: | :white_check_mark: |
| `keep_array_indentation` | :x: | :x: | :white_check_mark: |
| `keep_function_indentation` | :x: | :x: | :white_check_mark: |
| `max_preserve_newlines` | :x: | :x: | :white_check_mark: |
| `object_curly_spacing` | :x: | :x: | :white_check_mark: |
| `preserve_newlines` | :x: | :x: | :white_check_mark: |
| `space_after_anon_function` | :x: | :x: | :white_check_mark: |
| `space_before_conditional` | :x: | :x: | :white_check_mark: |
| `space_in_paren` | :x: | :x: | :white_check_mark: |
| `unescape_strings` | :x: | :x: | :white_check_mark: |
| `unformatted` | :x: | :x: | :white_check_mark: |
| `wrap_attributes` | :x: | :x: | :white_check_mark: |
| `wrap_attributes_indent_size` | :x: | :x: | :white_check_mark: |
| `wrap_line_length` | :x: | :x: | :white_check_mark: |

**Description**:

Options for language Vue

#####  [Disable Beautifying Language](#disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable Vue Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Disable Beautifying Language*" and change it to your desired configuration.

#####  [Default Beautifier](#default-beautifier) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Default**: `Vue Beautifier`

**Type**: `string`

**Enum**:  `ESLint Fixer`  `Prettier`  `Vue Beautifier` 

**Description**:

Default Beautifier to be used for Vue

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Default Beautifier*" and change it to your desired configuration.

#####  [Beautify On Save](#beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify Vue files on save

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

**Enum**:  `collapse`  `collapse-preserve-inline`  `expand`  `end-expand`  `none` 

**Supported Beautifiers**:  [`Vue Beautifier`](#vue-beautifier) 

**Description**:

[collapse|expand|end-expand|none] (Supported by Vue Beautifier)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "brace_style": "collapse"
    }
}
```

#####  [Break chained methods](#break-chained-methods) 

**Namespace**: `js`

**Key**: `break_chained_methods`

**Type**: `boolean`

**Supported Beautifiers**:  [`Vue Beautifier`](#vue-beautifier) 

**Description**:

Break chained method calls across subsequent lines (Supported by Vue Beautifier)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "break_chained_methods": false
    }
}
```

#####  [Content unformatted](#content-unformatted) 

**Namespace**: `html`

**Key**: `content_unformatted`

**Default**: `pre,textarea`

**Type**: `array`

**Supported Beautifiers**:  [`Vue Beautifier`](#vue-beautifier) 

**Description**:

List of tags whose contents should not be reformatted. Attributes will be reformatted, inner html will not. (Supported by Vue Beautifier)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "content_unformatted": [
            "pre",
            "textarea"
        ]
    }
}
```

#####  [End of line](#end-of-line) 

**Namespace**: `js`

**Key**: `end_of_line`

**Default**: `System Default`

**Type**: `string`

**Enum**:  `CRLF`  `LF`  `System Default` 

**Supported Beautifiers**:  [`Vue Beautifier`](#vue-beautifier) 

**Description**:

Override EOL from line-ending-selector (Supported by Vue Beautifier)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "end_of_line": "System Default"
    }
}
```

#####  [End with comma](#end-with-comma) 

**Namespace**: `js`

**Key**: `end_with_comma`

**Type**: `boolean`

**Supported Beautifiers**:  [`Vue Beautifier`](#vue-beautifier) 

**Description**:

If a terminating comma should be inserted into arrays, object literals, and destructured objects. (Supported by Vue Beautifier)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "end_with_comma": false
    }
}
```

#####  [End with newline](#end-with-newline) 

**Namespace**: `html`

**Key**: `end_with_newline`

**Type**: `boolean`

**Supported Beautifiers**:  [`Vue Beautifier`](#vue-beautifier) 

**Description**:

End output with newline (Supported by Vue Beautifier)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "end_with_newline": false
    }
}
```

#####  [Eval code](#eval-code) 

**Namespace**: `js`

**Key**: `eval_code`

**Type**: `boolean`

**Supported Beautifiers**:  [`Vue Beautifier`](#vue-beautifier) 

**Description**:

 (Supported by Vue Beautifier)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "eval_code": false
    }
}
```

#####  [Extra liners](#extra-liners) 

**Namespace**: `html`

**Key**: `extra_liners`

**Default**: `head,body,/html`

**Type**: `array`

**Supported Beautifiers**:  [`Vue Beautifier`](#vue-beautifier) 

**Description**:

List of tags (defaults to [head,body,/html] that should have an extra newline before them. (Supported by Vue Beautifier)

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

**Supported Beautifiers**:  [`Vue Beautifier`](#vue-beautifier) 

**Description**:

Indentation character (Supported by Vue Beautifier)

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

**Supported Beautifiers**:  [`Vue Beautifier`](#vue-beautifier) 

**Description**:

Indent <head> and <body> sections. (Supported by Vue Beautifier)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "indent_inner_html": false
    }
}
```

#####  [Indent level](#indent-level) 

**Namespace**: `js`

**Key**: `indent_level`

**Type**: `integer`

**Supported Beautifiers**:  [`Vue Beautifier`](#vue-beautifier) 

**Description**:

Initial indentation level (Supported by Vue Beautifier)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "indent_level": 0
    }
}
```

#####  [Indent scripts](#indent-scripts) 

**Namespace**: `html`

**Key**: `indent_scripts`

**Default**: `normal`

**Type**: `string`

**Enum**:  `keep`  `separate`  `normal` 

**Supported Beautifiers**:  [`Vue Beautifier`](#vue-beautifier) 

**Description**:

[keep|separate|normal] (Supported by Vue Beautifier)

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

**Supported Beautifiers**:  [`Vue Beautifier`](#vue-beautifier) 

**Description**:

Indentation size/length (Supported by Vue Beautifier)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "indent_size": 4
    }
}
```

#####  [Indent with tabs](#indent-with-tabs) 

**Namespace**: `js`

**Key**: `indent_with_tabs`

**Type**: `boolean`

**Supported Beautifiers**:  [`Vue Beautifier`](#vue-beautifier) 

**Description**:

Indentation uses tabs, overrides `Indent Size` and `Indent Char` (Supported by Vue Beautifier)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "indent_with_tabs": false
    }
}
```

#####  [Inline](#inline) 

**Namespace**: `html`

**Key**: `inline`

**Default**: `a,abbr,area,audio,b,bdi,bdo,br,button,canvas,cite,code,data,datalist,del,dfn,em,embed,i,iframe,img,input,ins,kbd,keygen,label,map,mark,math,meter,noscript,object,output,progress,q,ruby,s,samp,select,small,span,strong,sub,sup,svg,template,textarea,time,u,var,video,wbr,text,acronym,address,big,dt,ins,strike,tt`

**Type**: `array`

**Supported Beautifiers**:  [`Vue Beautifier`](#vue-beautifier) 

**Description**:

List of inline tags. Behaves similar to text content, will not wrap without whitespace. (Supported by Vue Beautifier)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "inline": [
            "a",
            "abbr",
            "area",
            "audio",
            "b",
            "bdi",
            "bdo",
            "br",
            "button",
            "canvas",
            "cite",
            "code",
            "data",
            "datalist",
            "del",
            "dfn",
            "em",
            "embed",
            "i",
            "iframe",
            "img",
            "input",
            "ins",
            "kbd",
            "keygen",
            "label",
            "map",
            "mark",
            "math",
            "meter",
            "noscript",
            "object",
            "output",
            "progress",
            "q",
            "ruby",
            "s",
            "samp",
            "select",
            "small",
            "span",
            "strong",
            "sub",
            "sup",
            "svg",
            "template",
            "textarea",
            "time",
            "u",
            "var",
            "video",
            "wbr",
            "text",
            "acronym",
            "address",
            "big",
            "dt",
            "ins",
            "strike",
            "tt"
        ]
    }
}
```

#####  [Jslint happy](#jslint-happy) 

**Namespace**: `js`

**Key**: `jslint_happy`

**Type**: `boolean`

**Supported Beautifiers**:  [`Vue Beautifier`](#vue-beautifier) 

**Description**:

Enable jslint-stricter mode (Supported by Vue Beautifier)

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

**Supported Beautifiers**:  [`Vue Beautifier`](#vue-beautifier) 

**Description**:

Preserve array indentation (Supported by Vue Beautifier)

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

**Supported Beautifiers**:  [`Vue Beautifier`](#vue-beautifier) 

**Description**:

 (Supported by Vue Beautifier)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "keep_function_indentation": false
    }
}
```

#####  [Max preserve newlines](#max-preserve-newlines) 

**Namespace**: `html`

**Key**: `max_preserve_newlines`

**Default**: `10`

**Type**: `integer`

**Supported Beautifiers**:  [`Vue Beautifier`](#vue-beautifier) 

**Description**:

Number of line-breaks to be preserved in one chunk (Supported by Vue Beautifier)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "max_preserve_newlines": 10
    }
}
```

#####  [Object curly spacing](#object-curly-spacing) 

**Namespace**: `js`

**Key**: `object_curly_spacing`

**Type**: `boolean`

**Supported Beautifiers**:  [`Vue Beautifier`](#vue-beautifier) 

**Description**:

Insert spaces between brackets in object literals (Supported by Vue Beautifier)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "object_curly_spacing": false
    }
}
```

#####  [Preserve newlines](#preserve-newlines) 

**Namespace**: `html`

**Key**: `preserve_newlines`

**Default**: `true`

**Type**: `boolean`

**Supported Beautifiers**:  [`Vue Beautifier`](#vue-beautifier) 

**Description**:

Preserve line-breaks (Supported by Vue Beautifier)

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

**Supported Beautifiers**:  [`Vue Beautifier`](#vue-beautifier) 

**Description**:

Add a space before an anonymous function's parens, ie. function () (Supported by Vue Beautifier)

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

**Supported Beautifiers**:  [`Vue Beautifier`](#vue-beautifier) 

**Description**:

 (Supported by Vue Beautifier)

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

**Supported Beautifiers**:  [`Vue Beautifier`](#vue-beautifier) 

**Description**:

Add padding spaces within paren, ie. f( a, b ) (Supported by Vue Beautifier)

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

**Supported Beautifiers**:  [`Vue Beautifier`](#vue-beautifier) 

**Description**:

Decode printable characters encoded in xNN notation (Supported by Vue Beautifier)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "unescape_strings": false
    }
}
```

#####  [Unformatted](#unformatted) 

**Namespace**: `html`

**Key**: `unformatted`

**Type**: `array`

**Supported Beautifiers**:  [`Vue Beautifier`](#vue-beautifier) 

**Description**:

(Deprecated for most scenarios - consider inline or content_unformatted) List of tags that should not be reformatted at all.  NOTE: Set this to [] to get improved beautifier behavior. (Supported by Vue Beautifier)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "unformatted": []
    }
}
```

#####  [Wrap attributes](#wrap-attributes) 

**Namespace**: `html`

**Key**: `wrap_attributes`

**Default**: `auto`

**Type**: `string`

**Enum**:  `auto`  `aligned-multiple`  `force`  `force-aligned`  `force-expand-multiline` 

**Supported Beautifiers**:  [`Vue Beautifier`](#vue-beautifier) 

**Description**:

Wrap attributes to new lines [auto|aligned-multiple|force|force-aligned|force-expand-multiline] (Supported by Vue Beautifier)

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

**Supported Beautifiers**:  [`Vue Beautifier`](#vue-beautifier) 

**Description**:

Indent wrapped attributes to after N characters (Supported by Vue Beautifier)

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

**Supported Beautifiers**:  [`Vue Beautifier`](#vue-beautifier) 

**Description**:

Maximum characters per line (0 disables) (Supported by Vue Beautifier)

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

| Option | JS Beautify | Pretty Diff |
| --- | --- | --- |
| `disabled` | :white_check_mark: | :white_check_mark: |
| `default_beautifier` | :white_check_mark: | :white_check_mark: |
| `beautify_on_save` | :white_check_mark: | :white_check_mark: |
| `brace_style` | :white_check_mark: | :x: |
| `content_unformatted` | :white_check_mark: | :x: |
| `end_with_newline` | :white_check_mark: | :x: |
| `extra_liners` | :white_check_mark: | :x: |
| `indent_char` | :white_check_mark: | :white_check_mark: |
| `indent_inner_html` | :white_check_mark: | :x: |
| `indent_scripts` | :white_check_mark: | :x: |
| `indent_size` | :white_check_mark: | :white_check_mark: |
| `inline` | :white_check_mark: | :x: |
| `max_preserve_newlines` | :white_check_mark: | :x: |
| `preserve_newlines` | :white_check_mark: | :white_check_mark: |
| `unformatted` | :white_check_mark: | :x: |
| `wrap_attributes` | :white_check_mark: | :x: |
| `wrap_attributes_indent_size` | :white_check_mark: | :x: |
| `wrap_line_length` | :white_check_mark: | :white_check_mark: |

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

#####  [Content unformatted](#content-unformatted) 

**Namespace**: `html`

**Key**: `content_unformatted`

**Default**: `pre,textarea`

**Type**: `array`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

List of tags whose contents should not be reformatted. Attributes will be reformatted, inner html will not. (Supported by JS Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "content_unformatted": [
            "pre",
            "textarea"
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

#####  [Inline](#inline) 

**Namespace**: `html`

**Key**: `inline`

**Default**: `a,abbr,area,audio,b,bdi,bdo,br,button,canvas,cite,code,data,datalist,del,dfn,em,embed,i,iframe,img,input,ins,kbd,keygen,label,map,mark,math,meter,noscript,object,output,progress,q,ruby,s,samp,select,small,span,strong,sub,sup,svg,template,textarea,time,u,var,video,wbr,text,acronym,address,big,dt,ins,strike,tt`

**Type**: `array`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

List of inline tags. Behaves similar to text content, will not wrap without whitespace. (Supported by JS Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "inline": [
            "a",
            "abbr",
            "area",
            "audio",
            "b",
            "bdi",
            "bdo",
            "br",
            "button",
            "canvas",
            "cite",
            "code",
            "data",
            "datalist",
            "del",
            "dfn",
            "em",
            "embed",
            "i",
            "iframe",
            "img",
            "input",
            "ins",
            "kbd",
            "keygen",
            "label",
            "map",
            "mark",
            "math",
            "meter",
            "noscript",
            "object",
            "output",
            "progress",
            "q",
            "ruby",
            "s",
            "samp",
            "select",
            "small",
            "span",
            "strong",
            "sub",
            "sup",
            "svg",
            "template",
            "textarea",
            "time",
            "u",
            "var",
            "video",
            "wbr",
            "text",
            "acronym",
            "address",
            "big",
            "dt",
            "ins",
            "strike",
            "tt"
        ]
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

**Type**: `array`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

(Deprecated for most scenarios - consider inline or content_unformatted) List of tags that should not be reformatted at all.  NOTE: Set this to [] to get improved beautifier behavior. (Supported by JS Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "unformatted": []
    }
}
```

#####  [Wrap attributes](#wrap-attributes) 

**Namespace**: `html`

**Key**: `wrap_attributes`

**Default**: `auto`

**Type**: `string`

**Enum**:  `auto`  `aligned-multiple`  `force`  `force-aligned`  `force-expand-multiline` 

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

Wrap attributes to new lines [auto|aligned-multiple|force|force-aligned|force-expand-multiline] (Supported by JS Beautify)

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

| Option | Pretty Diff |
| --- | --- |
| `disabled` | :white_check_mark: |
| `default_beautifier` | :white_check_mark: |
| `beautify_on_save` | :white_check_mark: |
| `indent_char` | :white_check_mark: |
| `indent_size` | :white_check_mark: |
| `preserve_newlines` | :white_check_mark: |
| `wrap_line_length` | :white_check_mark: |

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

####  [YAML](#yaml) 

**Supported Beautifiers**:  [`align-yaml`](#align-yaml) 

| Option | align-yaml |
| --- | --- |
| `disabled` | :white_check_mark: |
| `default_beautifier` | :white_check_mark: |
| `beautify_on_save` | :white_check_mark: |
| `padding` | :white_check_mark: |

**Description**:

Options for language YAML

#####  [Disable Beautifying Language](#disable-beautifying-language) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Disable YAML Beautification

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Disable Beautifying Language*" and change it to your desired configuration.

#####  [Default Beautifier](#default-beautifier) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Default**: `align-yaml`

**Type**: `string`

**Enum**:  `align-yaml` 

**Description**:

Default Beautifier to be used for YAML

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Default Beautifier*" and change it to your desired configuration.

#####  [Beautify On Save](#beautify-on-save) 

**Important**: This option is only configurable from within Atom Beautify's setting panel.

**Type**: `boolean`

**Description**:

Automatically beautify YAML files on save

**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*Beautify On Save*" and change it to your desired configuration.

#####  [Padding](#padding) 

**Namespace**: `yaml`

**Key**: `padding`

**Type**: `integer`

**Supported Beautifiers**:  [`align-yaml`](#align-yaml) 

**Description**:

The amount of padding to add next to each line. (Supported by align-yaml)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "yaml": {
        "padding": 0
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

Path to custom CSScomb config file, used in absence of a `.csscomb.json` or `.csscomb.cson` at the root of your project. (Supported by CSScomb)

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


### Emacs Verilog Mode

#####  [Emacs script path](#emacs-script-path) 

**Namespace**: `verilog`

**Key**: `emacs_script_path`

**Type**: `string`

**Supported Beautifiers**:  [`Emacs Verilog Mode`](#emacs-verilog-mode) 

**Description**:

Path to emacs init.el script with formatting settings. (Leave blank to use default one) (Supported by Emacs Verilog Mode)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "verilog": {
        "emacs_script_path": ""
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

#####  [Wrap attributes](#wrap-attributes) 

**Namespace**: `html`

**Key**: `wrap_attributes`

**Default**: `auto`

**Type**: `string`

**Enum**:  `auto`  `aligned-multiple`  `force`  `force-aligned`  `force-expand-multiline` 

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

Wrap attributes to new lines [auto|aligned-multiple|force|force-aligned|force-expand-multiline] (Supported by JS Beautify)

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

**Type**: `array`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

(Deprecated for most scenarios - consider inline or content_unformatted) List of tags that should not be reformatted at all.  NOTE: Set this to [] to get improved beautifier behavior. (Supported by JS Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "unformatted": []
    }
}
```

#####  [Inline](#inline) 

**Namespace**: `html`

**Key**: `inline`

**Default**: `a,abbr,area,audio,b,bdi,bdo,br,button,canvas,cite,code,data,datalist,del,dfn,em,embed,i,iframe,img,input,ins,kbd,keygen,label,map,mark,math,meter,noscript,object,output,progress,q,ruby,s,samp,select,small,span,strong,sub,sup,svg,template,textarea,time,u,var,video,wbr,text,acronym,address,big,dt,ins,strike,tt`

**Type**: `array`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

List of inline tags. Behaves similar to text content, will not wrap without whitespace. (Supported by JS Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "inline": [
            "a",
            "abbr",
            "area",
            "audio",
            "b",
            "bdi",
            "bdo",
            "br",
            "button",
            "canvas",
            "cite",
            "code",
            "data",
            "datalist",
            "del",
            "dfn",
            "em",
            "embed",
            "i",
            "iframe",
            "img",
            "input",
            "ins",
            "kbd",
            "keygen",
            "label",
            "map",
            "mark",
            "math",
            "meter",
            "noscript",
            "object",
            "output",
            "progress",
            "q",
            "ruby",
            "s",
            "samp",
            "select",
            "small",
            "span",
            "strong",
            "sub",
            "sup",
            "svg",
            "template",
            "textarea",
            "time",
            "u",
            "var",
            "video",
            "wbr",
            "text",
            "acronym",
            "address",
            "big",
            "dt",
            "ins",
            "strike",
            "tt"
        ]
    }
}
```

#####  [Content unformatted](#content-unformatted) 

**Namespace**: `html`

**Key**: `content_unformatted`

**Default**: `pre,textarea`

**Type**: `array`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

List of tags whose contents should not be reformatted. Attributes will be reformatted, inner html will not. (Supported by JS Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "content_unformatted": [
            "pre",
            "textarea"
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

**Default**: `true`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Add a newline between CSS rules (Supported by JS Beautify, Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "css": {
        "newline_between_rules": true
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

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Indentation uses tabs, overrides `Indent Size` and `Indent Char` (Supported by JS Beautify, Pretty Diff)

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

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Add padding spaces within paren, ie. f( a, b ) (Supported by JS Beautify, Pretty Diff)

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

#####  [End of line](#end-of-line) 

**Namespace**: `js`

**Key**: `end_of_line`

**Default**: `System Default`

**Type**: `string`

**Enum**:  `CRLF`  `LF`  `System Default` 

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

Override EOL from line-ending-selector (Supported by JS Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "end_of_line": "System Default"
    }
}
```

#####  [Object curly spacing](#object-curly-spacing) 

**Namespace**: `js`

**Key**: `object_curly_spacing`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

Insert spaces between brackets in object literals (Supported by JS Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "object_curly_spacing": false
    }
}
```

#####  [E4x](#e4x) 

**Namespace**: `jsx`

**Key**: `e4x`

**Default**: `true`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify) 

**Description**:

Support e4x/jsx syntax (Supported by JS Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "jsx": {
        "e4x": true
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

**Type**: `boolean`

**Supported Beautifiers**:  [`Latex Beautify`](#latex-beautify) 

**Description**:

Indentation uses tabs, overrides `Indent Size` and `Indent Char` (Supported by Latex Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "latex": {
        "indent_with_tabs": false
    }
}
```

#####  [Indent preamble](#indent-preamble) 

**Namespace**: `latex`

**Key**: `indent_preamble`

**Type**: `boolean`

**Supported Beautifiers**:  [`Latex Beautify`](#latex-beautify) 

**Description**:

Indent the preamble (Supported by Latex Beautify)

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

Aligns columns by the alignment tabs for environments specified (Supported by Latex Beautify)

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


### Lua beautifier

#####  [Indent size](#indent-size) 

**Namespace**: `lua`

**Key**: `indent_size`

**Default**: `4`

**Type**: `integer`

**Supported Beautifiers**:  [`Lua beautifier`](#lua-beautifier) 

**Description**:

Indentation size/length (Supported by Lua beautifier)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "lua": {
        "indent_size": 4
    }
}
```

#####  [Indent char](#indent-char) 

**Namespace**: `lua`

**Key**: `indent_char`

**Default**: ` `

**Type**: `string`

**Supported Beautifiers**:  [`Lua beautifier`](#lua-beautifier) 

**Description**:

Indentation character (Supported by Lua beautifier)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "lua": {
        "indent_char": " "
    }
}
```

#####  [End of line](#end-of-line) 

**Namespace**: `lua`

**Key**: `end_of_line`

**Default**: `System Default`

**Type**: `string`

**Enum**:  `CRLF`  `LF`  `System Default` 

**Supported Beautifiers**:  [`Lua beautifier`](#lua-beautifier) 

**Description**:

Override EOL from line-ending-selector (Supported by Lua beautifier)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "lua": {
        "end_of_line": "System Default"
    }
}
```


### Marko Beautifier

#####  [Indent size](#indent-size) 

**Namespace**: `html`

**Key**: `indent_size`

**Default**: `4`

**Type**: `integer`

**Supported Beautifiers**:  [`Marko Beautifier`](#marko-beautifier) 

**Description**:

Indentation size/length (Supported by Marko Beautifier)

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

**Supported Beautifiers**:  [`Marko Beautifier`](#marko-beautifier) 

**Description**:

Indentation character (Supported by Marko Beautifier)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "indent_char": " "
    }
}
```

#####  [Syntax](#syntax) 

**Namespace**: `marko`

**Key**: `syntax`

**Default**: `html`

**Type**: `string`

**Enum**:  `html`  `concise` 

**Supported Beautifiers**:  [`Marko Beautifier`](#marko-beautifier) 

**Description**:

[html|concise] (Supported by Marko Beautifier)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "marko": {
        "syntax": "html"
    }
}
```

#####  [Indent inner html](#indent-inner-html) 

**Namespace**: `html`

**Key**: `indent_inner_html`

**Type**: `boolean`

**Supported Beautifiers**:  [`Marko Beautifier`](#marko-beautifier) 

**Description**:

Indent <head> and <body> sections. (Supported by Marko Beautifier)

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

**Supported Beautifiers**:  [`Marko Beautifier`](#marko-beautifier) 

**Description**:

[collapse|expand|end-expand|none] (Supported by Marko Beautifier)

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

**Supported Beautifiers**:  [`Marko Beautifier`](#marko-beautifier) 

**Description**:

[keep|separate|normal] (Supported by Marko Beautifier)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "indent_scripts": "normal"
    }
}
```

#####  [Wrap line length](#wrap-line-length) 

**Namespace**: `html`

**Key**: `wrap_line_length`

**Default**: `250`

**Type**: `integer`

**Supported Beautifiers**:  [`Marko Beautifier`](#marko-beautifier) 

**Description**:

Maximum characters per line (0 disables) (Supported by Marko Beautifier)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "wrap_line_length": 250
    }
}
```

#####  [Wrap attributes](#wrap-attributes) 

**Namespace**: `html`

**Key**: `wrap_attributes`

**Default**: `auto`

**Type**: `string`

**Enum**:  `auto`  `aligned-multiple`  `force`  `force-aligned`  `force-expand-multiline` 

**Supported Beautifiers**:  [`Marko Beautifier`](#marko-beautifier) 

**Description**:

Wrap attributes to new lines [auto|aligned-multiple|force|force-aligned|force-expand-multiline] (Supported by Marko Beautifier)

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

**Supported Beautifiers**:  [`Marko Beautifier`](#marko-beautifier) 

**Description**:

Indent wrapped attributes to after N characters (Supported by Marko Beautifier)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "wrap_attributes_indent_size": 4
    }
}
```

#####  [Preserve newlines](#preserve-newlines) 

**Namespace**: `html`

**Key**: `preserve_newlines`

**Default**: `true`

**Type**: `boolean`

**Supported Beautifiers**:  [`Marko Beautifier`](#marko-beautifier) 

**Description**:

Preserve line-breaks (Supported by Marko Beautifier)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "preserve_newlines": true
    }
}
```

#####  [Max preserve newlines](#max-preserve-newlines) 

**Namespace**: `html`

**Key**: `max_preserve_newlines`

**Default**: `10`

**Type**: `integer`

**Supported Beautifiers**:  [`Marko Beautifier`](#marko-beautifier) 

**Description**:

Number of line-breaks to be preserved in one chunk (Supported by Marko Beautifier)

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

**Type**: `array`

**Supported Beautifiers**:  [`Marko Beautifier`](#marko-beautifier) 

**Description**:

(Deprecated for most scenarios - consider inline or content_unformatted) List of tags that should not be reformatted at all.  NOTE: Set this to [] to get improved beautifier behavior. (Supported by Marko Beautifier)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "unformatted": []
    }
}
```

#####  [Inline](#inline) 

**Namespace**: `html`

**Key**: `inline`

**Default**: `a,abbr,area,audio,b,bdi,bdo,br,button,canvas,cite,code,data,datalist,del,dfn,em,embed,i,iframe,img,input,ins,kbd,keygen,label,map,mark,math,meter,noscript,object,output,progress,q,ruby,s,samp,select,small,span,strong,sub,sup,svg,template,textarea,time,u,var,video,wbr,text,acronym,address,big,dt,ins,strike,tt`

**Type**: `array`

**Supported Beautifiers**:  [`Marko Beautifier`](#marko-beautifier) 

**Description**:

List of inline tags. Behaves similar to text content, will not wrap without whitespace. (Supported by Marko Beautifier)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "inline": [
            "a",
            "abbr",
            "area",
            "audio",
            "b",
            "bdi",
            "bdo",
            "br",
            "button",
            "canvas",
            "cite",
            "code",
            "data",
            "datalist",
            "del",
            "dfn",
            "em",
            "embed",
            "i",
            "iframe",
            "img",
            "input",
            "ins",
            "kbd",
            "keygen",
            "label",
            "map",
            "mark",
            "math",
            "meter",
            "noscript",
            "object",
            "output",
            "progress",
            "q",
            "ruby",
            "s",
            "samp",
            "select",
            "small",
            "span",
            "strong",
            "sub",
            "sup",
            "svg",
            "template",
            "textarea",
            "time",
            "u",
            "var",
            "video",
            "wbr",
            "text",
            "acronym",
            "address",
            "big",
            "dt",
            "ins",
            "strike",
            "tt"
        ]
    }
}
```

#####  [Content unformatted](#content-unformatted) 

**Namespace**: `html`

**Key**: `content_unformatted`

**Default**: `pre,textarea`

**Type**: `array`

**Supported Beautifiers**:  [`Marko Beautifier`](#marko-beautifier) 

**Description**:

List of tags whose contents should not be reformatted. Attributes will be reformatted, inner html will not. (Supported by Marko Beautifier)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "content_unformatted": [
            "pre",
            "textarea"
        ]
    }
}
```

#####  [End with newline](#end-with-newline) 

**Namespace**: `html`

**Key**: `end_with_newline`

**Type**: `boolean`

**Supported Beautifiers**:  [`Marko Beautifier`](#marko-beautifier) 

**Description**:

End output with newline (Supported by Marko Beautifier)

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

**Supported Beautifiers**:  [`Marko Beautifier`](#marko-beautifier) 

**Description**:

List of tags (defaults to [head,body,/html] that should have an extra newline before them. (Supported by Marko Beautifier)

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


### Nginx Beautify

#####  [Indent size](#indent-size) 

**Namespace**: `nginx`

**Key**: `indent_size`

**Default**: `4`

**Type**: `integer`

**Supported Beautifiers**:  [`Nginx Beautify`](#nginx-beautify) 

**Description**:

Indentation size/length (Supported by Nginx Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "nginx": {
        "indent_size": 4
    }
}
```

#####  [Indent char](#indent-char) 

**Namespace**: `nginx`

**Key**: `indent_char`

**Default**: ` `

**Type**: `string`

**Supported Beautifiers**:  [`Nginx Beautify`](#nginx-beautify) 

**Description**:

Indentation character (Supported by Nginx Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "nginx": {
        "indent_char": " "
    }
}
```

#####  [Indent with tabs](#indent-with-tabs) 

**Namespace**: `nginx`

**Key**: `indent_with_tabs`

**Type**: `boolean`

**Supported Beautifiers**:  [`Nginx Beautify`](#nginx-beautify) 

**Description**:

Indentation uses tabs, overrides `Indent Size` and `Indent Char` (Supported by Nginx Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "nginx": {
        "indent_with_tabs": false
    }
}
```

#####  [Don&#x27;t join curly brackets](#don't-join-curly-brackets) 

**Namespace**: `nginx`

**Key**: `dontJoinCurlyBracet`

**Default**: `true`

**Type**: `boolean`

**Supported Beautifiers**:  [`Nginx Beautify`](#nginx-beautify) 

**Description**:

 (Supported by Nginx Beautify)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "nginx": {
        "dontJoinCurlyBracet": true
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

Absolute path to the `php-cs-fixer` CLI executable (Supported by PHP-CS-Fixer)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "php": {
        "cs_fixer_path": ""
    }
}
```

#####  [PHP-CS-Fixer Version](#php-cs-fixer-version) 

**Namespace**: `php`

**Key**: `cs_fixer_version`

**Default**: `2`

**Type**: `integer`

**Enum**:  `1`  `2` 

**Supported Beautifiers**:  [`PHP-CS-Fixer`](#php-cs-fixer) 

**Description**:

 (Supported by PHP-CS-Fixer)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "php": {
        "cs_fixer_version": 2
    }
}
```

#####  [PHP-CS-Fixer Config File](#php-cs-fixer-config-file) 

**Namespace**: `php`

**Key**: `cs_fixer_config_file`

**Type**: `string`

**Supported Beautifiers**:  [`PHP-CS-Fixer`](#php-cs-fixer) 

**Description**:

Path to php-cs-fixer config file. Will use local `.php_cs` or `.php_cs.dist` if found in the working directory or project root. (Supported by PHP-CS-Fixer)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "php": {
        "cs_fixer_config_file": ""
    }
}
```

#####  [Fixers](#fixers) 

**Namespace**: `php`

**Key**: `fixers`

**Type**: `string`

**Supported Beautifiers**:  [`PHP-CS-Fixer`](#php-cs-fixer) 

**Description**:

Add fixer(s). i.e. linefeed,-short_tag,indentation (PHP-CS-Fixer 1 only) (Supported by PHP-CS-Fixer)

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

By default, all PSR-2 fixers and some additional ones are run. (PHP-CS-Fixer 1 only) (Supported by PHP-CS-Fixer)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "php": {
        "level": ""
    }
}
```

#####  [Rules](#rules) 

**Namespace**: `php`

**Key**: `rules`

**Type**: `string`

**Supported Beautifiers**:  [`PHP-CS-Fixer`](#php-cs-fixer) 

**Description**:

Add rule(s). i.e. line_ending,-full_opening_tag,@PSR2 (PHP-CS-Fixer 2 only) (Supported by PHP-CS-Fixer)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "php": {
        "rules": ""
    }
}
```

#####  [Allow risky rules](#allow-risky-rules) 

**Namespace**: `php`

**Key**: `allow_risky`

**Default**: `no`

**Type**: `string`

**Enum**:  `no`  `yes` 

**Supported Beautifiers**:  [`PHP-CS-Fixer`](#php-cs-fixer) 

**Description**:

Allow risky rules to be applied (PHP-CS-Fixer 2 only) (Supported by PHP-CS-Fixer)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "php": {
        "allow_risky": "no"
    }
}
```


### PHPCBF

#####  [PHPCBF Path](#phpcbf-path) 

**Namespace**: `php`

**Key**: `phpcbf_path`

**Type**: `string`

**Supported Beautifiers**:  [`PHPCBF`](#phpcbf) 

**Description**:

Path to the `phpcbf` CLI executable (Supported by PHPCBF)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "php": {
        "phpcbf_path": ""
    }
}
```

#####  [PHPCBF Version](#phpcbf-version) 

**Namespace**: `php`

**Key**: `phpcbf_version`

**Default**: `2`

**Type**: `integer`

**Enum**:  `1`  `2`  `3` 

**Supported Beautifiers**:  [`PHPCBF`](#phpcbf) 

**Description**:

 (Supported by PHPCBF)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "php": {
        "phpcbf_version": 2
    }
}
```

#####  [PHPCBF Standard](#phpcbf-standard) 

**Namespace**: `php`

**Key**: `standard`

**Default**: `PEAR`

**Type**: `string`

**Supported Beautifiers**:  [`PHPCBF`](#phpcbf) 

**Description**:

Standard name Squiz, PSR2, PSR1, PHPCS, PEAR, Zend, MySource... or path to CS rules. Will use local `phpcs.xml`, `phpcs.xml.dist`, `phpcs.ruleset.xml` or `ruleset.xml` if found in the project root. (Supported by PHPCBF)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "php": {
        "standard": "PEAR"
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


### Prettier

#####  [Indent size](#indent-size) 

**Namespace**: `js`

**Key**: `indent_size`

**Default**: `4`

**Type**: `integer`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Prettier`](#prettier)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Indentation size/length (Supported by JS Beautify, Prettier, Pretty Diff)

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

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Prettier`](#prettier)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Indentation character (Supported by JS Beautify, Prettier, Pretty Diff)

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

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Prettier`](#prettier)  [`Pretty Diff`](#pretty-diff) 

**Description**:

Indentation uses tabs, overrides `Indent Size` and `Indent Char` (Supported by JS Beautify, Prettier, Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "indent_with_tabs": false
    }
}
```

#####  [Object curly spacing](#object-curly-spacing) 

**Namespace**: `js`

**Key**: `object_curly_spacing`

**Type**: `boolean`

**Supported Beautifiers**:  [`JS Beautify`](#js-beautify)  [`Prettier`](#prettier) 

**Description**:

Insert spaces between brackets in object literals (Supported by JS Beautify, Prettier)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "object_curly_spacing": false
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

**Default**: `true`

**Type**: `boolean`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Add a newline between CSS rules (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "css": {
        "newline_between_rules": true
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

If in CSS values leading 0s immediately preceding a decimal should be removed or prevented. (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "css": {
        "no_lead_zero": false
    }
}
```

#####  [Indent with tabs](#indent-with-tabs) 

**Namespace**: `js`

**Key**: `indent_with_tabs`

**Type**: `boolean`

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Indentation uses tabs, overrides `Indent Size` and `Indent Char` (Supported by Pretty Diff)

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

**Supported Beautifiers**:  [`Pretty Diff`](#pretty-diff) 

**Description**:

Add padding spaces within paren, ie. f( a, b ) (Supported by Pretty Diff)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "space_in_paren": false
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


### VHDL Beautifier

#####  [Emacs script path](#emacs-script-path) 

**Namespace**: `vhdl`

**Key**: `emacs_script_path`

**Type**: `string`

**Supported Beautifiers**:  [`VHDL Beautifier`](#vhdl-beautifier) 

**Description**:

Path to the emacs script (Supported by VHDL Beautifier)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "vhdl": {
        "emacs_script_path": ""
    }
}
```


### Vue Beautifier

#####  [Indent size](#indent-size) 

**Namespace**: `html`

**Key**: `indent_size`

**Default**: `4`

**Type**: `integer`

**Supported Beautifiers**:  [`Vue Beautifier`](#vue-beautifier) 

**Description**:

Indentation size/length (Supported by Vue Beautifier)

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

**Supported Beautifiers**:  [`Vue Beautifier`](#vue-beautifier) 

**Description**:

Indentation character (Supported by Vue Beautifier)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "indent_char": " "
    }
}
```

#####  [Indent level](#indent-level) 

**Namespace**: `js`

**Key**: `indent_level`

**Type**: `integer`

**Supported Beautifiers**:  [`Vue Beautifier`](#vue-beautifier) 

**Description**:

Initial indentation level (Supported by Vue Beautifier)

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

**Supported Beautifiers**:  [`Vue Beautifier`](#vue-beautifier) 

**Description**:

Indentation uses tabs, overrides `Indent Size` and `Indent Char` (Supported by Vue Beautifier)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "indent_with_tabs": false
    }
}
```

#####  [Preserve newlines](#preserve-newlines) 

**Namespace**: `html`

**Key**: `preserve_newlines`

**Default**: `true`

**Type**: `boolean`

**Supported Beautifiers**:  [`Vue Beautifier`](#vue-beautifier) 

**Description**:

Preserve line-breaks (Supported by Vue Beautifier)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "preserve_newlines": true
    }
}
```

#####  [Max preserve newlines](#max-preserve-newlines) 

**Namespace**: `html`

**Key**: `max_preserve_newlines`

**Default**: `10`

**Type**: `integer`

**Supported Beautifiers**:  [`Vue Beautifier`](#vue-beautifier) 

**Description**:

Number of line-breaks to be preserved in one chunk (Supported by Vue Beautifier)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "max_preserve_newlines": 10
    }
}
```

#####  [Space in paren](#space-in-paren) 

**Namespace**: `js`

**Key**: `space_in_paren`

**Type**: `boolean`

**Supported Beautifiers**:  [`Vue Beautifier`](#vue-beautifier) 

**Description**:

Add padding spaces within paren, ie. f( a, b ) (Supported by Vue Beautifier)

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

**Supported Beautifiers**:  [`Vue Beautifier`](#vue-beautifier) 

**Description**:

Enable jslint-stricter mode (Supported by Vue Beautifier)

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

**Supported Beautifiers**:  [`Vue Beautifier`](#vue-beautifier) 

**Description**:

Add a space before an anonymous function's parens, ie. function () (Supported by Vue Beautifier)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "space_after_anon_function": false
    }
}
```

#####  [Brace style](#brace-style) 

**Namespace**: `html`

**Key**: `brace_style`

**Default**: `collapse`

**Type**: `string`

**Enum**:  `collapse`  `collapse-preserve-inline`  `expand`  `end-expand`  `none` 

**Supported Beautifiers**:  [`Vue Beautifier`](#vue-beautifier) 

**Description**:

[collapse|expand|end-expand|none] (Supported by Vue Beautifier)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "brace_style": "collapse"
    }
}
```

#####  [Break chained methods](#break-chained-methods) 

**Namespace**: `js`

**Key**: `break_chained_methods`

**Type**: `boolean`

**Supported Beautifiers**:  [`Vue Beautifier`](#vue-beautifier) 

**Description**:

Break chained method calls across subsequent lines (Supported by Vue Beautifier)

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

**Supported Beautifiers**:  [`Vue Beautifier`](#vue-beautifier) 

**Description**:

Preserve array indentation (Supported by Vue Beautifier)

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

**Supported Beautifiers**:  [`Vue Beautifier`](#vue-beautifier) 

**Description**:

 (Supported by Vue Beautifier)

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

**Supported Beautifiers**:  [`Vue Beautifier`](#vue-beautifier) 

**Description**:

 (Supported by Vue Beautifier)

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

**Supported Beautifiers**:  [`Vue Beautifier`](#vue-beautifier) 

**Description**:

 (Supported by Vue Beautifier)

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

**Supported Beautifiers**:  [`Vue Beautifier`](#vue-beautifier) 

**Description**:

Decode printable characters encoded in xNN notation (Supported by Vue Beautifier)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "unescape_strings": false
    }
}
```

#####  [Wrap line length](#wrap-line-length) 

**Namespace**: `html`

**Key**: `wrap_line_length`

**Default**: `250`

**Type**: `integer`

**Supported Beautifiers**:  [`Vue Beautifier`](#vue-beautifier) 

**Description**:

Maximum characters per line (0 disables) (Supported by Vue Beautifier)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "wrap_line_length": 250
    }
}
```

#####  [End with newline](#end-with-newline) 

**Namespace**: `html`

**Key**: `end_with_newline`

**Type**: `boolean`

**Supported Beautifiers**:  [`Vue Beautifier`](#vue-beautifier) 

**Description**:

End output with newline (Supported by Vue Beautifier)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "end_with_newline": false
    }
}
```

#####  [End with comma](#end-with-comma) 

**Namespace**: `js`

**Key**: `end_with_comma`

**Type**: `boolean`

**Supported Beautifiers**:  [`Vue Beautifier`](#vue-beautifier) 

**Description**:

If a terminating comma should be inserted into arrays, object literals, and destructured objects. (Supported by Vue Beautifier)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "end_with_comma": false
    }
}
```

#####  [End of line](#end-of-line) 

**Namespace**: `js`

**Key**: `end_of_line`

**Default**: `System Default`

**Type**: `string`

**Enum**:  `CRLF`  `LF`  `System Default` 

**Supported Beautifiers**:  [`Vue Beautifier`](#vue-beautifier) 

**Description**:

Override EOL from line-ending-selector (Supported by Vue Beautifier)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "end_of_line": "System Default"
    }
}
```

#####  [Object curly spacing](#object-curly-spacing) 

**Namespace**: `js`

**Key**: `object_curly_spacing`

**Type**: `boolean`

**Supported Beautifiers**:  [`Vue Beautifier`](#vue-beautifier) 

**Description**:

Insert spaces between brackets in object literals (Supported by Vue Beautifier)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "object_curly_spacing": false
    }
}
```

#####  [Indent inner html](#indent-inner-html) 

**Namespace**: `html`

**Key**: `indent_inner_html`

**Type**: `boolean`

**Supported Beautifiers**:  [`Vue Beautifier`](#vue-beautifier) 

**Description**:

Indent <head> and <body> sections. (Supported by Vue Beautifier)

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

**Supported Beautifiers**:  [`Vue Beautifier`](#vue-beautifier) 

**Description**:

[keep|separate|normal] (Supported by Vue Beautifier)

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

**Enum**:  `auto`  `aligned-multiple`  `force`  `force-aligned`  `force-expand-multiline` 

**Supported Beautifiers**:  [`Vue Beautifier`](#vue-beautifier) 

**Description**:

Wrap attributes to new lines [auto|aligned-multiple|force|force-aligned|force-expand-multiline] (Supported by Vue Beautifier)

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

**Supported Beautifiers**:  [`Vue Beautifier`](#vue-beautifier) 

**Description**:

Indent wrapped attributes to after N characters (Supported by Vue Beautifier)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "wrap_attributes_indent_size": 4
    }
}
```

#####  [Unformatted](#unformatted) 

**Namespace**: `html`

**Key**: `unformatted`

**Type**: `array`

**Supported Beautifiers**:  [`Vue Beautifier`](#vue-beautifier) 

**Description**:

(Deprecated for most scenarios - consider inline or content_unformatted) List of tags that should not be reformatted at all.  NOTE: Set this to [] to get improved beautifier behavior. (Supported by Vue Beautifier)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "unformatted": []
    }
}
```

#####  [Inline](#inline) 

**Namespace**: `html`

**Key**: `inline`

**Default**: `a,abbr,area,audio,b,bdi,bdo,br,button,canvas,cite,code,data,datalist,del,dfn,em,embed,i,iframe,img,input,ins,kbd,keygen,label,map,mark,math,meter,noscript,object,output,progress,q,ruby,s,samp,select,small,span,strong,sub,sup,svg,template,textarea,time,u,var,video,wbr,text,acronym,address,big,dt,ins,strike,tt`

**Type**: `array`

**Supported Beautifiers**:  [`Vue Beautifier`](#vue-beautifier) 

**Description**:

List of inline tags. Behaves similar to text content, will not wrap without whitespace. (Supported by Vue Beautifier)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "inline": [
            "a",
            "abbr",
            "area",
            "audio",
            "b",
            "bdi",
            "bdo",
            "br",
            "button",
            "canvas",
            "cite",
            "code",
            "data",
            "datalist",
            "del",
            "dfn",
            "em",
            "embed",
            "i",
            "iframe",
            "img",
            "input",
            "ins",
            "kbd",
            "keygen",
            "label",
            "map",
            "mark",
            "math",
            "meter",
            "noscript",
            "object",
            "output",
            "progress",
            "q",
            "ruby",
            "s",
            "samp",
            "select",
            "small",
            "span",
            "strong",
            "sub",
            "sup",
            "svg",
            "template",
            "textarea",
            "time",
            "u",
            "var",
            "video",
            "wbr",
            "text",
            "acronym",
            "address",
            "big",
            "dt",
            "ins",
            "strike",
            "tt"
        ]
    }
}
```

#####  [Content unformatted](#content-unformatted) 

**Namespace**: `html`

**Key**: `content_unformatted`

**Default**: `pre,textarea`

**Type**: `array`

**Supported Beautifiers**:  [`Vue Beautifier`](#vue-beautifier) 

**Description**:

List of tags whose contents should not be reformatted. Attributes will be reformatted, inner html will not. (Supported by Vue Beautifier)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "html": {
        "content_unformatted": [
            "pre",
            "textarea"
        ]
    }
}
```

#####  [Extra liners](#extra-liners) 

**Namespace**: `html`

**Key**: `extra_liners`

**Default**: `head,body,/html`

**Type**: `array`

**Supported Beautifiers**:  [`Vue Beautifier`](#vue-beautifier) 

**Description**:

List of tags (defaults to [head,body,/html] that should have an extra newline before them. (Supported by Vue Beautifier)

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


### align-yaml

#####  [Padding](#padding) 

**Namespace**: `yaml`

**Key**: `padding`

**Type**: `integer`

**Supported Beautifiers**:  [`align-yaml`](#align-yaml) 

**Description**:

The amount of padding to add next to each line. (Supported by align-yaml)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "yaml": {
        "padding": 0
    }
}
```


### autopep8

#####  [Max line length](#max-line-length) 

**Namespace**: `python`

**Key**: `max_line_length`

**Default**: `79`

**Type**: `integer`

**Supported Beautifiers**:  [`autopep8`](#autopep8)  [`pybeautifier`](#pybeautifier) 

**Description**:

set maximum allowed line length (Supported by autopep8, pybeautifier)

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

**Supported Beautifiers**:  [`autopep8`](#autopep8)  [`pybeautifier`](#pybeautifier) 

**Description**:

Indentation size/length (Supported by autopep8, pybeautifier)

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

**Supported Beautifiers**:  [`autopep8`](#autopep8)  [`pybeautifier`](#pybeautifier) 

**Description**:

do not fix these errors/warnings (Supported by autopep8, pybeautifier)

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

#####  [Formatter](#formatter) 

**Namespace**: `python`

**Key**: `formatter`

**Default**: `autopep8`

**Type**: `string`

**Enum**:  `autopep8`  `yapf` 

**Supported Beautifiers**:  [`autopep8`](#autopep8)  [`pybeautifier`](#pybeautifier) 

**Description**:

formatter used by pybeautifier (Supported by autopep8, pybeautifier)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "python": {
        "formatter": "autopep8"
    }
}
```

#####  [Style config](#style-config) 

**Namespace**: `python`

**Key**: `style_config`

**Default**: `pep8`

**Type**: `string`

**Supported Beautifiers**:  [`autopep8`](#autopep8)  [`pybeautifier`](#pybeautifier) 

**Description**:

formatting style used by yapf (Supported by autopep8, pybeautifier)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "python": {
        "style_config": "pep8"
    }
}
```

#####  [Sort imports](#sort-imports) 

**Namespace**: `python`

**Key**: `sort_imports`

**Type**: `boolean`

**Supported Beautifiers**:  [`autopep8`](#autopep8)  [`pybeautifier`](#pybeautifier) 

**Description**:

sort imports (requires isort installed) (Supported by autopep8, pybeautifier)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "python": {
        "sort_imports": false
    }
}
```

#####  [Multi line output](#multi-line-output) 

**Namespace**: `python`

**Key**: `multi_line_output`

**Default**: `Hanging Grid Grouped`

**Type**: `string`

**Enum**:  `Grid`  `Vertical`  `Hanging Indent`  `Vertical Hanging Indent`  `Hanging Grid`  `Hanging Grid Grouped`  `NOQA` 

**Supported Beautifiers**:  [`autopep8`](#autopep8)  [`pybeautifier`](#pybeautifier) 

**Description**:

defines how from imports wrap (requires isort installed) (Supported by autopep8, pybeautifier)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "python": {
        "multi_line_output": "Hanging Grid Grouped"
    }
}
```


### beautysh

#####  [Indent size](#indent-size) 

**Namespace**: `bash`

**Key**: `indent_size`

**Default**: `4`

**Type**: `integer`

**Supported Beautifiers**:  [`beautysh`](#beautysh) 

**Description**:

Indentation size/length (Supported by beautysh)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "bash": {
        "indent_size": 4
    }
}
```

#####  [Indent with tabs](#indent-with-tabs) 

**Namespace**: `bash`

**Key**: `indent_with_tabs`

**Type**: `boolean`

**Supported Beautifiers**:  [`beautysh`](#beautysh) 

**Description**:

Indentation uses tabs, overrides `Indent Size` and `Indent Char` (Supported by beautysh)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "bash": {
        "indent_with_tabs": false
    }
}
```


### clang-format

#####  [Config Path](#config-path) 

**Namespace**: `glsl`

**Key**: `configPath`

**Type**: `string`

**Supported Beautifiers**:  [`clang-format`](#clang-format) 

**Description**:

Path to clang-format config file. i.e. clang-format.cfg (Supported by clang-format)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "glsl": {
        "configPath": ""
    }
}
```


### coffee-fmt

#####  [Indent size](#indent-size) 

**Namespace**: `js`

**Key**: `indent_size`

**Default**: `4`

**Type**: `integer`

**Supported Beautifiers**:  [`coffee-fmt`](#coffee-fmt) 

**Description**:

Indentation size/length (Supported by coffee-fmt)

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

**Supported Beautifiers**:  [`coffee-fmt`](#coffee-fmt) 

**Description**:

Indentation character (Supported by coffee-fmt)

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

**Supported Beautifiers**:  [`coffee-fmt`](#coffee-fmt) 

**Description**:

Indentation uses tabs, overrides `Indent Size` and `Indent Char` (Supported by coffee-fmt)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "js": {
        "indent_with_tabs": false
    }
}
```


### formatR

#####  [Indent size](#indent-size) 

**Namespace**: `r`

**Key**: `indent_size`

**Default**: `4`

**Type**: `integer`

**Supported Beautifiers**:  [`formatR`](#formatr) 

**Description**:

Indentation size/length (Supported by formatR)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "r": {
        "indent_size": 4
    }
}
```


### pybeautifier

#####  [Max line length](#max-line-length) 

**Namespace**: `python`

**Key**: `max_line_length`

**Default**: `79`

**Type**: `integer`

**Supported Beautifiers**:  [`autopep8`](#autopep8)  [`pybeautifier`](#pybeautifier) 

**Description**:

set maximum allowed line length (Supported by autopep8, pybeautifier)

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

**Supported Beautifiers**:  [`autopep8`](#autopep8)  [`pybeautifier`](#pybeautifier) 

**Description**:

Indentation size/length (Supported by autopep8, pybeautifier)

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

**Supported Beautifiers**:  [`autopep8`](#autopep8)  [`pybeautifier`](#pybeautifier) 

**Description**:

do not fix these errors/warnings (Supported by autopep8, pybeautifier)

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

#####  [Formatter](#formatter) 

**Namespace**: `python`

**Key**: `formatter`

**Default**: `autopep8`

**Type**: `string`

**Enum**:  `autopep8`  `yapf` 

**Supported Beautifiers**:  [`autopep8`](#autopep8)  [`pybeautifier`](#pybeautifier) 

**Description**:

formatter used by pybeautifier (Supported by autopep8, pybeautifier)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "python": {
        "formatter": "autopep8"
    }
}
```

#####  [Style config](#style-config) 

**Namespace**: `python`

**Key**: `style_config`

**Default**: `pep8`

**Type**: `string`

**Supported Beautifiers**:  [`autopep8`](#autopep8)  [`pybeautifier`](#pybeautifier) 

**Description**:

formatting style used by yapf (Supported by autopep8, pybeautifier)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "python": {
        "style_config": "pep8"
    }
}
```

#####  [Sort imports](#sort-imports) 

**Namespace**: `python`

**Key**: `sort_imports`

**Type**: `boolean`

**Supported Beautifiers**:  [`autopep8`](#autopep8)  [`pybeautifier`](#pybeautifier) 

**Description**:

sort imports (requires isort installed) (Supported by autopep8, pybeautifier)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "python": {
        "sort_imports": false
    }
}
```

#####  [Multi line output](#multi-line-output) 

**Namespace**: `python`

**Key**: `multi_line_output`

**Default**: `Hanging Grid Grouped`

**Type**: `string`

**Enum**:  `Grid`  `Vertical`  `Hanging Indent`  `Vertical Hanging Indent`  `Hanging Grid`  `Hanging Grid Grouped`  `NOQA` 

**Supported Beautifiers**:  [`autopep8`](#autopep8)  [`pybeautifier`](#pybeautifier) 

**Description**:

defines how from imports wrap (requires isort installed) (Supported by autopep8, pybeautifier)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "python": {
        "multi_line_output": "Hanging Grid Grouped"
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

#####  [Reindent](#reindent) 

**Namespace**: `sql`

**Key**: `reindent`

**Default**: `true`

**Type**: `boolean`

**Supported Beautifiers**:  [`sqlformat`](#sqlformat) 

**Description**:

Change indentations of the statements. Uncheck this option to preserve indentation (Supported by sqlformat)

**Example `.jsbeautifyrc` Configuration**

```json
{
    "sql": {
        "reindent": true
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



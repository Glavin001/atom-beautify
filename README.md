# :lipstick: [atom-beautify](https://github.com/Glavin001/atom-beautify)

| Mac OS <img src="https://cloud.githubusercontent.com/assets/1885333/17059766/2530c9d8-4ffd-11e6-9529-3fa47dbff616.png" width="50px"> and <img src="https://cloud.githubusercontent.com/assets/1885333/17059750/11c4474e-4ffd-11e6-89e1-2486ca5b3234.png" width="100px"> | <img src="https://cloud.githubusercontent.com/assets/1885333/17059763/206a7d4a-4ffd-11e6-859e-7856902fb300.png" width="100px"> |
| --- | --- |
| [![Build Status](https://travis-ci.org/Glavin001/atom-beautify.svg?branch=master)](https://travis-ci.org/Glavin001/atom-beautify) | [![Build status](https://ci.appveyor.com/api/projects/status/himnq7tjxl2fdc8u?svg=true)](https://ci.appveyor.com/project/Glavin001/atom-beautify) |


[![Gitter chat](https://img.shields.io/badge/gitter-Glavin001%2Fatom--beautify-1dce73.svg)](https://gitter.im/Glavin001/atom-beautify)
[![Paypal Donations](https://www.paypalobjects.com/en_US/i/btn/btn_donate_SM.gif)](https://www.paypal.com/cgi-bin/webscr?cmd=_donations&business=X2RK5DKN6YXPJ&lc=CA&item_name=Atom%2dBeautify&item_number=atom%2dbeautify&currency_code=CAD&bn=PP%2dDonationsBF%3abtn_donate_LG%2egif%3aNonHosted)

[![Throughput Graph](https://graphs.waffle.io/Glavin001/atom-beautify/throughput.svg)](https://waffle.io/Glavin001/atom-beautify/metrics)

> Beautify HTML, CSS, JavaScript, PHP, Python, Ruby, Java, C, C++, C#, Objective-C, CoffeeScript, TypeScript, Coldfusion, SQL, and more in Atom

| Before | After |
| --- | ---- |
| Original HTML | Beautified HTML |
| ![image](https://cloud.githubusercontent.com/assets/1885333/16542727/db52adc6-408a-11e6-824e-04aed06bd2f7.png) | ![image](https://cloud.githubusercontent.com/assets/1885333/16542728/dcac3700-408a-11e6-8e35-9c8fc4432edc.png) |

## Table of Contents

- [Installation](#installation)
- [Language Support](#language-support)
- [Usage](#usage)
  - [Selection of Code](#selection-of-code)
  - [Beautify On Save](#beautify-on-save)
  - [Keyboard Shortcut](#keyboard-shortcut)
    - [Custom Keyboard Shortcuts](#custom-keyboard-shortcuts)
- [Configuration](#configuration)
  - [Simple](#simple)
  - [Nested](#nested-recommended)
- [Troubleshooting](#troubleshooting)
- [Contributing](#contributing)

## Installation

Atom Package: https://atom.io/packages/atom-beautify

```bash
apm install atom-beautify
```

Or Settings/Preferences ➔ Packages ➔ Search for `atom-beautify`

### Important Notice: Analytics

By default `Anonymous Analytics` is enabled.
If you do not wish to have usage data sent to Google Analytics then please disable `Anonymous Analytics` option before using Atom-Beautify.
See [`Anonymous Analytics` section of docs](docs/options.md#anonymous-analytics) for details.
Thank you.

### Next Version: [Unibeautify](https://github.com/Unibeautify/unibeautify)

Atom-Beautify is going to be completely rewritten with [Unibeautify](https://github.com/Unibeautify/unibeautify) at its core!
See [`unibeautify` branch](../../tree/unibeautify) for work in progress and [Issue #1174](https://github.com/Glavin001/atom-beautify/issues/1174).


## Language Support

See [all supported options in the documentation at  `docs/options.md`](docs/options.md).

| Language | Grammars | File Extensions | Supported Beautifiers |
| --- | --- | --- | ---- |
| Apex | `Apex` |`.cls`, `.trigger` | [`Uncrustify`](https://github.com/uncrustify/uncrustify) (Default) |
| Arduino | `Arduino` |`.ino`, `.pde` | [`Uncrustify`](https://github.com/uncrustify/uncrustify) (Default) |
| C | `C`, `opencl` |`.h`, `.c`, `.cl` | [`Uncrustify`](https://github.com/uncrustify/uncrustify) (Default), [`clang-format`](https://clang.llvm.org/docs/ClangFormat.html) |
| Coldfusion | `html` |`.cfm`, `.cfml`, `.cfc` | [`Pretty Diff`](https://github.com/prettydiff/prettydiff) (Default) |
| Clojure | `Clojure` |`.clj`, `.cljs`, `.edn` | [`cljfmt`](https://github.com/snoe/node-cljfmt) (Default) |
| CoffeeScript | `CoffeeScript` |`.coffee` | [`Coffee Formatter`](https://github.com/Glavin001/Coffee-Formatter), [`coffee-fmt`](https://github.com/sterpe/coffee-fmt) (Default) |
| C++ | `C++` |`.h`, `.hh`, `.cc`, `.cpp`, `.cxx`, `.C`, `.c++`, `.hpp`, `.hxx`, `.h++` | [`Uncrustify`](https://github.com/uncrustify/uncrustify) (Default), [`clang-format`](https://clang.llvm.org/docs/ClangFormat.html) |
| Crystal | `Crystal` |`.cr` | [`Crystal`](http://crystal-lang.org) (Default) |
| C# | `C#` |`.cs` | [`Uncrustify`](https://github.com/uncrustify/uncrustify) (Default) |
| CSS | `CSS` |`.css` | [`CSScomb`](https://github.com/csscomb/csscomb.js), [`JS Beautify`](https://github.com/beautify-web/js-beautify) (Default), [`Pretty Diff`](https://github.com/prettydiff/prettydiff), [`SassConvert`](http://sass-lang.com/documentation/file.SASS_REFERENCE.html#syntax) |
| CSV | `CSV` |`.csv` | [`Pretty Diff`](https://github.com/prettydiff/prettydiff) (Default) |
| D | `D` |`.d` | [`Uncrustify`](https://github.com/uncrustify/uncrustify) (Default), [`dfmt`](https://github.com/Hackerpilot/dfmt) |
| EJS | `JavaScript Template`, `HTML (Angular)` | | [`Pretty Diff`](https://github.com/prettydiff/prettydiff) (Default) |
| Elm | `Elm` |`.elm` | [`elm-format`](https://github.com/avh4/elm-format) (Default) |
| ERB | `HTML (Ruby - ERB)`, `HTML (Rails)` |`.erb` | [`HTML Beautifier`](https://github.com/threedaymonk/htmlbeautifier), [`Pretty Diff`](https://github.com/prettydiff/prettydiff) (Default) |
| Erlang | `Erlang` |`.erl` | [`erl_tidy`](http://erlang.org/doc/man/erl_tidy.html) (Default) |
| Fortran | `Fortran - Modern` |`.f90`, `.F90` | [`Fortran Beautifier`](https://github.com/Glavin001/atom-beautify/blob/master/src/beautifiers/fortran-beautifier/emacs-fortran-formating-script.lisp) (Default) |
| gherkin | `Gherkin` |`.feature` | [`Gherkin formatter`](https://github.com/Glavin001/atom-beautify/blob/master/src/beautifiers/gherkin.coffee) (Default) |
| Go | `Go` |`.go` | [`gofmt`](https://golang.org/cmd/gofmt/) (Default) |
| Handlebars | `Handlebars`, `HTML (Handlebars)` |`.hbs`, `.handlebars` | [`JS Beautify`](https://github.com/beautify-web/js-beautify) (Default), [`Pretty Diff`](https://github.com/prettydiff/prettydiff) |
| Haskell | `Haskell` |`.hs` | [`stylish-haskell`](https://github.com/jaspervdj/stylish-haskell) (Default) |
| HTML | `HTML` |`.html` | [`JS Beautify`](https://github.com/beautify-web/js-beautify) (Default), [`Pretty Diff`](https://github.com/prettydiff/prettydiff) |
| Jade | `Jade`, `Pug` |`.jade`, `.pug` | [`Pug Beautify`](https://github.com/vingorius/pug-beautify) (Default) |
| Java | `Java` |`.java` | [`Uncrustify`](https://github.com/uncrustify/uncrustify) (Default) |
| JavaScript | `JavaScript` |`.js` | [`JS Beautify`](https://github.com/beautify-web/js-beautify) (Default), [`JSCS Fixer`](https://github.com/jscs-dev/node-jscs/), [`Pretty Diff`](https://github.com/prettydiff/prettydiff) |
| JSON | `JSON` |`.json` | [`JS Beautify`](https://github.com/beautify-web/js-beautify) (Default), [`Pretty Diff`](https://github.com/prettydiff/prettydiff) |
| JSX | `JSX`, `JavaScript (JSX)`, `Babel ES6 JavaScript` |`.jsx`, `.js` | [`Pretty Diff`](https://github.com/prettydiff/prettydiff) (Default) |
| LaTeX | `LaTeX` |`.tex` | [`Latex Beautify`](https://github.com/cmhughes/latexindent.pl) (Default) |
| LESS | `LESS` |`.less` | [`CSScomb`](https://github.com/csscomb/csscomb.js), [`Pretty Diff`](https://github.com/prettydiff/prettydiff) (Default) |
| Lua | `Lua` |`.lua` | [`Lua beautifier`](https://github.com/Glavin001/atom-beautify/blob/master/src/beautifiers/lua-beautifier/beautifier.pl) (Default) |
| Markdown | `GitHub Markdown` |`.markdown`, `.md` | [`Remark`](https://github.com/wooorm/remark), [`Tidy Markdown`](https://github.com/slang800/tidy-markdown) (Default) |
| Marko | `Marko` |`.marko` | [`Marko Beautifier`](https://github.com/marko-js/marko-prettyprint) (Default) |
| Mustache | `HTML (Mustache)` |`.mustache` | [`JS Beautify`](https://github.com/beautify-web/js-beautify) (Default) |
| Nunjucks | `Nunjucks`, `Nunjucks Templates`, `HTML (Nunjucks Templates)` |`.njk`, `.nunjucks` | [`Pretty Diff`](https://github.com/prettydiff/prettydiff) (Default) |
| Objective-C | `Objective-C`, `Objective-C++` |`.m`, `.mm`, `.h` | [`Uncrustify`](https://github.com/uncrustify/uncrustify) (Default), [`clang-format`](https://clang.llvm.org/docs/ClangFormat.html) |
| OCaml | `OCaml` |`.ml` | [`ocp-indent`](https://www.typerex.org/ocp-indent.html) (Default) |
| Pawn | `Pawn` | | [`Uncrustify`](https://github.com/uncrustify/uncrustify) (Default) |
| Perl | `Perl`, `Perl 6` |`.pl` | [`Perltidy`](http://perltidy.sourceforge.net/) (Default) |
| PHP | `PHP` |`.php`, `.module`, `.inc` | [`PHP-CS-Fixer`](https://github.com/FriendsOfPHP/PHP-CS-Fixer) (Default), [`PHPCBF`](http://php.net/manual/en/install.php) |
| Puppet | `Puppet` |`.pp` | [`puppet-lint`](http://puppet-lint.com/) (Default) |
| Python | `Python` |`.py` | [`autopep8`](https://github.com/hhatto/autopep8) (Default), [`yapf`](https://github.com/google/yapf) |
| R | `R` |`.r`, `.R` | [`formatR`](https://github.com/yihui/formatR) (Default) |
| Riot.js | `Riot.js`, `HTML (Riot Tag)` |`.tag` | [`Pretty Diff`](https://github.com/prettydiff/prettydiff) (Default) |
| Ruby | `Ruby`, `Ruby on Rails` |`.rb` | [`Rubocop`](https://github.com/bbatsov/rubocop) (Default), [`Ruby Beautify`](https://github.com/erniebrodeur/ruby-beautify) |
| Rust | `Rust` |`.rs`, `.rlib` | [`rustfmt`](https://github.com/nrc/rustfmt) (Default) |
| Sass | `Sass` |`.sass` | [`SassConvert`](http://sass-lang.com/documentation/file.SASS_REFERENCE.html#syntax) (Default) |
| SCSS | `SCSS` |`.scss` | [`CSScomb`](https://github.com/csscomb/csscomb.js), [`Pretty Diff`](https://github.com/prettydiff/prettydiff) (Default), [`SassConvert`](http://sass-lang.com/documentation/file.SASS_REFERENCE.html#syntax) |
| Spacebars | `Spacebars` | | [`Pretty Diff`](https://github.com/prettydiff/prettydiff) (Default) |
| SQL | `SQL (Rails)`, `SQL` |`.sql` | [`sqlformat`](https://github.com/andialbrecht/sqlparse) (Default) |
| SVG | `SVG` |`.svg` | [`Pretty Diff`](https://github.com/prettydiff/prettydiff) (Default) |
| Swig | `HTML (Swig)`, `SWIG` |`.swig` | [`Pretty Diff`](https://github.com/prettydiff/prettydiff) (Default) |
| TSS | `TSS` |`.tss` | [`Pretty Diff`](https://github.com/prettydiff/prettydiff) (Default) |
| Twig | `HTML (Twig)` |`.twig` | [`Pretty Diff`](https://github.com/prettydiff/prettydiff) (Default) |
| TypeScript | `TypeScript` |`.ts` | [`TypeScript Formatter`](https://github.com/vvakame/typescript-formatter) (Default) |
| UX Markup | `UX` |`.ux` | [`Pretty Diff`](https://github.com/prettydiff/prettydiff) (Default) |
| Vala | `Vala` |`.vala`, `.vapi` | [`Uncrustify`](https://github.com/uncrustify/uncrustify) (Default) |
| Visualforce | `Visualforce` |`.page` | [`Pretty Diff`](https://github.com/prettydiff/prettydiff) (Default) |
| Vue | `Vue Component` |`.vue` | `Vue Beautifier` (Default) |
| XML | `SLD`, `XML`, `XHTML`, `XSD`, `XSL`, `JSP`, `GSP` |`.sld`, `.xml`, `.xhtml`, `.xsd`, `.xsl`, `.jsp`, `.gsp` | [`JS Beautify`](https://github.com/beautify-web/js-beautify), [`Pretty Diff`](https://github.com/prettydiff/prettydiff) (Default) |
| XTemplate | `XTemplate` |`.xtemplate` | [`Pretty Diff`](https://github.com/prettydiff/prettydiff) (Default) |

## Usage

Open the [Command Palette](https://github.com/atom/command-palette), type `Beautify`, and run `Beautify Editor`.

![image](https://cloud.githubusercontent.com/assets/1885333/16542583/1c8d975c-4085-11e6-8307-e35df7430a10.png)

### Selection of Code

It will only beautify selected text if a selection is found -- if not, the whole file will be beautified.

| Selection of Code | Beautify Selection of Code | Beautify Entire File |
| --- | --- | --- |
| Select code in Atom editor | Only that selection is beautified | Without a selection all code is beautified |
| ![image](https://cloud.githubusercontent.com/assets/1885333/16542597/b3f90c84-4085-11e6-8a0e-1b8604ae385c.png) | ![image](https://cloud.githubusercontent.com/assets/1885333/16542598/b5a86b10-4085-11e6-80cf-0afaf1a819c3.png) | ![image](https://cloud.githubusercontent.com/assets/1885333/16542603/b798ec24-4085-11e6-880e-8d3a2741940f.png) |

### Beautify On Save

`Beautify On Save` can be enabled for each language individually.

For example, for language `HTML` go into Atom-Beautify's package settings (`Atom` ➔ `Preferences` ➔ Search for `atom-beautify`), find `HTML`, and toggle the `Beautify On Save` option.

![atom-beautify-setup-beautify-on-save](https://cloud.githubusercontent.com/assets/1885333/16542692/3e781e74-4089-11e6-9cf2-5a19af161093.gif)


### Keyboard Shortcut

You can also type <kbd>Ctrl</kbd>-<kbd>Alt</kbd>-<kbd>B</kbd> as a shortcut or click `Packages > Beautify` in the menu.

#### Custom Keyboard Shortcuts

See [Keymaps In-Depth](https://atom.io/docs/latest/behind-atom-keymaps-in-depth) for more details.

For example:

```coffeescript
'.editor':
  'ctrl-alt-b': 'atom-beautify:beautify-editor'
```

## Configuration

Edit your `.jsbeautifyrc` file in any of the following locations:

- Atom Package Settings
  `Atom` ➔ `Preferences` ➔ Search for `atom-beautify`
- Same directory as current file
- Project root
`atom-beautify` will recursively look up from the current file's directory to find `.jsbeautifyrc`.
- Your user's home directory

**Note**: *Comments are supported in `.jsbeautifyrc` thanks to [strip-json-comments](https://github.com/sindresorhus/strip-json-comments).*

See examples of both ways inside [`examples/`](examples)

See [all supported options in the documentation at  `docs/options.md`](docs/options.md).

### Simple

See [examples/simple-jsbeautifyrc/.jsbeautifyrc](examples/simple-jsbeautifyrc/.jsbeautifyrc).

```json
{
  "indent_size": 2,
  "indent_char": " ",
  "other": " ",
  "indent_level": 0,
  "indent_with_tabs": false,
  "preserve_newlines": true,
  "max_preserve_newlines": 2,
  "jslint_happy": true,
  "indent_handlebars": true
}
```

### Nested (Recommended)

See [examples/nested-jsbeautifyrc/.jsbeautifyrc](examples/nested-jsbeautifyrc/.jsbeautifyrc).

```json
{
  "html": {
    "brace_style": "collapse",
    "indent_char": " ",
    "indent_scripts": "normal",
    "indent_size": 6,
    "max_preserve_newlines": 1,
    "preserve_newlines": true,
    "unformatted": ["a", "sub", "sup", "b", "i", "u"],
    "wrap_line_length": 0
  },
  "css": {
    "indent_char": " ",
    "indent_size": 4
  },
  "js": {
    "indent_size": 2,
    "indent_char": " ",
    "indent_level": 0,
    "indent_with_tabs": false,
    "preserve_newlines": true,
    "max_preserve_newlines": 2,
    "jslint_happy": true
  },
  "sql": {
    "indent_size": 4,
    "indent_char": " ",
    "indent_level": 0,
    "indent_with_tabs": false
  }
}
```

## Troubleshooting

See [`docs/troubleshooting.md`](docs/troubleshooting.md).

## Contributing

[See all contributors on GitHub](../../graphs/contributors).

Please update the [CHANGELOG.md](CHANGELOG.md),
add yourself as a contributor to the [package.json](package.json),
and submit a [Pull Request on GitHub](https://help.github.com/articles/using-pull-requests/).

## License

[MIT](LICENSE.md) © [Glavin Wiechert](https://github.com/Glavin001)

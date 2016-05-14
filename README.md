# [atom-beautify](https://github.com/Glavin001/atom-beautify)

[![Build Status](https://travis-ci.org/Glavin001/atom-beautify.svg?branch=master)](https://travis-ci.org/Glavin001/atom-beautify)
[![Build status](https://ci.appveyor.com/api/projects/status/himnq7tjxl2fdc8u?svg=true)](https://ci.appveyor.com/project/Glavin001/atom-beautify)
[![Gitter chat](https://img.shields.io/badge/gitter-Glavin001%2Fatom--beautify-1dce73.svg)](https://gitter.im/Glavin001/atom-beautify)
[![Paypal Donations](https://www.paypalobjects.com/en_US/i/btn/btn_donate_SM.gif)](https://www.paypal.com/cgi-bin/webscr?cmd=_donations&business=X2RK5DKN6YXPJ&lc=CA&item_name=Atom%2dBeautify&item_number=atom%2dbeautify&currency_code=CAD&bn=PP%2dDonationsBF%3abtn_donate_LG%2egif%3aNonHosted)

[![Throughput Graph](https://graphs.waffle.io/Glavin001/atom-beautify/throughput.svg)](https://waffle.io/Glavin001/atom-beautify/metrics)

> [Beautify](https://github.com/beautify-web/js-beautify)
HTML (including [Handlebars](http://handlebarsjs.com/)),
CSS (including [Sass](http://sass-lang.com/) and [Less](http://lesscss.org/)),
JavaScript, and much more in Atom.

Atom Package: https://atom.io/packages/atom-beautify

```bash
apm install atom-beautify
```

Or Settings/Preferences ➔ Packages ➔ Search for `atom-beautify`

## Language Support

- [x] JavaScript and JSON
- [x] HTML, including
  - [x] [Handlebars](http://handlebarsjs.com/)
  - [x] [Mustache](http://mustache.github.io)
  - [x] [Embedded Ruby (ERB)](https://github.com/Glavin001/atom-beautify/issues/80)
    - Requires [htmlbeautifier](https://github.com/threedaymonk/htmlbeautifier)
  - [x] XML
  - [x] SVG
  - [x] [Marko](https://github.com/marko-js/marko)
- [x] CSS, including
  - [Sass](http://sass-lang.com/)
  - [Less](http://lesscss.org/)
- [x] [SQL](https://github.com/Glavin001/atom-beautify/pull/67)
  - Requires [python-sqlparse](https://github.com/andialbrecht/sqlparse)
- [x] [Markdown](https://github.com/Glavin001/atom-beautify/issues/292)
- [x] [Perl](https://github.com/Glavin001/atom-beautify/issues/33)
  - Requires [perltidy](http://perltidy.sourceforge.net/)
- [x] [PHP](https://github.com/Glavin001/atom-beautify/issues/26)  
  - Requires [php-cs-fixer](https://github.com/FriendsOfPHP/PHP-CS-Fixer) to be already installed.
- [x] [Python](https://github.com/Glavin001/atom-beautify/issues/24)
  - Requires [autopep8](https://github.com/hhatto/autopep8) or [YAPF](https://github.com/google/yapf) to be already installed.
  - Beautifies to [PEP 8](https://www.python.org/dev/peps/pep-0008/).
- [x] [Ruby](https://github.com/Glavin001/atom-beautify/issues/25)
  - Requires [Ruby Beautify](https://github.com/erniebrodeur/ruby-beautify)
- [x] [CoffeeScript](https://github.com/Glavin001/atom-beautify/issues/31)
- [x] [Golang](https://github.com/Glavin001/atom-beautify/issues/176)
- [x] [Java](https://github.com/Glavin001/atom-beautify/issues/45)
  - Requires [Uncrustify](http://sourceforge.net/projects/uncrustify/)
- [x] [C](https://github.com/Glavin001/atom-beautify/issues/57)
  - Requires [Uncrustify](http://sourceforge.net/projects/uncrustify/)
- [x] [C++](https://github.com/Glavin001/atom-beautify/issues/57)
  - Requires [Uncrustify](http://sourceforge.net/projects/uncrustify/)
- [x] [C#](https://github.com/Glavin001/atom-beautify/issues/57)
  - Requires [Uncrustify](http://sourceforge.net/projects/uncrustify/)
- [x] [Objective-C](https://github.com/Glavin001/atom-beautify/issues/57)
  - Requires [Uncrustify](http://sourceforge.net/projects/uncrustify/)
- [x] [D](https://github.com/Glavin001/atom-beautify/issues/57)
  - Requires [Uncrustify](http://sourceforge.net/projects/uncrustify/) or [dfmt](https://github.com/Hackerpilot/dfmt)
- [x] [Fortran](https://github.com/Glavin001/atom-beautify/issues/300)
  - Requires [GNU Emacs](http://www.gnu.org/software/emacs/)
- [x] [Pawn](https://github.com/Glavin001/atom-beautify/issues/57)
  - Requires [Uncrustify](http://sourceforge.net/projects/uncrustify/)
- [x] [Vala](https://github.com/Glavin001/atom-beautify/issues/57)
  - Requires [Uncrustify](http://sourceforge.net/projects/uncrustify/)
- [x] [TypeScript](https://github.com/Glavin001/atom-beautify/issues/49)
- [x] [Haskell](https://github.com/Glavin001/atom-beautify/issues/628)
  - Requires [stylish-haskell](https://github.com/jaspervdj/stylish-haskell)
- [x] [Elm](https://github.com/Glavin001/atom-beautify/pull/700)
  - Requires [Elm-Format](https://github.com/avh4/elm-format)
- [x] [Erlang](https://github.com/Glavin001/atom-beautify/pull/683)
  - Requires erlang syntax_tools to be installed
- [x] [Crystal](https://github.com/Glavin001/atom-beautify/pull/900)
- [x] [Lua](https://github.com/Glavin001/atom-beautify/pull/973)

## Usage

Open the [Command Palette](https://github.com/atom/command-palette), and type `Beautify`.

It will only beautify selected text if a selection is found -- if not, the whole file will be beautified.

### Shortcut

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

See examples of both ways inside [`examples/`](https://github.com/donaldpipowitch/atom-beautify/tree/master/examples)

See [all supported options in the documentation at  `docs/options.md`](https://github.com/Glavin001/atom-beautify/blob/master/docs/options.md).

### Simple

See [examples/simple-jsbeautifyrc/.jsbeautifyrc](https://github.com/donaldpipowitch/atom-beautify/blob/master/examples/simple-jsbeautifyrc/.jsbeautifyrc).

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

### Nested

See [examples/nested-jsbeautifyrc/.jsbeautifyrc](https://github.com/donaldpipowitch/atom-beautify/blob/master/examples/nested-jsbeautifyrc/.jsbeautifyrc).

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

## Contributing

[See all contributors on GitHub](https://github.com/donaldpipowitch/atom-beautify/graphs/contributors).

Please update the [CHANGELOG.md](https://github.com/donaldpipowitch/atom-beautify/blob/master/CHANGELOG.md),
add yourself as a contributor to the [package.json](https://github.com/donaldpipowitch/atom-beautify/blob/master/package.json),
and submit a [Pull Request on GitHub](https://help.github.com/articles/using-pull-requests/).

## License

[MIT](https://github.com/donaldpipowitch/atom-beautify/blob/master/LICENSE.md) © [Glavin Wiechert](https://github.com/Glavin001)

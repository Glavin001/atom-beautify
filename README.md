# [atom-beautify](https://github.com/donaldpipowitch/atom-beautify)

[![Build Status](https://travis-ci.org/Glavin001/atom-beautify.svg?branch=master)](https://travis-ci.org/Glavin001/atom-beautify)
[![Gitter chat](https://badges.gitter.im/Glavin001/atom-beautify.svg)](https://gitter.im/Glavin001/atom-beautify)
[![donate](http://img.shields.io/gratipay/Glavin001.svg)](https://gratipay.com/Glavin001/)

> [Beautify](https://github.com/einars/js-beautify)
HTML (including [Handlebars](http://handlebarsjs.com/)),
CSS (including [Sass](http://sass-lang.com/) and [LESS](http://lesscss.org/)),
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
  - [x] [Marko](https://github.com/raptorjs/marko)
    - Requires [language-marko](https://github.com/raptorjs/atom-language-marko)
- [x] CSS, including
  - [Sass](http://sass-lang.com/)
  - [LESS](http://lesscss.org/)
- [x] [SQL](https://github.com/Glavin001/atom-beautify/pull/67)
  - Requires [python-sqlparse](https://github.com/andialbrecht/sqlparse)
- [x] [Markdown](https://github.com/Glavin001/atom-beautify/issues/292)
- [x] [Perl](https://github.com/Glavin001/atom-beautify/issues/33)
  - Requires [perltidy](http://perltidy.sourceforge.net/)
- [x] [PHP](https://github.com/donaldpipowitch/atom-beautify/issues/26)  
  - Requires [php-cs-fixer](https://github.com/FriendsOfPHP/PHP-CS-Fixer) to be already installed.
- [x] [Python](https://github.com/donaldpipowitch/atom-beautify/issues/24)
  - Requires [autopep8](https://github.com/hhatto/autopep8) to be already installed.
  - Beautifies to [PEP 8](http://legacy.python.org/dev/peps/pep-0008/).
- [x] [Ruby](https://github.com/donaldpipowitch/atom-beautify/issues/25)
  - Requires [Ruby Beautify](https://github.com/erniebrodeur/ruby-beautify)
- [x] [CoffeeScript](https://github.com/donaldpipowitch/atom-beautify/issues/31)
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
  - Requires [Uncrustify](http://sourceforge.net/projects/uncrustify/)
- [x] [Pawn](https://github.com/Glavin001/atom-beautify/issues/57)
  - Requires [Uncrustify](http://sourceforge.net/projects/uncrustify/)
- [x] [Vala](https://github.com/Glavin001/atom-beautify/issues/57)
  - Requires [Uncrustify](http://sourceforge.net/projects/uncrustify/)
- [x] [TypeScript](https://github.com/Glavin001/atom-beautify/issues/49)

## Usage

Open the [Command Palette](https://github.com/atom/command-palette), and type `Beautify`.

It will only beautify selected text, if a selection is found - if not, the whole file will be beautified.

### Shortcut

You can also type `ctrl-alt-b` as a shortcut or click `Packages > Beautify` in the menu.

#### Custom Keyboard Shortcuts

See [Keymaps In-Depth](https://atom.io/docs/latest/advanced/keymaps) for more details.

For example:

```coffeescript
'.editor':
  'ctrl-alt-b': 'beautify:beautify-editor'
```

### Package Options

Each language and all of their respective beautifier's options
are fully documented in Atom Beautify Package Settings Panel.
There are much too many to document them all here.
Here are a few key options that you may use:

- `beautifyOnSave`  (Default *false*)
You can also choose to beautify on every file save.

- `beautifyEntireFileOnSave` (Default *true*)
Beautification will normally only beautify your selected text.
However, when beautification occurs on save then it will
be forced to beautify the entire file's contents,
not just selected text.

- `muteUnsupportedLanguageErrors` (Default *false*)
Mute only *unsupported language* errors.

- `muteAllErrors` (Default *false*)
Do not show the *Atom Beautify Error Messages* panel
for any of the errors occurring while beautifying.

- `analytics`  (Default *true*)
There is [Segment.io](https://segment.io/),
which forwards the data to [Google Analytics](http://www.google.com/analytics/),
to track what languages
are being used the most and other stats.
Everything is anonymized and no personal information,
such as source code, is sent.
See https://github.com/Glavin001/atom-beautify/issues/47
for more details.

## Configuration

Edit your `.jsbeautifyrc` file in any of the following locations:

- Atom Package Settings  
  `Atom` ➔ `Preferences` ➔ Search for `atom-beautify`
- Same directory as current file
- Project root  
`atom-beautify` will recursively look up from the current file's directory to find `.jsbeautifyrc`.
- Your User's Home directory

**Note**: *Comments are supported in `.jsbeautifyrc` thanks to [strip-json-comments](https://github.com/sindresorhus/strip-json-comments).*

See examples of both way inside [`examples/`](https://github.com/donaldpipowitch/atom-beautify/tree/master/examples)

Option table is available at the [js-beautify repo](https://github.com/beautify-web/js-beautify#options).

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
and submit a [Pull Request on GitHub](https://help.github.com/articles/using-pull-requests).

## License

[MIT](https://github.com/donaldpipowitch/atom-beautify/blob/master/LICENSE.md) © [Glavin Wiechert](https://github.com/Glavin001)

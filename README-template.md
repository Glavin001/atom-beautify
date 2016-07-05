# :lipstick: [{{package.name}}](https://github.com/Glavin001/atom-beautify)

[![Build Status](https://travis-ci.org/Glavin001/atom-beautify.svg?branch=master)](https://travis-ci.org/Glavin001/atom-beautify)
[![Build status](https://ci.appveyor.com/api/projects/status/himnq7tjxl2fdc8u?svg=true)](https://ci.appveyor.com/project/Glavin001/atom-beautify)
[![Gitter chat](https://img.shields.io/badge/gitter-Glavin001%2Fatom--beautify-1dce73.svg)](https://gitter.im/Glavin001/atom-beautify)
[![Paypal Donations](https://www.paypalobjects.com/en_US/i/btn/btn_donate_SM.gif)](https://www.paypal.com/cgi-bin/webscr?cmd=_donations&business=X2RK5DKN6YXPJ&lc=CA&item_name=Atom%2dBeautify&item_number=atom%2dbeautify&currency_code=CAD&bn=PP%2dDonationsBF%3abtn_donate_LG%2egif%3aNonHosted)

[![Throughput Graph](https://graphs.waffle.io/Glavin001/atom-beautify/throughput.svg)](https://waffle.io/Glavin001/atom-beautify/metrics)

> {{package.description}}

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

## Language Support

See [all supported options in the documentation at  `docs/options.md`](https://github.com/Glavin001/atom-beautify/blob/master/docs/options.md).

{{language-beautifiers-support languageOptions}}

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

### Nested (Recommended)

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

## Troubleshooting

See [`docs/troubleshooting.md`](https://github.com/Glavin001/atom-beautify/blob/master/docs/troubleshooting.md).

## Contributing

[See all contributors on GitHub](https://github.com/donaldpipowitch/atom-beautify/graphs/contributors).

Please update the [CHANGELOG.md](https://github.com/donaldpipowitch/atom-beautify/blob/master/CHANGELOG.md),
add yourself as a contributor to the [package.json](https://github.com/donaldpipowitch/atom-beautify/blob/master/package.json),
and submit a [Pull Request on GitHub](https://help.github.com/articles/using-pull-requests/).

## License

[MIT](https://github.com/donaldpipowitch/atom-beautify/blob/master/LICENSE.md) © [Glavin Wiechert](https://github.com/Glavin001)

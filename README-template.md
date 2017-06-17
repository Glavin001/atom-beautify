# :lipstick: [{{package.name}}](https://github.com/Glavin001/atom-beautify)
[![Greenkeeper badge](https://badges.greenkeeper.io/Glavin001/atom-beautify.svg)](https://greenkeeper.io/)
[![GitHub issues](https://img.shields.io/github/issues/Glavin001/atom-beautify.svg?style=flat-square)](https://github.com/Glavin001/atom-beautify/issues)
[![GitHub stars](https://img.shields.io/github/stars/Glavin001/atom-beautify.svg?style=flat-square)](https://github.com/Glavin001/atom-beautify/stargazers)
[![Gitter](https://img.shields.io/gitter/room/Glavin001/atom-beautify.svg?style=flat-square)](https://gitter.im/Glavin001/atom-beautify)
[![Bountysource](https://img.shields.io/bountysource/team/atom-beautify/activity.svg?style=flat-square)](https://www.bountysource.com/teams/atom-beautify)
[![Paypal Donations](https://www.paypalobjects.com/en_US/i/btn/btn_donate_SM.gif)](https://www.paypal.com/cgi-bin/webscr?cmd=_donations&business=X2RK5DKN6YXPJ&lc=CA&item_name=Atom%2dBeautify&item_number=atom%2dbeautify&currency_code=CAD&bn=PP%2dDonationsBF%3abtn_donate_LG%2egif%3aNonHosted)

| Mac OS <img src="https://cloud.githubusercontent.com/assets/1885333/17059766/2530c9d8-4ffd-11e6-9529-3fa47dbff616.png" width="50px"> and <img src="https://cloud.githubusercontent.com/assets/1885333/17059750/11c4474e-4ffd-11e6-89e1-2486ca5b3234.png" width="100px"> | <img src="https://cloud.githubusercontent.com/assets/1885333/17059763/206a7d4a-4ffd-11e6-859e-7856902fb300.png" width="100px"> |
| --- | --- |
| [Travis CI: ![Travis branch](https://img.shields.io/travis/Glavin001/atom-beautify/master.svg?style=flat-square)](https://travis-ci.org/Glavin001/atom-beautify) | [AppVeyor: ![AppVeyor branch](https://img.shields.io/appveyor/ci/Glavin001/atom-beautify/master.svg?style=flat-square)](https://ci.appveyor.com/project/Glavin001/atom-beautify) |

[![Throughput Graph](https://graphs.waffle.io/Glavin001/atom-beautify/throughput.svg)](https://waffle.io/Glavin001/atom-beautify/metrics)

> {{package.description}}

| Before | After |
| --- | ---- |
| Original HTML | Beautified HTML |
| ![image](https://cloud.githubusercontent.com/assets/1885333/16542727/db52adc6-408a-11e6-824e-04aed06bd2f7.png) | ![image](https://cloud.githubusercontent.com/assets/1885333/16542728/dcac3700-408a-11e6-8e35-9c8fc4432edc.png) |

## Table of Contents

- [Installation](#installation)
- [Beautifiers](#beautifiers)
- [Language Support](#language-support)
- [Usage](#usage)
  - [Command Palette](#command-palette)
    - [Beautify a Specific Language](#beautify-a-specific-language)
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

[Atom-Beautify respects the `core.telemetryConsent` configuration option from Atom editor.](https://github.com/Glavin001/atom-beautify/issues/1179)
If you do not wish to have usage data sent to Google Analytics then please set `core.telemetryConsent` to `no` or `undecided` option before using Atom-Beautify.
See [`Anonymous Analytics` section of docs](docs/options.md#anonymous-analytics) for details.
Thank you.

| On Atom Load | Change Setting Later |
| --- | --- |
| ![image](https://cloud.githubusercontent.com/assets/1885333/25234140/947b1b50-25b7-11e7-8ebc-0ae37420f13e.png) | ![image](https://cloud.githubusercontent.com/assets/1885333/25234184/b41b4192-25b7-11e7-8185-a83829b48078.png) |


### Next Version: [Unibeautify](https://github.com/Unibeautify/unibeautify)

Atom-Beautify is going to be completely rewritten with [Unibeautify](https://github.com/Unibeautify/unibeautify) at its core!
See [`unibeautify` branch](../../tree/unibeautify) for work in progress and [Issue #1174](https://github.com/Glavin001/atom-beautify/issues/1174).

## Beautifiers

Some of the supported beautifiers are developed for Node.js and are automatically installed when Atom-Beautify is installed. However, other beautifiers are command-line interface (CLI) applications and require you to manually install them.

{{beautifiers-info beautifiers}}

## Language Support

See [all supported options in the documentation at  `docs/options.md`](docs/options.md).

{{language-beautifiers-support languageOptions}}

## Usage

### Command Palette

Open the [Command Palette](https://github.com/atom/command-palette), type `Beautify`, and run `Beautify Editor`.

![image](https://cloud.githubusercontent.com/assets/1885333/16542583/1c8d975c-4085-11e6-8307-e35df7430a10.png)

#### Beautify a Specific Language

You can use the [Command Palette](https://github.com/atom/command-palette) to beautify the editor for a specific language.
The commands are in the form `Atom Beautify: Beautify Language {NAME}` (i.e. `atom-beautify:beautify-language-{NAME}` for keyboard shortcuts).
For example, you may want to beautify `JavaScript` code within a `HTML` file.

![atom-beautify-language-commands](https://cloud.githubusercontent.com/assets/1885333/25775586/f3fc7ec4-327e-11e7-8576-45e735e80032.gif)

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

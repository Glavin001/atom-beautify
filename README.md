# :lipstick: [atom-beautify](https://github.com/Glavin001/atom-beautify)
[![apm](https://img.shields.io/apm/dm/atom-beautify.svg)](https://atom.io/packages/atom-beautify)
[![Greenkeeper badge](https://badges.greenkeeper.io/Glavin001/atom-beautify.svg)](https://greenkeeper.io/)
[![GitHub issues](https://img.shields.io/github/issues/Glavin001/atom-beautify.svg?style=flat-square)](https://github.com/Glavin001/atom-beautify/issues)
[![GitHub stars](https://img.shields.io/github/stars/Glavin001/atom-beautify.svg?style=flat-square)](https://github.com/Glavin001/atom-beautify/stargazers)
[![Gitter](https://img.shields.io/gitter/room/Glavin001/atom-beautify.svg?style=flat-square)](https://gitter.im/Glavin001/atom-beautify)
[![Bountysource](https://img.shields.io/bountysource/team/atom-beautify/activity.svg?style=flat-square)](https://www.bountysource.com/teams/atom-beautify)
[![Paypal Donations](https://www.paypalobjects.com/en_US/i/btn/btn_donate_SM.gif)](https://www.paypal.com/cgi-bin/webscr?cmd=_donations&business=X2RK5DKN6YXPJ&lc=CA&item_name=Atom%2dBeautify&item_number=atom%2dbeautify&currency_code=CAD&bn=PP%2dDonationsBF%3abtn_donate_LG%2egif%3aNonHosted)
[![Twitter URL](https://img.shields.io/twitter/url/http/shields.io.svg?style=social)](https://twitter.com/unibeautify)

**Sign up for Unibeautify CI: [https://goo.gl/jmM4QN](https://goo.gl/jmM4QN)**

**Help improve Atom-Beautify by completing the quick questionnaire: [https://goo.gl/iEHBNr](https://goo.gl/iEHBNr)**

| Mac OS <img src="https://cloud.githubusercontent.com/assets/1885333/17059766/2530c9d8-4ffd-11e6-9529-3fa47dbff616.png" width="50px"> and <img src="https://cloud.githubusercontent.com/assets/1885333/17059750/11c4474e-4ffd-11e6-89e1-2486ca5b3234.png" width="100px"> | <img src="https://cloud.githubusercontent.com/assets/1885333/17059763/206a7d4a-4ffd-11e6-859e-7856902fb300.png" width="100px"> |
| --- | --- |
| [Travis CI: ![Build Status](https://travis-ci.org/Glavin001/atom-beautify.svg?branch=master)](https://travis-ci.org/Glavin001/atom-beautify) | [AppVeyor: ![Build status](https://ci.appveyor.com/api/projects/status/himnq7tjxl2fdc8u/branch/master?svg=true)](https://ci.appveyor.com/project/Glavin001/atom-beautify/branch/master) |

[![Throughput Graph](https://graphs.waffle.io/Glavin001/atom-beautify/throughput.svg)](https://waffle.io/Glavin001/atom-beautify/metrics)

> Beautify HTML, CSS, JavaScript, PHP, Python, Ruby, Java, C, C++, C#, Objective-C, CoffeeScript, TypeScript, Coldfusion, SQL, and more in Atom

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

Or Settings/Preferences ➔ Install ➔ Search for `atom-beautify`

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

### Poll: Improving installation of third-party beautifiers

Many users are experiencing issues when installing third party beautifiers (e.g. Uncrustify, PHP-CS-Fixer, and many more).
A possible solution is a "cloud" service which provides remote access to these beautifiers. Atom-Beautify would then communicate with these services, allowing for zero-installation beautification.

Please let us know what you think!

[![](https://m131jyck4m.execute-api.us-west-2.amazonaws.com/prod/poll/01BY57P9ACSDQASVT7KYZKZESK/Yes%2C%20cloud%20solution%20would%20be%20great!)](https://m131jyck4m.execute-api.us-west-2.amazonaws.com/prod/poll/01BY57P9ACSDQASVT7KYZKZESK/Yes%2C%20cloud%20solution%20would%20be%20great!/vote)
[![](https://m131jyck4m.execute-api.us-west-2.amazonaws.com/prod/poll/01BY57P9ACSDQASVT7KYZKZESK/No%2C%20I%20enjoy%20manually%20installing%20beautifiers)](https://m131jyck4m.execute-api.us-west-2.amazonaws.com/prod/poll/01BY57P9ACSDQASVT7KYZKZESK/No%2C%20I%20enjoy%20manually%20installing%20beautifiers/vote)
[![](https://m131jyck4m.execute-api.us-west-2.amazonaws.com/prod/poll/01BY57P9ACSDQASVT7KYZKZESK/No%2C%20I%20am%20happy%20using%20Docker)](https://m131jyck4m.execute-api.us-west-2.amazonaws.com/prod/poll/01BY57P9ACSDQASVT7KYZKZESK/No%2C%20I%20am%20happy%20using%20Docker/vote)
[![](https://m131jyck4m.execute-api.us-west-2.amazonaws.com/prod/poll/01BY57P9ACSDQASVT7KYZKZESK/No%2C%20I%20do%20not%20want%20to%20send%20me%20code%20over%20the%20Internet)](https://m131jyck4m.execute-api.us-west-2.amazonaws.com/prod/poll/01BY57P9ACSDQASVT7KYZKZESK/No%2C%20I%20do%20not%20want%20to%20send%20me%20code%20over%20the%20Internet/vote)

## Beautifiers

Some of the supported beautifiers are developed for Node.js and are automatically installed when Atom-Beautify is installed. However, other beautifiers are command-line interface (CLI) applications and require you to manually install them.

| Beautifier | Preinstalled | [:whale: Docker](https://www.docker.com/) | Installation |
| --- | --- | --- |--- |
| align-yaml | :white_check_mark: | :ok_hand: Not necessary | :smiley: Nothing! |
| autopep8 | :warning: 2 executables | :warning: Only 1 of 2 executables | :whale: With [Docker](https://www.docker.com/):<br/>1. Install [autopep8 (`autopep8`)](https://github.com/hhatto/autopep8) with `docker pull unibeautify/autopep8`<br/><br/>:bookmark_tabs: Manually:<br/>1. Install [autopep8 (`autopep8`)](https://github.com/hhatto/autopep8) by following https://github.com/hhatto/autopep8#installation<br/>2. Install [isort (`isort`)](https://github.com/timothycrosley/isort) by following https://github.com/timothycrosley/isort#installing-isort<br/> |
| beautysh | :warning: 1 executable | :white_check_mark: :100:% of executables | :whale: With [Docker](https://www.docker.com/):<br/>1. Install [beautysh (`beautysh`)](https://github.com/bemeurer/beautysh) with `docker pull unibeautify/beautysh`<br/><br/>:bookmark_tabs: Manually:<br/>1. Install [beautysh (`beautysh`)](https://github.com/bemeurer/beautysh) by following https://github.com/bemeurer/beautysh#installation<br/> |
| brittany | :warning: Manual installation | :construction: Not an executable | :page_facing_up: Go to https://github.com/lspitzner/brittany and follow the instructions. |
| clang-format | :warning: 1 executable | :white_check_mark: :100:% of executables | :whale: With [Docker](https://www.docker.com/):<br/>1. Install [ClangFormat (`clang-format`)](https://clang.llvm.org/docs/ClangFormat.html) with `docker pull unibeautify/clang-format`<br/><br/>:bookmark_tabs: Manually:<br/>1. Install [ClangFormat (`clang-format`)](https://clang.llvm.org/docs/ClangFormat.html) by following https://clang.llvm.org/docs/ClangFormat.html<br/> |
| cljfmt | :white_check_mark: | :ok_hand: Not necessary | :smiley: Nothing! |
| Coffee Formatter | :white_check_mark: | :ok_hand: Not necessary | :smiley: Nothing! |
| coffee-fmt | :white_check_mark: | :ok_hand: Not necessary | :smiley: Nothing! |
| Crystal | :warning: 1 executable | :white_check_mark: :100:% of executables | :whale: With [Docker](https://www.docker.com/):<br/>1. Install [Crystal (`crystal`)](http://crystal-lang.org) with `docker pull unibeautify/crystal`<br/><br/>:bookmark_tabs: Manually:<br/>1. Install [Crystal (`crystal`)](http://crystal-lang.org) by following https://crystal-lang.org/docs/installation/<br/> |
| CSScomb | :white_check_mark: | :ok_hand: Not necessary | :smiley: Nothing! |
| dfmt | :warning: 1 executable | :x: No Docker support | :bookmark_tabs: Manually:<br/>1. Install [Dfmt (`dfmt`)](https://github.com/Hackerpilot/dfmt) by following https://github.com/dlang-community/dfmt#building<br/> |
| elm-format | :warning: 1 executable | :white_check_mark: :100:% of executables | :whale: With [Docker](https://www.docker.com/):<br/>1. Install [elm-format (`elm-format`)](https://github.com/avh4/elm-format) with `docker pull unibeautify/elm-format`<br/><br/>:bookmark_tabs: Manually:<br/>1. Install [elm-format (`elm-format`)](https://github.com/avh4/elm-format) by following https://github.com/avh4/elm-format#installation-<br/> |
| Emacs Verilog Mode | :warning: 1 executable | :x: No Docker support | :bookmark_tabs: Manually:<br/>1. Install [Emacs (`emacs`)](https://www.gnu.org/software/emacs/) by following https://www.gnu.org/software/emacs/<br/> |
| erl_tidy | :warning: Manual installation | :construction: Not an executable | :page_facing_up: Go to http://erlang.org/doc/man/erl_tidy.html and follow the instructions. |
| ESLint Fixer | :white_check_mark: | :ok_hand: Not necessary | :smiley: Nothing! |
| formatR | :warning: 1 executable | :white_check_mark: :100:% of executables | :whale: With [Docker](https://www.docker.com/):<br/>1. Install [Rscript (`rscript`)](https://github.com/yihui/formatR) with `docker pull unibeautify/rscript`<br/><br/>:bookmark_tabs: Manually:<br/>1. Install [Rscript (`rscript`)](https://github.com/yihui/formatR) by following https://github.com/yihui/formatR<br/> |
| Fortran Beautifier | :warning: 1 executable | :x: No Docker support | :bookmark_tabs: Manually:<br/>1. Install [Emacs (`emacs`)](https://www.gnu.org/software/emacs/) by following https://www.gnu.org/software/emacs/<br/> |
| Gherkin formatter | :white_check_mark: | :ok_hand: Not necessary | :smiley: Nothing! |
| GN | :warning: 1 executable | :x: No Docker support | :bookmark_tabs: Manually:<br/>1. Install [gn (`gn`)](https://chromium.googlesource.com/chromium/src/tools/gn) by following https://www.chromium.org/developers/how-tos/get-the-code<br/> |
| gofmt | :warning: Manual installation | :construction: Not an executable | :page_facing_up: Go to https://golang.org/cmd/gofmt/ and follow the instructions. |
| goimports | :warning: 1 executable | :white_check_mark: :100:% of executables | :whale: With [Docker](https://www.docker.com/):<br/>1. Install [goimports (`goimports`)](https://godoc.org/golang.org/x/tools/cmd/goimports) with `docker pull unibeautify/goimports`<br/><br/>:bookmark_tabs: Manually:<br/>1. Install [goimports (`goimports`)](https://godoc.org/golang.org/x/tools/cmd/goimports) by following https://godoc.org/golang.org/x/tools/cmd/goimports<br/> |
| hh_format | :warning: Manual installation | :construction: Not an executable | :page_facing_up: Go to http://hhvm.com/ and follow the instructions. |
| hindent | :warning: Manual installation | :construction: Not an executable | :page_facing_up: Go to https://github.com/commercialhaskell/hindent and follow the instructions. |
| HTML Beautifier | :warning: Manual installation | :construction: Not an executable | :page_facing_up: Go to https://github.com/threedaymonk/htmlbeautifier and follow the instructions. |
| JS Beautify | :white_check_mark: | :ok_hand: Not necessary | :smiley: Nothing! |
| JSCS Fixer | :white_check_mark: | :ok_hand: Not necessary | :smiley: Nothing! |
| Latex Beautify | :warning: Manual installation | :construction: Not an executable | :page_facing_up: Go to https://github.com/cmhughes/latexindent.pl and follow the instructions. |
| Lua beautifier | :white_check_mark: | :ok_hand: Not necessary | :smiley: Nothing! |
| Marko Beautifier | :white_check_mark: | :ok_hand: Not necessary | :smiley: Nothing! |
| Nginx Beautify | :white_check_mark: | :ok_hand: Not necessary | :smiley: Nothing! |
| ocp-indent | :warning: 1 executable | :white_check_mark: :100:% of executables | :whale: With [Docker](https://www.docker.com/):<br/>1. Install [ocp-indent (`ocp-indent`)](https://www.typerex.org/ocp-indent.html) with `docker pull unibeautify/ocp-indent`<br/><br/>:bookmark_tabs: Manually:<br/>1. Install [ocp-indent (`ocp-indent`)](https://www.typerex.org/ocp-indent.html) by following https://www.typerex.org/ocp-indent.html#installation<br/> |
| Perltidy | :warning: Manual installation | :construction: Not an executable | :page_facing_up: Go to http://perltidy.sourceforge.net/ and follow the instructions. |
| PHP-CS-Fixer | :warning: 2 executables | :warning: Only 1 of 2 executables | :whale: With [Docker](https://www.docker.com/):<br/>1. Install [PHP-CS-Fixer (`php-cs-fixer`)](https://github.com/FriendsOfPHP/PHP-CS-Fixer) with `docker pull unibeautify/php-cs-fixer`<br/><br/>:bookmark_tabs: Manually:<br/>1. Install [PHP (`php`)](http://php.net/) by following http://php.net/manual/en/install.php<br/>2. Install [PHP-CS-Fixer (`php-cs-fixer`)](https://github.com/FriendsOfPHP/PHP-CS-Fixer) by following https://github.com/FriendsOfPHP/PHP-CS-Fixer#installation<br/> |
| PHPCBF | :warning: 2 executables | :warning: Only 1 of 2 executables | :whale: With [Docker](https://www.docker.com/):<br/>1. Install [PHPCBF (`phpcbf`)](https://github.com/squizlabs/PHP_CodeSniffer) with `docker pull unibeautify/phpcbf`<br/><br/>:bookmark_tabs: Manually:<br/>1. Install [PHP (`php`)](http://php.net/) by following http://php.net/manual/en/install.php<br/>2. Install [PHPCBF (`phpcbf`)](https://github.com/squizlabs/PHP_CodeSniffer) by following https://github.com/squizlabs/PHP_CodeSniffer#installation<br/> |
| Prettier | :white_check_mark: | :ok_hand: Not necessary | :smiley: Nothing! |
| Pretty Diff | :white_check_mark: | :ok_hand: Not necessary | :smiley: Nothing! |
| Pug Beautify | :white_check_mark: | :ok_hand: Not necessary | :smiley: Nothing! |
| puppet-lint | :warning: 1 executable | :white_check_mark: :100:% of executables | :whale: With [Docker](https://www.docker.com/):<br/>1. Install [puppet-lint (`puppet-lint`)](http://puppet-lint.com/) with `docker pull unibeautify/puppet-lint`<br/><br/>:bookmark_tabs: Manually:<br/>1. Install [puppet-lint (`puppet-lint`)](http://puppet-lint.com/) by following http://puppet-lint.com/<br/> |
| pybeautifier | :warning: Manual installation | :construction: Not an executable | :page_facing_up: Go to https://github.com/guyskk/pybeautifier and follow the instructions. |
| Remark | :white_check_mark: | :ok_hand: Not necessary | :smiley: Nothing! |
| Rubocop | :warning: Manual installation | :construction: Not an executable | :page_facing_up: Go to https://github.com/bbatsov/rubocop and follow the instructions. |
| Ruby Beautify | :warning: Manual installation | :construction: Not an executable | :page_facing_up: Go to https://github.com/erniebrodeur/ruby-beautify and follow the instructions. |
| rustfmt | :warning: Manual installation | :construction: Not an executable | :page_facing_up: Go to https://github.com/rust-lang-nursery/rustfmt and follow the instructions. |
| SassConvert | :warning: 1 executable | :white_check_mark: :100:% of executables | :whale: With [Docker](https://www.docker.com/):<br/>1. Install [SassConvert (`sass-convert`)](http://sass-lang.com/documentation/file.SASS_REFERENCE.html#syntax) with `docker pull unibeautify/sass-convert`<br/><br/>:bookmark_tabs: Manually:<br/>1. Install [SassConvert (`sass-convert`)](http://sass-lang.com/documentation/file.SASS_REFERENCE.html#syntax) by following http://sass-lang.com/documentation/file.SASS_REFERENCE.html#syntax<br/> |
| sqlformat | :warning: Manual installation | :construction: Not an executable | :page_facing_up: Go to https://github.com/andialbrecht/sqlparse and follow the instructions. |
| stylish-haskell | :warning: Manual installation | :construction: Not an executable | :page_facing_up: Go to https://github.com/jaspervdj/stylish-haskell and follow the instructions. |
| terraformfmt | :warning: 1 executable | :white_check_mark: :100:% of executables | :whale: With [Docker](https://www.docker.com/):<br/>1. Install [Terraform (`terraform`)](https://www.terraform.io) with `docker pull hashicorp/terraform`<br/><br/>:bookmark_tabs: Manually:<br/>1. Install [Terraform (`terraform`)](https://www.terraform.io) by following https://www.terraform.io<br/> |
| Tidy Markdown | :white_check_mark: | :ok_hand: Not necessary | :smiley: Nothing! |
| TypeScript Formatter | :white_check_mark: | :ok_hand: Not necessary | :smiley: Nothing! |
| Uncrustify | :warning: 1 executable | :white_check_mark: :100:% of executables | :whale: With [Docker](https://www.docker.com/):<br/>1. Install [Uncrustify (`uncrustify`)](http://uncrustify.sourceforge.net/) with `docker pull unibeautify/uncrustify`<br/><br/>:bookmark_tabs: Manually:<br/>1. Install [Uncrustify (`uncrustify`)](http://uncrustify.sourceforge.net/) by following https://github.com/uncrustify/uncrustify<br/> |
| VHDL Beautifier | :warning: 1 executable | :x: No Docker support | :bookmark_tabs: Manually:<br/>1. Install [Emacs (`emacs`)](https://www.gnu.org/software/emacs/) by following https://www.gnu.org/software/emacs/<br/> |
| Vue Beautifier | :white_check_mark: | :ok_hand: Not necessary | :smiley: Nothing! |
| yapf | :warning: Manual installation | :construction: Not an executable | :page_facing_up: Go to https://github.com/google/yapf and follow the instructions. |

## Language Support

See [all supported options in the documentation at  `docs/options.md`](docs/options.md).

| Language | Grammars | File Extensions | Supported Beautifiers |
| --- | --- | --- | ---- |
| Apex | `Apex` |`.cls`, `.trigger` | **[`Uncrustify`](https://github.com/uncrustify/uncrustify)** |
| Arduino | `Arduino` |`.ino`, `.pde` | **[`Uncrustify`](https://github.com/uncrustify/uncrustify)** |
| Bash | `Shell Script` |`.bash`, `.sh` | **[`beautysh`](https://github.com/bemeurer/beautysh)** |
| C | `C`, `opencl` |`.h`, `.c`, `.cl` | **[`Uncrustify`](https://github.com/uncrustify/uncrustify)**, [`clang-format`](https://clang.llvm.org/docs/ClangFormat.html) |
| Coldfusion | `html` |`.cfm`, `.cfml`, `.cfc` | **[`Pretty Diff`](https://github.com/prettydiff/prettydiff)** |
| Clojure | `Clojure` |`.clj`, `.cljs`, `.edn` | **[`cljfmt`](https://github.com/snoe/node-cljfmt)** |
| CoffeeScript | `CoffeeScript` |`.coffee` | **[`coffee-fmt`](https://github.com/sterpe/coffee-fmt)**, [`Coffee Formatter`](https://github.com/Glavin001/Coffee-Formatter) |
| C++ | `C++` |`.h`, `.hh`, `.cc`, `.cpp`, `.cxx`, `.C`, `.cu`, `.c++`, `.hpp`, `.hxx`, `.h++`, `.cuh` | **[`Uncrustify`](https://github.com/uncrustify/uncrustify)**, [`clang-format`](https://clang.llvm.org/docs/ClangFormat.html) |
| Crystal | `Crystal` |`.cr` | **[`Crystal`](http://crystal-lang.org)** |
| C# | `C#` |`.cs` | **[`Uncrustify`](https://github.com/uncrustify/uncrustify)** |
| CSS | `CSS` |`.css` | **[`JS Beautify`](https://github.com/beautify-web/js-beautify)**, [`CSScomb`](https://github.com/csscomb/csscomb.js), [`Prettier`](https://github.com/prettier/prettier), [`Pretty Diff`](https://github.com/prettydiff/prettydiff), [`SassConvert`](http://sass-lang.com/documentation/file.SASS_REFERENCE.html#syntax) |
| CSV | `CSV` |`.csv` | **[`Pretty Diff`](https://github.com/prettydiff/prettydiff)** |
| D | `D` |`.d` | **[`Uncrustify`](https://github.com/uncrustify/uncrustify)**, [`dfmt`](https://github.com/Hackerpilot/dfmt) |
| EJS | `EJS`, `JavaScript Template`, `HTML (Angular)` |`.ejs` | **[`JS Beautify`](https://github.com/beautify-web/js-beautify)**, [`Pretty Diff`](https://github.com/prettydiff/prettydiff) |
| Elm | `Elm` |`.elm` | **[`elm-format`](https://github.com/avh4/elm-format)** |
| ERB | `HTML (Ruby - ERB)`, `HTML (Rails)` |`.erb` | **[`Pretty Diff`](https://github.com/prettydiff/prettydiff)**, [`HTML Beautifier`](https://github.com/threedaymonk/htmlbeautifier) |
| Erlang | `Erlang` |`.erl` | **[`erl_tidy`](http://erlang.org/doc/man/erl_tidy.html)** |
| Fortran | `Fortran - Modern` |`.f90`, `.F90`, `.f95`, `.F95`, `.f03`, `.F03`, `.f08`, `.F08` | **[`Fortran Beautifier`](https://www.gnu.org/software/emacs/)** |
| gherkin | `Gherkin` |`.feature` | **[`Gherkin formatter`](https://github.com/Glavin001/atom-beautify/blob/master/src/beautifiers/gherkin.coffee)** |
| GLSL | `C`, `opencl`, `GLSL` |`.vert`, `.frag` | **[`clang-format`](https://clang.llvm.org/docs/ClangFormat.html)** |
| GN | `gn` |`.gn`, `.gni` | **[`GN`](https://chromium.googlesource.com/chromium/src/tools/gn)** |
| Go | `Go` |`.go` | **[`gofmt`](https://golang.org/cmd/gofmt/)**, [`goimports`](https://godoc.org/golang.org/x/tools/cmd/goimports) |
| Golang Template | `HTML (Go)`, `Go Template` |`.gohtml` | **[`Pretty Diff`](https://github.com/prettydiff/prettydiff)** |
| Handlebars | `Handlebars`, `HTML (Handlebars)` |`.hbs`, `.handlebars` | **[`JS Beautify`](https://github.com/beautify-web/js-beautify)**, [`Pretty Diff`](https://github.com/prettydiff/prettydiff) |
| Haskell | `Haskell` |`.hs` | **[`stylish-haskell`](https://github.com/jaspervdj/stylish-haskell)**, [`brittany`](https://github.com/lspitzner/brittany), [`hindent`](https://github.com/commercialhaskell/hindent) |
| HTML | `HTML` |`.html` | **[`JS Beautify`](https://github.com/beautify-web/js-beautify)**, [`Pretty Diff`](https://github.com/prettydiff/prettydiff) |
| Jade | `Jade`, `Pug` |`.jade`, `.pug` | **[`Pug Beautify`](https://github.com/vingorius/pug-beautify)** |
| Java | `Java` |`.java` | **[`Uncrustify`](https://github.com/uncrustify/uncrustify)** |
| JavaScript | `JavaScript` |`.js` | **[`JS Beautify`](https://github.com/beautify-web/js-beautify)**, [`ESLint Fixer`](https://github.com/eslint/eslint), [`JSCS Fixer`](https://github.com/jscs-dev/node-jscs/), [`Prettier`](https://github.com/prettier/prettier), [`Pretty Diff`](https://github.com/prettydiff/prettydiff) |
| JSON | `JSON` |`.json` | **[`JS Beautify`](https://github.com/beautify-web/js-beautify)**, [`Prettier`](https://github.com/prettier/prettier), [`Pretty Diff`](https://github.com/prettydiff/prettydiff) |
| JSX | `JSX`, `JavaScript (JSX)`, `Babel ES6 JavaScript`, `JavaScript with JSX` |`.jsx`, `.js` | **[`Pretty Diff`](https://github.com/prettydiff/prettydiff)**, [`JS Beautify`](https://github.com/beautify-web/js-beautify) |
| LaTeX | `BibTeX`, `LaTeX`, `TeX` |`.bib`, `.tex`, `.sty`, `.cls`, `.dtx`, `.ins`, `.bbx`, `.cbx` | **[`Latex Beautify`](https://github.com/cmhughes/latexindent.pl)** |
| LESS | `LESS` |`.less` | **[`Pretty Diff`](https://github.com/prettydiff/prettydiff)**, [`CSScomb`](https://github.com/csscomb/csscomb.js), [`Prettier`](https://github.com/prettier/prettier) |
| Lua | `Lua` |`.lua`, `.ttslua` | **[`Lua beautifier`](https://github.com/Glavin001/atom-beautify/blob/master/src/beautifiers/lua-beautifier/beautifier.coffee)** |
| Markdown | `GitHub Markdown` |`.markdown`, `.md` | **[`Remark`](https://github.com/remarkjs/remark)**, [`Prettier`](https://github.com/prettier/prettier), [`Tidy Markdown`](https://github.com/slang800/tidy-markdown) |
| Marko | `Marko` |`.marko` | **[`Marko Beautifier`](https://github.com/marko-js/marko-prettyprint)** |
| Mustache | `HTML (Mustache)` |`.mustache` | **[`JS Beautify`](https://github.com/beautify-web/js-beautify)**, [`Pretty Diff`](https://github.com/prettydiff/prettydiff) |
| Nginx | `nginx` |`.conf` | **[`Nginx Beautify`](https://github.com/denysvitali/nginxbeautify)** |
| Nunjucks | `Nunjucks`, `Nunjucks Templates`, `HTML (Nunjucks Templates)` |`.njk`, `.nunjucks` | **[`Pretty Diff`](https://github.com/prettydiff/prettydiff)** |
| Objective-C | `Objective-C`, `Objective-C++` |`.m`, `.mm`, `.h` | **[`Uncrustify`](https://github.com/uncrustify/uncrustify)**, [`clang-format`](https://clang.llvm.org/docs/ClangFormat.html) |
| OCaml | `OCaml` |`.ml` | **[`ocp-indent`](https://www.typerex.org/ocp-indent.html)** |
| Pawn | `Pawn` | | **[`Uncrustify`](https://github.com/uncrustify/uncrustify)** |
| Perl | `Perl`, `Perl 6` |`.pl`, `.PL`, `.pm`, `.pod`, `.t` | **[`Perltidy`](http://perltidy.sourceforge.net/)** |
| PHP | `PHP` |`.php`, `.module`, `.inc` | **[`PHP-CS-Fixer`](https://github.com/FriendsOfPHP/PHP-CS-Fixer)**, [`PHPCBF`](http://php.net/manual/en/install.php), [`hh_format`](http://hhvm.com/) |
| Puppet | `Puppet` |`.pp` | **[`puppet-lint`](http://puppet-lint.com/)** |
| Python | `Python`, `MagicPython` |`.py` | **[`autopep8`](https://github.com/hhatto/autopep8)**, [`pybeautifier`](https://github.com/guyskk/pybeautifier), [`yapf`](https://github.com/google/yapf) |
| R | `R` |`.r`, `.R` | **[`formatR`](https://github.com/yihui/formatR)** |
| Riot.js | `Riot.js`, `HTML (Riot Tag)` |`.tag` | **[`Pretty Diff`](https://github.com/prettydiff/prettydiff)** |
| Ruby | `Ruby`, `Ruby on Rails` |`.rb` | **[`Rubocop`](https://github.com/bbatsov/rubocop)**, [`Ruby Beautify`](https://github.com/erniebrodeur/ruby-beautify) |
| Rust | `Rust` |`.rs`, `.rlib` | **[`rustfmt`](https://github.com/rust-lang-nursery/rustfmt)** |
| Sass | `Sass` |`.sass` | **[`SassConvert`](http://sass-lang.com/documentation/file.SASS_REFERENCE.html#syntax)** |
| SCSS | `SCSS` |`.scss` | **[`Pretty Diff`](https://github.com/prettydiff/prettydiff)**, [`CSScomb`](https://github.com/csscomb/csscomb.js), [`Prettier`](https://github.com/prettier/prettier), [`SassConvert`](http://sass-lang.com/documentation/file.SASS_REFERENCE.html#syntax) |
| Spacebars | `Spacebars` | | **[`Pretty Diff`](https://github.com/prettydiff/prettydiff)** |
| SQL | `SQL (Rails)`, `SQL` |`.sql` | **[`sqlformat`](https://github.com/andialbrecht/sqlparse)** |
| SVG | `SVG` |`.svg` | **[`Pretty Diff`](https://github.com/prettydiff/prettydiff)** |
| Swig | `HTML (Swig)`, `SWIG` |`.swig` | **[`Pretty Diff`](https://github.com/prettydiff/prettydiff)** |
| Terraform | `Terraform` |`.tf` | **[`terraformfmt`](https://www.terraform.io/docs/commands/fmt.html)** |
| TSS | `TSS` |`.tss` | **[`Pretty Diff`](https://github.com/prettydiff/prettydiff)** |
| TSX | `TypeScriptReact` |`.tsx` | **[`TypeScript Formatter`](https://github.com/vvakame/typescript-formatter)** |
| Twig | `HTML (Twig)` |`.twig` | **[`Pretty Diff`](https://github.com/prettydiff/prettydiff)** |
| TypeScript | `TypeScript` |`.ts` | **[`TypeScript Formatter`](https://github.com/vvakame/typescript-formatter)**, [`Prettier`](https://github.com/prettier/prettier) |
| UX Markup | `UX` |`.ux` | **[`Pretty Diff`](https://github.com/prettydiff/prettydiff)** |
| Vala | `Vala` |`.vala`, `.vapi` | **[`Uncrustify`](https://github.com/uncrustify/uncrustify)** |
| Verilog | `Verilog` |`.svh`, `.v`, `.sv` | **[`Emacs Verilog Mode`](https://www.veripool.org/projects/verilog-mode/)** |
| VHDL | `VHDL 2008` |`.vhd`, `.VHD` | **[`VHDL Beautifier`](https://www.gnu.org/software/emacs/)** |
| Visualforce | `Visualforce` |`.page` | **[`Pretty Diff`](https://github.com/prettydiff/prettydiff)** |
| Vue | `Vue Component` |`.vue` | **[`Vue Beautifier`](https://github.com/Glavin001/atom-beautify/blob/master/src/beautifiers/vue-beautifier.coffee)**, [`ESLint Fixer`](https://github.com/eslint/eslint), [`Prettier`](https://github.com/prettier/prettier) |
| XML | `SLD`, `XML`, `XHTML`, `XSD`, `XSL`, `JSP`, `GSP` |`.sld`, `.xml`, `.xhtml`, `.xsd`, `.xsl`, `.jsp`, `.gsp`, `.plist`, `.recipe`, `.config` | **[`Pretty Diff`](https://github.com/prettydiff/prettydiff)**, [`JS Beautify`](https://github.com/beautify-web/js-beautify) |
| XTemplate | `XTemplate` |`.xtemplate` | **[`Pretty Diff`](https://github.com/prettydiff/prettydiff)** |
| YAML | `YAML` |`.yml`, `.yaml` | **[`align-yaml`](https://github.com/jonschlinkert/align-yaml)** |

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

See [`CONTRIBUTING.md`](CONTRIBUTING.md).

[See all contributors on GitHub](../../graphs/contributors).

Please update the [CHANGELOG.md](CHANGELOG.md),
add yourself as a contributor to the [package.json](package.json),
and submit a [Pull Request on GitHub](https://help.github.com/articles/using-pull-requests/).

## License

[MIT](LICENSE.md) © [Glavin Wiechert](https://github.com/Glavin001)

# v0.29.3 to v0.29.22 (2016-04-16 to 2017-04-15)
- Add support for additional wrap attribute options of js-beautify (html): force-aligned and force-expand-multiline.
- Update to `remark`'s new API and fix [#1196](https://github.com/Glavin001/atom-beautify/issues/1196)
- Add beautifier for the Lua language.
- Add [ocp-indent](https://github.com/OCamlPro/ocp-indent) beautifier for the OCaml language.
- Add [elm-format](https://github.com/avh4/elm-format) beautifier for the Elm language.
- Add [clang-format](http://clang.llvm.org/docs/ClangFormat.html) beautifier for C/C++/Obj-C languages.
- Add [yapf](http://github.com/google/yapf) beautifier for Python.
- Add [ESLint](https://github.com/eslint/eslint) beautifier for Javascript
- Closes [#776] (https://github.com/Glavin001/atom-beautify/issues/776) Add support for `collapse-preserve-inline` brace_style for javascript.
- Closes [#786](https://github.com/Glavin001/atom-beautify/issues/786) YAPF configuration files are ignored.
- Fix phpcbf hanging issue by closing stdin. See [#893](https://github.com/Glavin001/atom-beautify/issues/893)
- Add warning notification when parsing `.jsbeautifyrc` as JSON or YAML fails. See [#1106](https://github.com/Glavin001/atom-beautify/issues/1106)
- Add support for PrettyDiff's *bracepadding* option in JavaScript. See [#1157](https://github.com/Glavin001/atom-beautify/issues/1157)
- Closes [#447](https://github.com/Glavin001/atom-beautify/issues/447). Improved Handlebars language support
- Closes [#384](https://github.com/Glavin001/atom-beautify/issues/384). Add [latexindent.pl](https://github.com/cmhughes/latexindent.pl) beautifier for LaTeX language


# v0.29.2 (2016-04-08)
- See #924. Add more verbose debugging to beautifyFilePath
- See #864. Fix Logger to use renamed loggerLevel setting key
- See #919. Remove options from analytics tracking
- See #916. allow beatify `*.pug` files
- Closes #905. Add Handlebars support to Pretty Diff beautifier

# v0.29.2 (2016-04-08)
- See #898. Improve notification for unsupported settings

# v0.29.1 (2016-04-04)
- Fixes #891. Fix build-options postinstall script for Window

# v0.29.0 (2016-03-01)
- Fix deprecation warnings triggered by TextEditor methods. #885
- See #864. Add Migration command from old option keys to new keys
- See #713. Better settings and performance. #864
- See #876, #679. Build beautifier options postinstall instead of activate
- See #717. Remove unsupported options for Coldfusion language
- See #405, #782. Improve description of Beautify Entire File On Save option
- Fixes #758. Add XTemplate support to Pretty Diff beautifier
- Fixes #766. Change default beautifier of Riotjs to Pretty Diff
- Revert "Revert "Organize settings/options into groups that will be collapsable""

# v0.28.28 (2016-03-30)
- Closes #199. Add Jade/Pug beautify support
- Fixes #879. Fix circular structure in JSON config/settings
- Fix yapf style issue. #856
- Adds LaTeX language support. #845
- Added opencl language support. #872

# v0.28.27 (2016-03-27)
- Fixes #868. Update expand-home-dir to v0.0.3
-  Tabs changed to literal and default to using tabs

# v0.28.26 (2016-03-03)
- See #839, #844. Add test for unique language namespaces
- Update Lodash to v4.6.1
- Update Pretty Diff to v1.16.27
- Remove Haskell tests because it takes so long to install

# v0.28.25 (2016-03-02)
- Fixes #839. Throw error if languages have same namespace
- Implements #384
- Basic implementation for latex with latexindent.pl
- See #828, #757, #731, #750. Fix Riot.js support,

# v0.28.24 (2016-02-25)
- Revert "Organize settings/options into groups that will be collapsable"

# v0.28.23 (2016-02-25)
- Updating riotjs.coffee. #766
- Include Apex extension: "trigger". See #825
- Organize settings/options into groups that will be collapsable
- Fix PHPCBF error when path to executable is not set. #823
- See #733. Add language-d for testing and "d" extension to language file
- Rust - Add ability to read rustfmt.toml
- [#776] Bump jsbeautify to 1.6.2.  Add support for collapse-preserve-inline
- PHPCBF (PHP_CodeSniffer) + Remark for Markdown support
- Adds 'unchanged' option to the SQL beautifier
- See #524. Added pretty diff ternaryline option
- Add Apex language support
- add: remark for markdown
- adding support for phpcbf

# v0.28.22 (2016-02-08)
- adding support for grammar SLD. #763
- adding XHTML file extension as an XML grammar. #756
- Adding language Riot.js. #757
- Adding support for new HTML templating language: XTemplate. #758

# v0.28.21 (2016-01-12)
- Fixes #736. Change unformatted option default value to match js-beautify
- Improve Help Debug Editor with options for language & beautifier

# v0.28.20 (2016-01-11)
- Update Prettydiff dependency to 1.16.5
- Add support for Elm. #700
- Add Optional Path for Rubocop. #676
- Set ignoreResponseCode to true in yapf.coffee. #671
- added import sorting using isort + small yapf fix

# v0.28.19 (2015-11-19)
- Improved "Help Debug Editor" command. Result diff, shorten log path

# v0.28.18 (2015-11-14)
- See #535. Change on save check from editor.alive to editor.isAlive()
- Closes #535. Do not restore editor positions if editor is destroyed.
- Update Pretty Diff to v1.15.16 & fix JSX test

# v0.28.17 (2015-11-08)
- Improve CSScomb support
- YAPF fix. See #631
- PR #594 Fixing test for issue #524
- See #524. Added support for methodchain setting in prettydiff.
- JSP support via beautifying as XML in Pretty Diff
- Support dynamically reloading custom file .csscomb.json file changes

# v0.28.16 (2015-10-29)
- See #629. Support stylish-haskell

# v0.28.15 (2015-10-25)
- Fixes #428. Switch to event-kit, replacing emissary
- See #600. Fix README link to Keymaps In-Depth docs
- See #546. Add two beautifiers: clang-format and yapf

# v0.28.14 (2015-09-22)
- Close #561. Default prettydiff comments to indent

# v0.28.13 (2015-09-22)
- Closes #559. Add support for XSL and XSD grammars and file extensions

# v0.28.12 (2015-09-10)
- See #524, #534. Add end_with_comma option to JavaScript using Pretty Diff
- See #524 and #543. Add no_lead_zero to CSS with Pretty Diff support
-  Add extra_liners option from js-beautify in Settings View. See #540
- Closes #529. Improve documentation generation for package options

# v0.28.11 (2015-08-10)
- Properly dispose of event subscriptions. #501
- Fixes #496. Update Pretty Diff and fix adding two spaces incorrectly
- Properly dispose of all subscriptions

# v0.28.10 (2015-08-05)
- Handle language being null in Help Debug Editor command. #497

# v0.28.9 (2015-07-17)
- add language scopes to atom language config gets. #436
- Fixes #479. Fix handling perltidy_profile option when it is an empty string
- :bug: fix the race condition in beautify on save for setting cursor positions. #476
- Add Gherkin grammar support. #377
- Add Arduino language. #469

# v0.28.8 (2015-06-26)
- Beautify Swig templates with handlebars instead of markup. See #464
- Closes #447. Improved Handlebars language support
- Add SVG support. #449
- Added support of .rubocop.yml file in project root. #414

# v0.28.7 (2015-06-26)
- Add JSCS Fixer beautifier. #412
- Fix option, indent_size, to work with ruby-beautify

# v0.28.6 (2015-06-25)
- Closes #410. Add space_after_anon_function option to Pretty Diff
- Add more logging to beautifiers
- Add final options, package settings, language detected to Help Debug Editor. See #413. This extra info would be useful

# v0.28.5 (2015-06-14)
- Handle Windows command not found error being different. See #397
- Fix Windows spawn issues, switch to cross-spawn
- Fixes #397. sqlformat should not be able to be found and used.

# v0.28.4 (2015-06-12)
- See #390. Revert previous commit to fix PHP-CS-Fixer and rubocop
- See #390. Use global php-cs-fixer on Windows without running within php
- See #213. Disable `Beautify Directory` command from menus
- See #213. Add OK/Cancel buttons to Beautify Directory command
- See #213. Add warning to beautify-directory

# v0.28.3 (2015-06-11)
- Closes #264. Choose Pretty Diff beautifier as default for ERB
- Add indent_size option to htmlbeautifier
- Make Pretty Diff default beautifier for ERB
- See #394. Improve error message when program cannot be found
- Closes #142. Add options (tabs, spaces, indent_count) for Ruby-Beautify

# v0.28.2 (2015-06-10)
- Update all package dependencies
- Fix typo in beautify-languages-spec causing failing tests to pass
- Closes #341. Add indent_size option to Rubocop beautifier

# v0.28.1 (2015-06-10)
- Fixes #327. Only show beautify progress view when actually beautifying
- Closes #369. Allow JS Beautify to be used for XML language
- Add in-page links to documentation, to beautifiers, etc

# v0.28.0 (2015-06-08)
- Generate documentation for available options for each beautifier
- Closes #297, #265. Add missing Pretty Diff options for CSS/SCSS/Sass/LESS

# v0.27.13 (2015-06-08)
- Retrieve/use absolute path of executable within Beautifier::run. See #375.
- Add missing package dependencies for atom-typescript package
- See #375. Install htmlbeautifier, php-cs-fixer, emacs for Windows CI

# v0.27.12 (2015-06-06)
- Closes #309. Add language Twig and use Pretty Diff beautifier.

# v0.27.11 (2015-06-06)
- See #311. Show installation instructions when beautifiers are missing
    - autopep8
    - perltidy
    - ruby-beautify
    - sqlformat
    - uncrustify
- See #358. Add Rustfmt beautifier for Rust language support
- See #311. Closes #288. Show installation and setup instructions when cannot find php-cs-fixer
- Closes #311. Show more informative error when beautifier not found

# v0.27.10 (2015-06-01)
- Add Fortran language support (#383)
- See #375. Add Python, Pip, autopep8 installation to AppVeyor

# v0.27.9 (2015-05-28)
- Fixes #370. Nest EditorConfig options under `_default` namespace
- See #370. Resolve promises in allOptions for Help Debug Editor
- Update package dependencies.

# v0.27.8 (2015-05-22)
- Fixes #338. Restore cursor and scroll position for beautify on save
- See #372. Update engines field in package.json
- See #372. Fix deprecation, call ::getActiveTextEditor instead. Closes #366.
- See #372. Fix deprecation, switch to using atom-space-pen-views

# v0.27.7 (2015-05-27)
- Fixes #370. Allow Promises in allOptions for beautification

# v0.27.6 (2015-05-22)
- Enable typescript-formatter defaults

# v0.27.5 (2015-05-21)
- Closes #349. Add Visualforce language and use Pretty Diff beautifier
- Add check for when Language or Beautifier is not found in tests

# v0.27.4 (2015-05-20)
- See #144. Add JSX language tests
- Fixes #353. Fix support for extensions with getLanguages
- Add .js to the extensions supported by the JSX language
- fixes #144 for good

# v0.27.3 (2015-05-20)
- Fixes #288. Add custom command for PHP-CS-Fixer on Windows
- Closes #350. Add grammar HTML (Angular) to Embedded JavaScript language
- Update and fix Titanium Style Sheets tests
- Closes #351. Update TypeScript beautification tests
- fix typescript support

# v0.27.2 (2015-05-19)
- Closes #346. Merge options for language namespace, fallbacks, `_default`
- Update coffee-fmt to v0.10.2 and beautify internal source code
- Closes #323. Add language Swig with grammar HTML (Swig)
- Add debugging logs to JS-Beautify and Coffee-Fmt beautifiers
- Update package dependencies.
- Closes #332. Remove deprecated "Beautify: Beautify Editor" command
- Add debugging logs to JS-Beautify and Coffee-Fmt beautifiers
- Update package dependencies
- Closes #332. Remove deprecated "Beautify: Beautify Editor" command
- See #144. Add JavaScript (JSX) grammar to JSX language

# v0.27.1 (2015-05-07)
- Fixes #314. Beauify On Save will save then beautify the file on disk

# v0.27.0 (2015-05-06)
- Closes #178. Change commands' namespace from "beautify" to "atom-beautify"
- Closes #308. Beautify On Save is opt-in for each language
- See #296. Add package option for setting logger level

# v0.26.4 (2015-05-05)
- See #317. Use Warning notification, improve message for unsupported lang
- Closes #317. Switch from addFatalError to addError for showing errors
- Fixes #289. Remove deprecated subscription call to TextBuffer.on
- Update to PHP-CS-Fixer 1.7 and fix broken PHP tests
- Unify the look of the Gitter badge.

# v0.26.4 (2015-05-04)
- Fixes #305. Beautify input in single temp file for HTMLBeautifier

# v0.26.3 (2015-05-04)
- Closes #296. Add logging to `Help Debug Editor` command
- See #296. Add Logging API to Beautifier
- Update PHP tests to new PHP-CS-Fixer expected style

# v0.26.2 (2015-05-03)
- Remove Pandoc installation and ignore errors for Homebrew-PHP with Travis CI
- Update autopep8 and update failing Python test to pass
- See #294. Add missing argument to PHP-CS-Fixer beautifier
- Add support for beautifiers ignoring CLI return code
- Properly handle errors in spec tests with Promises

# v0.26.1 (2015-05-03)
- Fixes #301. Fix autopep8 beautifier's arguments
- See #292. Add more Markdown with YAML Front Matter tests

# v0.26.0 (2015-05-03)
- Closes [#176](https://github.com/Glavin001/atom-beautify/issues/176). Add [gofmt](http://golang.org/cmd/gofmt/) beautifier for Go language
- Closes [#192](https://github.com/Glavin001/atom-beautify/issues/192). Add [coffee-fmt](https://github.com/sterpe/coffee-fmt) beautifier for CoffeeScript language
- Closes [#209](https://github.com/Glavin001/atom-beautify/issues/209). Add [CSScomb](http://csscomb.com/) beautifier for CSS/LESS/SCSS/Sass languages.
> To switch from `JS Beautify` (CSS) or `Pretty Diff` (SCSS/Sass/LESS) to
using `CSScomb`, you will go into Atom Beautify package settings and
find the option for `Language Config -<Your Desired Language: CSS, etc>- Default Beautifier` and select `CSScomb`.
>
>CSScomb looks for a `.csscomb.json` file in your Atom's first project
directory. If it does not find one, or if importing it fails, it will
fallback to `csscomb` predefined configuration.


# v0.25.0 (2015-05-02)
- [Add new internal Beautifier API.](https://github.com/Glavin001/atom-beautify/issues/282)
- [Switch to using Tidy-Markdown instead of Pandoc for Markdown beautification](https://github.com/Glavin001/atom-beautify/issues/292)
    - Improve YAML Front-Matter support in Markdown. See [#261](https://github.com/Glavin001/atom-beautify/issues/261)
- [Add Rubocop beautifier for Ruby beautification](https://github.com/Glavin001/atom-beautify/pull/275)
- [Use Pretty Diff for XML Beautification](https://github.com/Glavin001/atom-beautify/issues/197)
- [Add EJS beautification support using Pretty Diff](https://github.com/Glavin001/atom-beautify/issues/136)
    - [Angular Template support by using EJS language beautifier, Pretty Diff](https://github.com/Glavin001/atom-beautify/issues/179)
- [Add Spacebars beautification support using Pretty Diff](https://github.com/Glavin001/atom-beautify/issues/217)

# v0.24.1 (2015-04-19)
- [Fix incorrect name for pandoc path option](https://github.com/Glavin001/atom-beautify/commit/2fe815e47cf8c95d099ee0f17b2c4d83dc8dd2ce)
- [Updates context-menu to use new api](https://github.com/Glavin001/atom-beautify/commit/6810805e3e290342a1060aca12c646724fc1694d)

# v0.24.0 (2015-04-07)
- Temporarily disable failing PHP tests
- Add Titanium style Sheets (TSS) support. See [#122][] and [#238][]

# v0.23.4 (2015-04-07)
- Rename incorrect `indent_character` option to `indent_char`. See [#266][]

# v0.23.3 (2015-04-07)
- Fix beautifying PHP with CLI path set for Windows. See [#269][]

# v0.23.2 (2015-04-05)
- Use svg instead of png to get better image quality, [#257][] [@PeterDaveHello][]
- TravisCI setup for php testing
- php is not necessary for php-beautify, [#263][] [@MGAio][]

# v0.23.1 (2015-03-25)
- Add check for Windows and use windows specific 'mv' command, [#251][] [@rrushton][]

# v0.23.0 (2015-03-20)
- Switch to PHP Coding Standards Fixer, [#242][] [@rrushton][]
- Fix failing tests for LESS and SASS.

# v0.22.5 (2015-03-20)
- Add Preserve new lines support for LESS/SCSS. See [#245][] and [#180][]

# v0.22.4 (2015-03-20)
- Change Debug command name to make `beautify editor` first. See [#240][]

# v0.22.3 (2015-03-16)
- Add another Titanium Style Sheet (disabled) test. See [#216][] and [#122][]
- Fix bug in Debug command when Text Editor not selected. See [#237][]

# v0.22.2 (2015-03-16)
- Add Titanium Style Sheet example (disabled) test. See [#122][]
- Redirect bashrc and bash_profile pipes to /dev/null. See [#215][]
- Update prettydiff dependency to 0.11.0

# v0.22.1 (2015-03-16)
- Add tilda (~) support for Uncrustify config paths. See [#235][]

# v0.22.0 (2015-03-16)
- [Add donation information](https://github.com/Glavin001/atom-beautify/commit/daf32301198d6d6bf2f5b79de2163fa829e4c259)
- Add debugging information command. See [#237][]

# v0.21.6 (2015-03-12)
- Add option for htmlbeautifier path. See [#232][]
- Add ASP.NET Web Forms and User Controls support. See [#230][]

# v0.21.5 (2015-03-11)
- Disable `Beautify Directory` menu option. See [#213][]

# v0.21.4 (2015-03-07)
- [Update options for js-beautify (HTML wrap-attributes, wrap-attributes-indent-size)](https://github.com/filipesilva/atom-beautify/commit/fdd1668c20d2e2f7a5e7bd0c1459638309e6f130)

# v0.21.3 (2015-02-08)
- [Fixes [#181][] and fixes [#180][]. Clean up LESS/SCSS Unit Tests and update Prettydiff](https://github.com/Glavin001/atom-beautify/commit/a50c5a3c4c884a2eddec7e36c1723eeef97c3758)
- [Updates to Atoms new API](https://github.com/Glavin001/atom-beautify/commit/d24a454ef7b011c7d4d63b7ba1757b8d0a0ced28)
- [Updating selectors to new Atom API](https://github.com/Glavin001/atom-beautify/commit/d2ad4ccbfeec55fb3656e6aed64b88ddefa8a27d)

# v0.21.2 (2015-01-06)
- [Fixes [#177][]. Update keybinding to beautify:beautify-editor](https://github.com/Glavin001/atom-beautify/commit/5aaeae4cc77b4805a4a41df42fe8708f5495f963)

# v0.21.1 (2015-01-03)
- [Fixes [#173][]. Remove @ prefix from showError call](https://github.com/Glavin001/atom-beautify/commit/c110ca72a4e8e7f944facb1cf7d107a65697b551)

# v0.21.0 (2015-01-03)
- [Closes [#172][], [#146][]. Update to new Atom Config API.](https://github.com/Glavin001/atom-beautify/commit/eb1471d23b1c2b704b8b3afa17462b4e73bc20f9)

>What's new:
- Add settings descriptions
- Update options for js-beautify (JS, CSS, HTML)
- Update Spec to support new changes

# v0.20.2 (2015-01-02)
- [Fixes [#171][]. Fix typo for CSS indent_char](https://github.com/Glavin001/atom-beautify/commit/c4c847948d5f88eb44b672d3471ceb92b126b5e3)

# v0.20.1 (2015-01-02)
- [Fixes [#169][]. Remove JS-Yaml and use YAML-Front-Matter, resolving conflict](https://github.com/Glavin001/atom-beautify/commit/f280469e77a8e6d1014e18c2c0ba717e9b15743e)

# v0.20.0 (2015-01-02)
- [Closes [#169][]. Add YAML Front Matter support to Markdown beautification](https://github.com/Glavin001/atom-beautify/commit/e7a980045d769897011606aaa40e44db8de5ba6c)

# v0.19.0 (2015-01-01)
- [Closes [#36][]. Add right-click beautification of directory (sub-files)](https://github.com/Glavin001/atom-beautify/commit/bd278968b4b54ee9586682252de6b320d302bcce)

# v0.18.0 (2015-01-01)
- [Add Specs (Unit Tests) and Travis CI automated testing](https://github.com/Glavin001/atom-beautify/issues/18)
- [Fixes [#149][]. Update prettydiff to fix interpolated text vars in SCSS](https://github.com/Glavin001/atom-beautify/commit/dc1e720e908cbd60ae93316975c39628be105901)
- [Closes [#159][], [#149][]. Update prettydiff to fix LESS and SCSS.](https://github.com/Glavin001/atom-beautify/commit/3550280502fbfda4bf9b4467172f423cd94694ea)
- [Fixes [#168][]. Update Coffee-Formatter to fix broken CoffeeScript beautifier](https://github.com/Glavin001/atom-beautify/commit/259bb7083d367cabba10312e2bed40f3265fa6dc)
- [See [#36][]. Add right-click Beautification of single files in Tree view](https://github.com/Glavin001/atom-beautify/commit/e678fdf759a338f74c9111c993474b06f6f29644)
- [Fix feature, disabling language beautification, where `disabledLanguages = null`](https://github.com/Glavin001/atom-beautify/commit/264821c30a34f3edd365e8f9e9fee4b68afd1a07)
- [Improve handling options in Python beautifier.](https://github.com/Glavin001/atom-beautify/commit/974897b6f87023f954724e2c4c70e0ec4b49e7ed)
- [Improve SQL Beautifier to support missing config options.](https://github.com/Glavin001/atom-beautify/commit/b7a34b6178f06030604479590b2e226da85b5912)
- [Throw error if trying to beautify Perl without setting Perl Tidy path](https://github.com/Glavin001/atom-beautify/commit/77f58bbfc778730de4055e050fd40d2ce46d0439)
- [Improve CLI Beautify class to handle more error catching](https://github.com/Glavin001/atom-beautify/commit/60f6a9bd075b6b18653e99724d3b8b47e7197d95)

# v0.17.3 (2014-12-27)
- [Fixes [#148][]. Fix PHP for when filters are not set.](https://github.com/Glavin001/atom-beautify/commit/9b38dc3badb062ba8212c126b13d6965a8ce9276)
- [Get Atom User settings instead of only default settings](https://github.com/Glavin001/atom-beautify/commit/3499c111200cb2e7f6374622f7bb86c91c7820c1)

# v0.17.2 (2014-12-14)
- [Fixes [#135][]. Switch from Git to npm Coffee-Formatter dependency.](https://github.com/Glavin001/atom-beautify/commit/ff4a5a3a716a642b9c426a3b41f76094a372132e)

# v0.17.1 (2014-11-19)
- [Closes [#107][]. Add PHP options for filters and directory_filters](https://github.com/Glavin001/atom-beautify/commit/c6c6d95a3e62e7453d732f2bab7619464bc5b875)

# v0.17.0 (2014-11-16)
- [Add support for HTML (Rails) and Ruby on Rails grammar](https://github.com/Glavin001/atom-beautify/commit/ba7d9ce799b4284a77dd22fc4139d01fdee08b18)
- [disable beautification of specific languages](https://github.com/Glavin001/atom-beautify/commit/f0ed7ac5ad5e54d8f653fd8aba23aaf53ed42fc6)

# v0.16.0 (2014-11-16)
- [Fixes [#140][]. Update js-beautify dependency to 1.5.4.](https://github.com/Glavin001/atom-beautify/commit/428ebe44f9d542f5082807b2fbdabf7282160ec7)
- [Perl support (using perltidy) (see Glavin001/atom-beautify[#33][])](https://github.com/Glavin001/atom-beautify/commit/f64d2bae2012e004f7e3b5bb6bc6ffdc1d59fded)

# v0.15.1 (2014-10-26)
- [Fixes [#103][]. BeautifyEntireFileOnSave only applies when saving](https://github.com/Glavin001/atom-beautify/commit/dda313fbfe47f9d273e06e8e380f2e4c311c1b84)

# v0.15.0 (2014-10-26)
- [Closes [#123][]. Add Mustache support.](https://github.com/Glavin001/atom-beautify/commit/ecbbbaec2942ed95461e2c103d23bd3665edab2e)

# v0.14.1 (2014-10-21)
- [Closes [#127][]. Increase startup time by using ActivationEvents](https://github.com/Glavin001/atom-beautify/commit/c0ee2bed96499ac71ea1266ccb227e9b3581c935)

# v0.14.0 (2014-10-16)
- [Closes [#49][]. Add TypeScript support](https://github.com/Glavin001/atom-beautify/commit/dcc9e2d3b58767578006ffacaca198da69fa3832)

# v0.13.4 (2014-10-05)
- [Fixes [#110][]. Fixes Handlebars missing beautification](https://github.com/Glavin001/atom-beautify/commit/120315f90d5a0bbdade2728472926f965150e7c1)

# v0.13.3 (2014-10-05)
- [Resolve Unsafe-Eval error for Atom >=0.128.0](https://github.com/Glavin001/atom-beautify/commit/fbc58a648d3ccd845548d556f3dd1e046075bf04)

# v0.13.2 (2014-09-28)
- [Fixes [#96][]. Fix support for Alphasort option for LESS/SCSS properties](https://github.com/Glavin001/atom-beautify/commit/ccc8802f36fe15c4f29abffcd974cb0c7d1acdad)

# v0.13.1 (2014-09-28)
- [Fixes [#102][]. Fix error when beautifying Python using custom autopep8 path](https://github.com/Glavin001/atom-beautify/commit/7e828be19961bd29bf0615f9b0ca71b608191a94)

# v0.13.0 (2014-09-28)
- [Closes [#105][]. Add options to mute errors.](https://github.com/Glavin001/atom-beautify/commit/79fcdd9111fffc883305cb1b00b2f23806192952)

>New package options:
- muteUnsupportedLanguageErrors
- muteAllErrors

# v0.12.0 (2014-09-18)
- [Closes [#93][]. Implement normalizing markdown through pandoc](https://github.com/Glavin001/atom-beautify/commit/ad662271c14f3ff4440d933b2c1c0ce6caf5b53b)

# v0.11.1 (2014-09-16)
- [Closes [#96][]. Update Pretty-Diff dependency to ^1.2.4](https://github.com/Glavin001/atom-beautify/commit/80e1c03885688b6615e142dc347b4c7e10d27694)

# v0.11.0 (2014-09-15)
- [Closes [#91][]. Add configuration option for custom Uncrustify path](https://github.com/Glavin001/atom-beautify/commit/fefb25bf380c846222ec9f288c869d4765e03b2a)

# v0.10.4 (2014-09-12)
- [Fix support for editorconfig with indent style = 'tab'](https://github.com/Glavin001/atom-beautify/commit/7c56d84385e91798556ed534e1dfc4129a107d4b)

# v0.10.3 (2014-09-10)
- [Closes [#84][]. Improve the error message panel to only appear on new error](https://github.com/Glavin001/atom-beautify/commit/31b217859e714767c5784f5613149304ddd4b9ad)

# v0.10.2 (2014-09-10)
- [Fixes [#85][]. Add support for Windows for upwards recursive .jsbeautifyrc (see [#37][])](https://github.com/Glavin001/atom-beautify/commit/490cd7ee051926f3c143bc0b9873fa1bc7cd9828)

# v0.10.1 (2014-09-10)
- [Fixes [#68][]. Fix error when beautifying file that is "untitled".](https://github.com/Glavin001/atom-beautify/commit/2cd3bef6e0d6493d85dd85796ad67e0305e7ffc9)

# v0.10.0 (2014-09-09)
- [Closes [#68][]. Support editorconfig files.](https://github.com/Glavin001/atom-beautify/commit/baf3e49b97c5366829f021d843f3b6beb7d92a8c)

# v0.9.0 (2014-09-09)
- [Closes [#37][]. Support upwards recursive .jsbeautifyrc fallback.](https://github.com/Glavin001/atom-beautify/commit/738deace29fbcc981e96599bd9cd55f4010e4106)

>Priority hierarchy:
- Atom editor settings
- Atom Beautify package settings
- Home directory .jsbeautifyrc file configuration
- Closest EditorConfig file (see [#68][])
- Project options (from closest .jsbeautifyrc file to the beautified
  editor's file to root, "/")

# v0.8.1 (2014-09-09)
- [Fixes [#70][]. Update Pretty-Diff dep. from ^1.0.23 to ^1.2.1](https://github.com/Glavin001/atom-beautify/commit/c6a4101893a1ac91df58df02f033000bc36ea637)

# v0.8.0 (2014-09-09)
- [Closes [#80][]. Add HTML Embedded Ruby (ERB) support.](https://github.com/Glavin001/atom-beautify/commit/6652e7f703575ed5666825d47cc05d6e48cb37cf)

# v0.7.1 (2014-09-09)
- [Fix typo from `.bash_rc` to `.bashrc` for cli-beautify](https://github.com/Glavin001/atom-beautify/commit/d595ea7479a89cad58200613c4893927428be034)

# v0.7.1 (2014-09-09)
- [Fixes [#81][]. Beautify on Save now retains `this` scope when beautifying](https://github.com/Glavin001/atom-beautify/commit/516c35623888634a3ffcca845fed6b962749fbf2)

# v0.7.0 (2014-09-08)
- [See [#77][]. Add example of broken SCSS case.](https://github.com/Glavin001/atom-beautify/commit/4f5c75c5e3a5a934a7c36094e60d15022df0e564)
- [See [#71][]. Add example JS file using reserved words to test [#7][]1](https://github.com/Glavin001/atom-beautify/commit/1130b58114cba90828aa2d37de42b800d15ae081)
- [See [#56][]. Work on MessageView UI.](https://github.com/Glavin001/atom-beautify/commit/05ee8f22b3b975a52d2fbbe998d4c49fbe9ae274)
- [See [#56][]. Add "Beautification in progress" view.](https://github.com/Glavin001/atom-beautify/commit/6b2b306b9daf6a1594cefd357ce0d9c8ce3f7155)
- [See [#56][]. Add Atom-Message-Panel to display Unsupported Language messages](https://github.com/Glavin001/atom-beautify/commit/ffa2249c3e87d217cc544a71e23e389f97d978d7)

# v0.6.5 (2014-09-08)
- [Fixes [#76][]. Add package option "Beautify Entire File On Save"](https://github.com/Glavin001/atom-beautify/commit/528c7dc281bc85c4132ce0cadf3740c04c3cc6e8)
- [Closes [#78][]. Improve startup performance.](https://github.com/Glavin001/atom-beautify/commit/9c1965dec6233205639fd342daf20ab4b145ced6)
- [See [#61][]. Add LESS example with Mixins to test.](https://github.com/Glavin001/atom-beautify/commit/7dbff2cbc1959ca4630f44e9a6755807e34c0c85)
- [See [#56][]. Start implementing of Message View.](https://github.com/Glavin001/atom-beautify/commit/0804cade1f09a8436f69e572c7bd5f725742db41)

# v0.6.4 (2014-09-04)
- [Fixes [#73][]. Prevent extra cursor appearing at end of file](https://github.com/Glavin001/atom-beautify/commit/e599387d2025ab53e4db009d597816e23783850d)

# v0.6.3 (2014-08-30)
- [Closes [#60][]. Convert package scripts from JavaScript to CoffeeScript.](https://github.com/Glavin001/atom-beautify/commit/09c6770cd2768ddb8dd635c2508065a40f909729)
- [Replacing node-parse with sqlparse for SQL beautification support](https://github.com/Glavin001/atom-beautify/commit/a2fbf0c47d0abeabbaa7289b4f32e261525d0182)

# v0.6.2 (2014-08-09)
- [Fixes [#59][]. Remove ActivationEvents to allow for beautifyOnSave.](https://github.com/Glavin001/atom-beautify/commit/649f023d9c5066a85c114dc2d8bcd1feb4303158)

# v0.6.1 (2014-08-08)
- [Closes [#57][]. Customization in .jsbeautifyrc file now generates the config (.cfg) file for Uncrustify beautification.](https://github.com/Glavin001/atom-beautify/commit/325ada78510866487cb3aab9ae10e208b544eb1c)

# v0.6.0 (2014-08-08)

- [See [#57][]. Add Uncrustify beautifier for multiple language support.](https://github.com/Glavin001/atom-beautify/commit/5d6751cb4bd331ec1066b09bc457a73e1619e51b)

>Uncrustify Language support:
- C
- C++
- C#
- Objective-C
- Java
- D
- Pawn
- Vala
>
>Closes [#45][]. Add Java Support.

# v0.5.0 (2014-08-04)
- [See [#47][]. Update configuration to allow users to disable analytics.](https://github.com/Glavin001/atom-beautify/commit/8d90b30448a0c3df5eeca0d6f52bb8e9c3e3880e)

# v0.5.1 (2014-08-04)
- [Closes [#44][]. Switch to using Pretty Diff for SASS, as well.](https://github.com/Glavin001/atom-beautify/commit/1f0fb9c0db43b71816caf3c1d1d235484cbcd53a)
- [See [#54][]. Use indent_size and indent_character options.](https://github.com/Glavin001/atom-beautify/commit/1f0fb9c0db43b71816caf3c1d1d235484cbcd53a)

# v0.5.0 (2014-08-04)
- [Closes [#31][]. Add CoffeeScript support.](https://github.com/Glavin001/atom-beautify/commit/3c9836f920bea72396d03ac0b022b5f753776b55)

# v0.4.4 (2014-08-03)
- [See [#51][]. Work on improving PHP support and deubgging errors.](https://github.com/Glavin001/atom-beautify/commit/7fdde0f8a68c8eecc2879c6bfe2369c4abfc904d)

# v0.4.3 (2014-08-03)
- [Closes [#47][]. Switch Analytics from Google Analytics to Segment.io](https://github.com/Glavin001/atom-beautify/commit/fabed8fad30d36c0ffe42ed070f5495a7b7c1b14)

# v0.4.2 (2014-08-03)
- [Fixes [#54][]. LESS beautifier using PrettyDiff now fixed.](https://github.com/Glavin001/atom-beautify/commit/010863f5cce73740371b16b4077f58eab9b98cf6)

# v0.4.1 (2014-08-01)

- [Closes [#54][]. Switch to using Pretty Diff for LESS support. Fixes [#52][]. Fixes [#52][].](https://github.com/Glavin001/atom-beautify/commit/5bff9ebc4840aa18e38b468b7a5310c56b7ab302)

# v0.4.0 (2014-07-12)

- [Closes [#47][]. Add Google Analytics.](https://github.com/Glavin001/atom-beautify/commit/d8fb27289d4c1db7fde878002f442ae53d41f840)

# v0.3.8 (2014-07-09)

- [Closes [#46][]. Use ActivationEvents to speed up loading time.](https://github.com/Glavin001/atom-beautify/commit/4271bfe8d72f04ef25cc136684c5e9a78636c399)

# v0.3.7 (2014-07-03)
# v0.3.6 (2014-07-03)
# v0.3.5 (2014-07-03)

- [See [#40][]. Migrating ownership to Glavin001 for maintaining.](https://github.com/Glavin001/atom-beautify/commit/d94d152621c431d358e8624bf67827e972756553)

# v0.3.4 (2014-06-28)
- [Closes [#35][]. Add more options for Python PEP8 beautifying.](https://github.com/Glavin001/atom-beautify/commit/65ff7f9f7a040e9ad3a881ef0a6af387df644120)

# v0.3.3 (2014-06-16)
- [Closes [#24][]. Add Python (PEP 8) support.](https://github.com/Glavin001/atom-beautify/commit/612c7dc17c20f01c36476e0432baf20bcab94ca4)
- [Closes [#25][]. Add Ruby support.](https://github.com/Glavin001/atom-beautify/commit/88651447a721f73fb58ae076b04ae296f0b4318b)
- See [#18][]. Worked on setting up Travis CI and providing unit tests. Not closed.

# v0.3.2 (2014-06-14)
- [Fixes [#9][]. Nested options in .jsbeautifyrc are properly handled.](https://github.com/Glavin001/atom-beautify/commit/54e61a816f7fd087822d44c97ed3ab8c7130a845)
- [Closes [#21][]. Parsing .jsbeautifyrc falls back to YAML, when JSON fails.](https://github.com/Glavin001/atom-beautify/commit/78e0382c15b1a7587b8fcbe93af5b5fc20ba8fc7)
- [Closes [#22][]. Use Atom Package Settings as configuration options.](https://github.com/Glavin001/atom-beautify/commit/479034dae7af1080726e508d18fb6a9c8588d800)

# v0.3.1 (2014-06-14)
- [See [#14][]. Add JSON support.](https://github.com/Glavin001/atom-beautify/commit/978a6c5a43e910f322a476fb69230e6ec95e8a82)
- [Closes [#14][]. Completed support for SQL.](https://github.com/Glavin001/atom-beautify/commit/2e57630275773b331becc2fcadaf558e370750e6)

# v0.3.0 (2014-06-13)
- [Allowing either flat or nested .jsbeautifyrc schemas](https://github.com/Glavin001/atom-beautify/commit/cf1ea6db16d2188ddef5e6c1fb4d000cab67f99c)
- [Use beautifyHTML to beautify HTML (Liquid) files.](https://github.com/Glavin001/atom-beautify/commit/45352dd90591826e72054536f671b9eb074a9843)
- [Closes [#15][]. Support loading .jsbeautifyrc from Project directory.](https://github.com/Glavin001/atom-beautify/commit/4fdab9759b5a774c467434a410c203eb4aeb74d8)
- [See [#15][]. Updated README to reflect better .jsbeautifyrc support.](https://github.com/Glavin001/atom-beautify/commit/4d486794b4e9ba58d206c8e16d325b2f1d693d30)
- [Fixes [#16][]. Custom configuration options are now working correctly.](https://github.com/Glavin001/atom-beautify/commit/58a375f8b6823fda7632f53d145e3e2d21e16dcd)
- [Closes [#13][]. Add Handlebars support.](https://github.com/Glavin001/atom-beautify/commit/b530eda6e3347179dd14fb671801b94a7269f2ad)
- [Fixes [#19][]. Can now beautify new files that have not been created/saved.](https://github.com/Glavin001/atom-beautify/commit/c34f6f9419284697bd3c04ddc0e400ae0600ca4d)
- [Closes [#20][]. Add Sass and LESS support. Update README.](https://github.com/Glavin001/atom-beautify/commit/eacf2329daf86bd21d7bda992a9b08379de67f2c)
- [See [#15][]. Remove shelljs dependency and fixed typos.](https://github.com/Glavin001/atom-beautify/commit/a2dc4bd7db7893b11b53af41bb4556158bb81ed5)

# v0.2.6 (2014-05-15)
- version bump
- added `"jslint_happy": true` to own `.jsbeautifierrc`

# v0.2.5 (2014-05-14)
- fixed issue [#7][] (Place cursor back to edited place after beautifying)
- fixed issue [#8][] (Ignore jsbeautify when editing .jsbeautifyrc in place)

# v0.2.3 (2014-05-13)

- support `.jsbeautifierrc` (thanks [@karolyi][])
- fixed: reload on save (thanks [@karolyi][])

# v0.2.2 (2014-03-18)

- added experimental support for XML (thanks [@mtanzi][])

# v0.2.1 (2014-03-12)

- added option to beautify on save

# v0.2.0 (2014-03-11)

- public release
- beautify JS, HTML and CSS files based on current editor settings

<!--- The following link definition list is generated by PimpMyChangelog --->
[#7]: https://github.com/Glavin001/atom-beautify/issues/7
[#8]: https://github.com/Glavin001/atom-beautify/issues/8
[#9]: https://github.com/Glavin001/atom-beautify/issues/9
[#13]: https://github.com/Glavin001/atom-beautify/issues/13
[#14]: https://github.com/Glavin001/atom-beautify/issues/14
[#15]: https://github.com/Glavin001/atom-beautify/issues/15
[#16]: https://github.com/Glavin001/atom-beautify/issues/16
[#18]: https://github.com/Glavin001/atom-beautify/issues/18
[#19]: https://github.com/Glavin001/atom-beautify/issues/19
[#20]: https://github.com/Glavin001/atom-beautify/issues/20
[#21]: https://github.com/Glavin001/atom-beautify/issues/21
[#22]: https://github.com/Glavin001/atom-beautify/issues/22
[#24]: https://github.com/Glavin001/atom-beautify/issues/24
[#25]: https://github.com/Glavin001/atom-beautify/issues/25
[#31]: https://github.com/Glavin001/atom-beautify/issues/31
[#33]: https://github.com/Glavin001/atom-beautify/issues/33
[#35]: https://github.com/Glavin001/atom-beautify/issues/35
[#36]: https://github.com/Glavin001/atom-beautify/issues/36
[#37]: https://github.com/Glavin001/atom-beautify/issues/37
[#40]: https://github.com/Glavin001/atom-beautify/issues/40
[#44]: https://github.com/Glavin001/atom-beautify/issues/44
[#45]: https://github.com/Glavin001/atom-beautify/issues/45
[#46]: https://github.com/Glavin001/atom-beautify/issues/46
[#47]: https://github.com/Glavin001/atom-beautify/issues/47
[#49]: https://github.com/Glavin001/atom-beautify/issues/49
[#51]: https://github.com/Glavin001/atom-beautify/issues/51
[#52]: https://github.com/Glavin001/atom-beautify/issues/52
[#54]: https://github.com/Glavin001/atom-beautify/issues/54
[#56]: https://github.com/Glavin001/atom-beautify/issues/56
[#57]: https://github.com/Glavin001/atom-beautify/issues/57
[#59]: https://github.com/Glavin001/atom-beautify/issues/59
[#60]: https://github.com/Glavin001/atom-beautify/issues/60
[#61]: https://github.com/Glavin001/atom-beautify/issues/61
[#68]: https://github.com/Glavin001/atom-beautify/issues/68
[#70]: https://github.com/Glavin001/atom-beautify/issues/70
[#71]: https://github.com/Glavin001/atom-beautify/issues/71
[#73]: https://github.com/Glavin001/atom-beautify/issues/73
[#76]: https://github.com/Glavin001/atom-beautify/issues/76
[#77]: https://github.com/Glavin001/atom-beautify/issues/77
[#78]: https://github.com/Glavin001/atom-beautify/issues/78
[#80]: https://github.com/Glavin001/atom-beautify/issues/80
[#81]: https://github.com/Glavin001/atom-beautify/issues/81
[#84]: https://github.com/Glavin001/atom-beautify/issues/84
[#85]: https://github.com/Glavin001/atom-beautify/issues/85
[#91]: https://github.com/Glavin001/atom-beautify/issues/91
[#93]: https://github.com/Glavin001/atom-beautify/issues/93
[#96]: https://github.com/Glavin001/atom-beautify/issues/96
[#102]: https://github.com/Glavin001/atom-beautify/issues/102
[#103]: https://github.com/Glavin001/atom-beautify/issues/103
[#105]: https://github.com/Glavin001/atom-beautify/issues/105
[#107]: https://github.com/Glavin001/atom-beautify/issues/107
[#110]: https://github.com/Glavin001/atom-beautify/issues/110
[#122]: https://github.com/Glavin001/atom-beautify/issues/122
[#123]: https://github.com/Glavin001/atom-beautify/issues/123
[#127]: https://github.com/Glavin001/atom-beautify/issues/127
[#135]: https://github.com/Glavin001/atom-beautify/issues/135
[#140]: https://github.com/Glavin001/atom-beautify/issues/140
[#146]: https://github.com/Glavin001/atom-beautify/issues/146
[#148]: https://github.com/Glavin001/atom-beautify/issues/148
[#149]: https://github.com/Glavin001/atom-beautify/issues/149
[#159]: https://github.com/Glavin001/atom-beautify/issues/159
[#168]: https://github.com/Glavin001/atom-beautify/issues/168
[#169]: https://github.com/Glavin001/atom-beautify/issues/169
[#171]: https://github.com/Glavin001/atom-beautify/issues/171
[#172]: https://github.com/Glavin001/atom-beautify/issues/172
[#173]: https://github.com/Glavin001/atom-beautify/issues/173
[#177]: https://github.com/Glavin001/atom-beautify/issues/177
[#180]: https://github.com/Glavin001/atom-beautify/issues/180
[#181]: https://github.com/Glavin001/atom-beautify/issues/181
[#213]: https://github.com/Glavin001/atom-beautify/issues/213
[#215]: https://github.com/Glavin001/atom-beautify/issues/215
[#216]: https://github.com/Glavin001/atom-beautify/issues/216
[#230]: https://github.com/Glavin001/atom-beautify/issues/230
[#232]: https://github.com/Glavin001/atom-beautify/issues/232
[#235]: https://github.com/Glavin001/atom-beautify/issues/235
[#237]: https://github.com/Glavin001/atom-beautify/issues/237
[#238]: https://github.com/Glavin001/atom-beautify/issues/238
[#240]: https://github.com/Glavin001/atom-beautify/issues/240
[#242]: https://github.com/Glavin001/atom-beautify/issues/242
[#245]: https://github.com/Glavin001/atom-beautify/issues/245
[#251]: https://github.com/Glavin001/atom-beautify/issues/251
[#257]: https://github.com/Glavin001/atom-beautify/issues/257
[#263]: https://github.com/Glavin001/atom-beautify/issues/263
[#266]: https://github.com/Glavin001/atom-beautify/issues/266
[#269]: https://github.com/Glavin001/atom-beautify/issues/269
[@MGAio]: https://github.com/MGAio
[@PeterDaveHello]: https://github.com/PeterDaveHello
[@karolyi]: https://github.com/karolyi
[@mtanzi]: https://github.com/mtanzi
[@rrushton]: https://github.com/rrushton

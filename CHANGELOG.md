# v0.14.0 (2014-10-16)
- [Closes #49. Add TypeScript support](https://github.com/Glavin001/atom-beautify/commit/dcc9e2d3b58767578006ffacaca198da69fa3832)

# v0.13.4 (2014-10-05)
- [Fixes #110. Fixes Handlebars missing beautification](https://github.com/Glavin001/atom-beautify/commit/120315f90d5a0bbdade2728472926f965150e7c1)

# v0.13.3 (2014-10-05)
- [Resolve Unsafe-Eval error for Atom >=0.128.0](https://github.com/Glavin001/atom-beautify/commit/fbc58a648d3ccd845548d556f3dd1e046075bf04)

# v0.13.2 (2014-09-28)
- [Fixes #96. Fix support for Alphasort option for LESS/SCSS properties](https://github.com/Glavin001/atom-beautify/commit/ccc8802f36fe15c4f29abffcd974cb0c7d1acdad)

# v0.13.1 (2014-09-28)
- [Fixes #102. Fix error when beautifying Python using custom autopep8 path](https://github.com/Glavin001/atom-beautify/commit/7e828be19961bd29bf0615f9b0ca71b608191a94)

# v0.13.0 (2014-09-28)
- [Closes #105. Add options to mute errors.](https://github.com/Glavin001/atom-beautify/commit/79fcdd9111fffc883305cb1b00b2f23806192952)

>New package options:
- muteUnsupportedLanguageErrors
- muteAllErrors

# v0.12.0 (2014-09-18)
- [Closes #93. Implement normalizing markdown through pandoc](https://github.com/Glavin001/atom-beautify/commit/ad662271c14f3ff4440d933b2c1c0ce6caf5b53b)

# v0.11.1 (2014-09-16)
- [Closes #96. Update Pretty-Diff dependency to ^1.2.4](https://github.com/Glavin001/atom-beautify/commit/80e1c03885688b6615e142dc347b4c7e10d27694)

# v0.11.0 (2014-09-15)
- [Closes #91. Add configuration option for custom Uncrustify path](https://github.com/Glavin001/atom-beautify/commit/fefb25bf380c846222ec9f288c869d4765e03b2a)

# v0.10.4 (2014-09-12)
- [Fix support for editorconfig with indent style = 'tab'](https://github.com/Glavin001/atom-beautify/commit/7c56d84385e91798556ed534e1dfc4129a107d4b)

# v0.10.3 (2014-09-10)
- [Closes #84. Improve the error message panel to only appear on new error](https://github.com/Glavin001/atom-beautify/commit/31b217859e714767c5784f5613149304ddd4b9ad)

# v0.10.2 (2014-09-10)
- [Fixes #85. Add support for Windows for upwards recursive .jsbeautifyrc (see #37)](https://github.com/Glavin001/atom-beautify/commit/490cd7ee051926f3c143bc0b9873fa1bc7cd9828)

# v0.10.1 (2014-09-10)
- [Fixes #68. Fix error when beautifying file that is "untitled".](https://github.com/Glavin001/atom-beautify/commit/2cd3bef6e0d6493d85dd85796ad67e0305e7ffc9)

# v0.10.0 (2014-09-09)
- [Closes #68. Support editorconfig files.](https://github.com/Glavin001/atom-beautify/commit/baf3e49b97c5366829f021d843f3b6beb7d92a8c)

# v0.9.0 (2014-09-09)
- [Closes #37. Support upwards recursive .jsbeautifyrc fallback.](https://github.com/Glavin001/atom-beautify/commit/738deace29fbcc981e96599bd9cd55f4010e4106)

>Priority hierarchy:
- Atom editor settings
- Atom Beautify package settings
- Home directory .jsbeautifyrc file configuration
- Closest EditorConfig file (see #68)
- Project options (from closest .jsbeautifyrc file to the beautified
  editor's file to root, "/")

# v0.8.1 (2014-09-09)
- [Fixes #70. Update Pretty-Diff dep. from ^1.0.23 to ^1.2.1](https://github.com/Glavin001/atom-beautify/commit/c6a4101893a1ac91df58df02f033000bc36ea637)

# v0.8.0 (2014-09-09)
- [Closes #80. Add HTML Embedded Ruby (ERB) support.](https://github.com/Glavin001/atom-beautify/commit/6652e7f703575ed5666825d47cc05d6e48cb37cf)

# v0.7.1 (2014-09-09)
- [Fix typo from `.bash_rc` to `.bashrc` for cli-beautify](https://github.com/Glavin001/atom-beautify/commit/d595ea7479a89cad58200613c4893927428be034)

# v0.7.1 (2014-09-09)
- [Fixes #81. Beautify on Save now retains `this` scope when beautifying](https://github.com/Glavin001/atom-beautify/commit/516c35623888634a3ffcca845fed6b962749fbf2)

# v0.7.0 (2014-09-08)
- [See #77. Add example of broken SCSS case.](https://github.com/Glavin001/atom-beautify/commit/4f5c75c5e3a5a934a7c36094e60d15022df0e564)
- [See #71. Add example JS file using reserved words to test #71](https://github.com/Glavin001/atom-beautify/commit/1130b58114cba90828aa2d37de42b800d15ae081)
- [See #56. Work on MessageView UI.](https://github.com/Glavin001/atom-beautify/commit/05ee8f22b3b975a52d2fbbe998d4c49fbe9ae274)
- [See #56. Add "Beautification in progress" view.](https://github.com/Glavin001/atom-beautify/commit/6b2b306b9daf6a1594cefd357ce0d9c8ce3f7155)
- [See #56. Add Atom-Message-Panel to display Unsupported Language messages](https://github.com/Glavin001/atom-beautify/commit/ffa2249c3e87d217cc544a71e23e389f97d978d7)

# v0.6.5 (2014-09-08)
- [Fixes #76. Add package option "Beautify Entire File On Save"](https://github.com/Glavin001/atom-beautify/commit/528c7dc281bc85c4132ce0cadf3740c04c3cc6e8)
- [Closes #78. Improve startup performance.](https://github.com/Glavin001/atom-beautify/commit/9c1965dec6233205639fd342daf20ab4b145ced6)
- [See #61. Add LESS example with Mixins to test.](https://github.com/Glavin001/atom-beautify/commit/7dbff2cbc1959ca4630f44e9a6755807e34c0c85)
- [See #56. Start implementing of Message View.](https://github.com/Glavin001/atom-beautify/commit/0804cade1f09a8436f69e572c7bd5f725742db41)

# v0.6.4 (2014-09-04)
- [Fixes #73. Prevent extra cursor appearing at end of file](https://github.com/Glavin001/atom-beautify/commit/e599387d2025ab53e4db009d597816e23783850d)

# v0.6.3 (2014-08-30)
- [Closes #60. Convert package scripts from JavaScript to CoffeeScript.](https://github.com/Glavin001/atom-beautify/commit/09c6770cd2768ddb8dd635c2508065a40f909729)
- [Replacing node-parse with sqlparse for SQL beautification support](https://github.com/Glavin001/atom-beautify/commit/a2fbf0c47d0abeabbaa7289b4f32e261525d0182)

# v0.6.2 (2014-08-09)
- [Fixes #59. Remove ActivationEvents to allow for beautifyOnSave.](https://github.com/Glavin001/atom-beautify/commit/649f023d9c5066a85c114dc2d8bcd1feb4303158)

# v0.6.1 (2014-08-08)
- [Closes #57. Customization in .jsbeautifyrc file now generates the config (.cfg) file for Uncrustify beautification.](https://github.com/Glavin001/atom-beautify/commit/325ada78510866487cb3aab9ae10e208b544eb1c)

# v0.6.0 (2014-08-08)

- [See #57. Add Uncrustify beautifier for multiple language support.](https://github.com/Glavin001/atom-beautify/commit/5d6751cb4bd331ec1066b09bc457a73e1619e51b)

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
>Closes #45. Add Java Support.

# v0.5.0 (2014-08-04)
- [See #47. Update configuration to allow users to disable analytics.](https://github.com/Glavin001/atom-beautify/commit/8d90b30448a0c3df5eeca0d6f52bb8e9c3e3880e)

# v0.5.1 (2014-08-04)
- [Closes #44. Switch to using Pretty Diff for SASS, as well.](https://github.com/Glavin001/atom-beautify/commit/1f0fb9c0db43b71816caf3c1d1d235484cbcd53a)
- [See #54. Use indent_size and indent_character options.](https://github.com/Glavin001/atom-beautify/commit/1f0fb9c0db43b71816caf3c1d1d235484cbcd53a)

# v0.5.0 (2014-08-04)
- [Closes #31. Add CoffeeScript support.](https://github.com/Glavin001/atom-beautify/commit/3c9836f920bea72396d03ac0b022b5f753776b55)

# v0.4.4 (2014-08-03)
- [See #51. Work on improving PHP support and deubgging errors.](https://github.com/Glavin001/atom-beautify/commit/7fdde0f8a68c8eecc2879c6bfe2369c4abfc904d)

# v0.4.3 (2014-08-03)
- [Closes #47. Switch Analytics from Google Analytics to Segment.io](https://github.com/Glavin001/atom-beautify/commit/fabed8fad30d36c0ffe42ed070f5495a7b7c1b14)

# v0.4.2 (2014-08-03)
- [Fixes #54. LESS beautifier using PrettyDiff now fixed.](https://github.com/Glavin001/atom-beautify/commit/010863f5cce73740371b16b4077f58eab9b98cf6)

# v0.4.1 (2014-08-01)

- [Closes #54. Switch to using Pretty Diff for LESS support. Fixes #52. Fixes #52.](https://github.com/Glavin001/atom-beautify/commit/5bff9ebc4840aa18e38b468b7a5310c56b7ab302)

# v0.4.0 (2014-07-12)

- [Closes #47. Add Google Analytics.](https://github.com/Glavin001/atom-beautify/commit/d8fb27289d4c1db7fde878002f442ae53d41f840)

# v0.3.8 (2014-07-09)

- [Closes #46. Use ActivationEvents to speed up loading time.](https://github.com/Glavin001/atom-beautify/commit/4271bfe8d72f04ef25cc136684c5e9a78636c399)

# v0.3.7 (2014-07-03)
# v0.3.6 (2014-07-03)
# v0.3.5 (2014-07-03)

- [See #40. Migrating ownership to Glavin001 for maintaining.](https://github.com/Glavin001/atom-beautify/commit/d94d152621c431d358e8624bf67827e972756553)

# v0.3.4 (2014-06-28)
- [Closes #35. Add more options for Python PEP8 beautifying.](https://github.com/Glavin001/atom-beautify/commit/65ff7f9f7a040e9ad3a881ef0a6af387df644120)

# v0.3.3 (2014-06-16)
- [Closes #24. Add Python (PEP 8) support.](https://github.com/Glavin001/atom-beautify/commit/612c7dc17c20f01c36476e0432baf20bcab94ca4)
- [Closes #25. Add Ruby support.](https://github.com/Glavin001/atom-beautify/commit/88651447a721f73fb58ae076b04ae296f0b4318b)
- See #18. Worked on setting up Travis CI and providing unit tests. Not closed.

# v0.3.2 (2014-06-14)
- [Fixes #9. Nested options in .jsbeautifyrc are properly handled.](https://github.com/Glavin001/atom-beautify/commit/54e61a816f7fd087822d44c97ed3ab8c7130a845)
- [Closes #21. Parsing .jsbeautifyrc falls back to YAML, when JSON fails.](https://github.com/Glavin001/atom-beautify/commit/78e0382c15b1a7587b8fcbe93af5b5fc20ba8fc7)
- [Closes #22. Use Atom Package Settings as configuration options.](https://github.com/Glavin001/atom-beautify/commit/479034dae7af1080726e508d18fb6a9c8588d800)

# v0.3.1 (2014-06-14)
- [See #14. Add JSON support.](https://github.com/Glavin001/atom-beautify/commit/978a6c5a43e910f322a476fb69230e6ec95e8a82)
- [Closes #14. Completed support for SQL.](https://github.com/Glavin001/atom-beautify/commit/2e57630275773b331becc2fcadaf558e370750e6)

# v0.3.0 (2014-06-13)
- [Allowing either flat or nested .jsbeautifyrc schemas](https://github.com/Glavin001/atom-beautify/commit/cf1ea6db16d2188ddef5e6c1fb4d000cab67f99c)
- [Use beautifyHTML to beautify HTML (Liquid) files.](https://github.com/Glavin001/atom-beautify/commit/45352dd90591826e72054536f671b9eb074a9843)
- [Closes #15. Support loading .jsbeautifyrc from Project directory.](https://github.com/Glavin001/atom-beautify/commit/4fdab9759b5a774c467434a410c203eb4aeb74d8)
- [See #15. Updated README to reflect better .jsbeautifyrc support.](https://github.com/Glavin001/atom-beautify/commit/4d486794b4e9ba58d206c8e16d325b2f1d693d30)
- [Fixes #16. Custom configuration options are now working correctly.](https://github.com/Glavin001/atom-beautify/commit/58a375f8b6823fda7632f53d145e3e2d21e16dcd)
- [Closes #13. Add Handlebars support.](https://github.com/Glavin001/atom-beautify/commit/b530eda6e3347179dd14fb671801b94a7269f2ad)
- [Fixes #19. Can now beautify new files that have not been created/saved.](https://github.com/Glavin001/atom-beautify/commit/c34f6f9419284697bd3c04ddc0e400ae0600ca4d)
- [Closes #20. Add Sass and LESS support. Update README.](https://github.com/Glavin001/atom-beautify/commit/eacf2329daf86bd21d7bda992a9b08379de67f2c)
- [See #15. Remove shelljs dependency and fixed typos.](https://github.com/Glavin001/atom-beautify/commit/a2dc4bd7db7893b11b53af41bb4556158bb81ed5)

# v0.2.6 (2014-05-15)
- version bump
- added `"jslint_happy": true` to own `.jsbeautifierrc`

# v0.2.5 (2014-05-14)
- fixed issue #7 (Place cursor back to edited place after beautifying)
- fixed issue #8 (Ignore jsbeautify when editing .jsbeautifyrc in place)

# v0.2.3 (2014-05-13)

- support `.jsbeautifierrc` (thanks @karolyi)
- fixed: reload on save (thanks @karolyi)

# v0.2.2 (2014-03-18)

- added experimental support for XML (thanks @mtanzi)

# v0.2.1 (2014-03-12)

- added option to beautify on save

# v0.2.0 (2014-03-11)

- public release
- beautify JS, HTML and CSS files based on current editor settings

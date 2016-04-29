# Add Languages and Beautifiers

Please contribute with a Pull Request and add your favourite languages and beautifiers.

## Source Code Documentation
Source code documentation can be found at http://glavin001.github.io/atom-beautify/docs/code/
You can use [`codo`](https://github.com/coffeedoc/codo) to build your own documentation. Simply run `codo` in the project's directory and it will be generated into `docs/code/`.

## How to add a Language:

1. Create a new Language file in https://github.com/Glavin001/atom-beautify/tree/master/src/languages
2. Configure the new language. Example for `JavaScript` language: https://github.com/Glavin001/atom-beautify/blob/master/src/languages/javascript.coffee#L8
  - `name` - name of Language
  - `namespace` - used as a prefix for scoping the options, such as option `indent_size` becomes `js_indent_size` for `JavaScript` language with namespace `js`
  - `grammars` - array of supported grammars. Used with `extensions` to determine if this file is this language or not. Grammars are prioritized over extensions, such that the grammar `JavaScript` is recognized before `js` and the beautifier with the same grammar as the file will be used over another that does not support the grammar and only the extension.
  - `extensions` - array of of extensions, without `.` (dot), such that `.js` is `js`. Used to determine if a file is this language. Useful if there is no supported grammar in Atom for this language.
  - `options` - I'd recommend looking at https://github.com/Glavin001/atom-beautify/blob/master/src/languages/javascript.coffee#L30 for examples.
3. Add the language file to the list of language names. For instance, `c-sharp.coffee` file becomes `c-sharp`. See https://github.com/Glavin001/atom-beautify/blob/master/src/languages/index.coffee#L21
Now your Language is available and can be detected and beautifiers can support it.

## How to add a Beautifier for a Language

1. Create a new [beautifier](https://github.com/Glavin001/atom-beautify/blob/master/src/beautifiers/beautifier.coffee) subclass in https://github.com/Glavin001/atom-beautify/tree/master/src/beautifiers directory
2. Implement beautifier:
  - See examples of beautifiers:
    - Prettydiff is a good example of complex options: https://github.com/Glavin001/atom-beautify/blob/master/src/beautifiers/prettydiff.coffee
    - PHP-CS-Fixer is a good example of a CLI beautifier with arguments: https://github.com/Glavin001/atom-beautify/blob/master/src/beautifiers/php-cs-fixer.coffee#L15-L39
  - `options` - the key represents the Language's name. The value could be `true` (supports all options), `false` (supports language, with no options), or an `object` whose keys are option keys and values are complex mappings. If you need to use these, let me know. `true` is probably what you want.
  - The `beautify` function should return a `Promise` (use `@Promise` as shown). The arguments passed are:
    - __`text`__ -  the source code from Atom's Text Editor
    - __`language`__ - the language's name (`JavaScript`)
    - __`options`__ - an object of all of the options in their form as described by your Language definition (see `Configure the new language` above).
    - __`context`__ - an object with extra information:
        - __`filePath`__ - The file path associated with the text being beautified (may be null)
3. Add beautifier to list of `beautifierNames`: https://github.com/Glavin001/atom-beautify/blob/master/src/beautifiers/index.coffee#L34
4. Add test example files in https://github.com/Glavin001/atom-beautify/tree/master/examples
  - You can put your test in `nested-jsbeautifyrc` directory, https://github.com/Glavin001/atom-beautify/tree/master/examples/nested-jsbeautifyrc
  - create a new directory for your tests, named something like `JavaScript`
  - `original` and `expected` directory containing files that are named the same. Prefix underscore (`_`) disables a test. See https://github.com/Glavin001/atom-beautify/tree/master/examples/simple-jsbeautifyrc/php/original for instance.
  - change any options you need in your namespace, such as `js`, in https://github.com/Glavin001/atom-beautify/blob/master/examples/nested-jsbeautifyrc/.jsbeautifyrc
  - Run tests in Atom with command `Window: Run package spec`

I have to go. Let me know if you have any questions!

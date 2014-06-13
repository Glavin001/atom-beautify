# [atom-beautify](https://github.com/donaldpipowitch/atom-beautify)

[Beautify](https://github.com/einars/js-beautify) HTML, CSS and JavaScript in Atom.

*Attention*: A different package with a similar name exist. Maybe you want to visit this one: [Beautifier](https://atom.io/packages/atom-beautifier).

## Usage

Open the [Command Palette](https://github.com/atom/command-palette), and type `Beautify`.
This will beautify JS, HTML or CSS files.
XML is supported as an experimental feature.

It will only beautify selected text, if a selection is found - if not, the whole file will be beautified.

### Shortcut

You can also type `ctrl-alt-b` as a shortcut or click `Packages > Beautify` in the menu.

### Package Options

You can also choose to beautify on every file save.


## Configuration

Edit your `.jsbeautifyrc` file in any of the following locations:

- Same directory as current file
- Project root  
`atom-beautify` will recursively look up from the current file's directory to find `.jsbeautifyrc`.
- Your User's Home directory

You can see examples of both way inside [`examples/`](https://github.com/donaldpipowitch/atom-beautify/tree/master/examples)

## Contributing

[See all contributors on GitHub](https://github.com/donaldpipowitch/atom-beautify/graphs/contributors).

Please update the [CHANGELOG.md](https://github.com/donaldpipowitch/atom-beautify/blob/master/CHANGELOG.md)
file and submit a [Pull Request on GitHub](https://help.github.com/articles/using-pull-requests).

## License

[MIT](https://github.com/donaldpipowitch/atom-beautify/blob/master/LICENSE.md) © [Donald Pipowitch](https://github.com/donaldpipowitch)

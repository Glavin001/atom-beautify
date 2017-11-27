# Troubleshooting

## How to create `debug.md` Gist

Note that this will include a copy of your code.
If your code is private, please create a different sample of code that reproduces the problem.

Steps 2-5 are for older versions of Atom-Beautify.
In newer/latest version, Atom-Beautify will provide you with a 
series of prompts and guide you to create an anonymous Gist with your debugging information.

1. In the Atom [command-palette](https://atom.io/packages/command-palette),
search for and run the command `Atom Beautify: Help Debug Editor`.
The debugging results will be copied to your clipboard.  
2. Create a new Gist at https://gist.github.com/  
3. Create a file in your new Gist called `debug.md`.  
4. Paste your debugging results from Atom beautify into `debug.md` file in your Gist.  
5. Add a link to your Gist in your new Issue.

## Common Issues

> I receive an error when I try to install or update Atom Beautify

Run `apm clean` from your terminal, then retry
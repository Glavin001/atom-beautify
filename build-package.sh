#!/bin/sh

echo "Downloading node v0.10.22..."
curl -s -O http://nodejs.org/dist/v0.10.22/node-v0.10.22-darwin-x64.tar.gz
tar -zxf node-v0.10.22-darwin-x64.tar.gz
export PATH=$PATH:$PWD/node-v0.10.22-darwin-x64/bin

echo "Downloading latest Atom release..."
curl -s -L "https://atom.io/download/mac" \
-H 'Accept: application/octet-stream' \
-o atom.zip

mkdir atom
unzip -q atom.zip -d atom

echo "Using Atom version:"
ATOM_PATH=./atom ./atom/Atom.app/Contents/Resources/app/atom.sh -v

echo "Downloading package dependencies..."
atom/Atom.app/Contents/Resources/app/apm/node_modules/.bin/apm update

echo "Download package Atom dependencies..."
# atom/Atom.app/Contents/Resources/app/apm/node_modules/.bin/apm install language-c
# atom/Atom.app/Contents/Resources/app/apm/node_modules/.bin/apm install language-coffee-script
# atom/Atom.app/Contents/Resources/app/apm/node_modules/.bin/apm install language-css
# atom/Atom.app/Contents/Resources/app/apm/node_modules/.bin/apm install language-html
# atom/Atom.app/Contents/Resources/app/apm/node_modules/.bin/apm install language-java
# atom/Atom.app/Contents/Resources/app/apm/node_modules/.bin/apm install language-javascript
# atom/Atom.app/Contents/Resources/app/apm/node_modules/.bin/apm install language-json
# atom/Atom.app/Contents/Resources/app/apm/node_modules/.bin/apm install language-less
# atom/Atom.app/Contents/Resources/app/apm/node_modules/.bin/apm install language-mustache
# atom/Atom.app/Contents/Resources/app/apm/node_modules/.bin/apm install language-objective-c
# atom/Atom.app/Contents/Resources/app/apm/node_modules/.bin/apm install language-perl
# atom/Atom.app/Contents/Resources/app/apm/node_modules/.bin/apm install language-php
# atom/Atom.app/Contents/Resources/app/apm/node_modules/.bin/apm install language-python
# atom/Atom.app/Contents/Resources/app/apm/node_modules/.bin/apm install language-ruby
# atom/Atom.app/Contents/Resources/app/apm/node_modules/.bin/apm install language-sass
# atom/Atom.app/Contents/Resources/app/apm/node_modules/.bin/apm install language-sql
# atom/Atom.app/Contents/Resources/app/apm/node_modules/.bin/apm install language-xml
# atom/Atom.app/Contents/Resources/app/apm/node_modules/.bin/apm install language-gfm
atom/Atom.app/Contents/Resources/app/apm/node_modules/.bin/apm install language-typescript
atom/Atom.app/Contents/Resources/app/apm/node_modules/.bin/apm install language-csharp

echo "Running specs..."
ATOM_PATH=./atom atom/Atom.app/Contents/Resources/app/apm/node_modules/.bin/apm test --path atom/Atom.app/Contents/Resources/app/atom.sh

exit

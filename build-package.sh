#!/bin/sh

echo "Downloading latest Atom release..."
curl -s -L "https://atom.io/download/mac" \
  -H 'Accept: application/octet-stream' \
  -o atom.zip

mkdir atom
unzip -q atom.zip -d atom
export PATH=$PWD/atom/Atom.app/Contents/Resources/app/apm/bin:$PATH

echo "Using Atom version:"
ATOM_PATH=./atom ./atom/Atom.app/Contents/Resources/app/atom.sh -v

echo "Downloading package dependencies..."
atom/Atom.app/Contents/Resources/app/apm/node_modules/.bin/apm clean
atom/Atom.app/Contents/Resources/app/apm/node_modules/.bin/apm install

TEST_PACKAGES="${APM_TEST_PACKAGES:=none}"

if [ "$TEST_PACKAGES" != "none" ]; then
  echo "Installing atom package dependencies..."
  for pack in $TEST_PACKAGES ; do
    atom/Atom.app/Contents/Resources/app/apm/node_modules/.bin/apm install $pack
  done
fi

if [ -f ./node_modules/.bin/coffeelint ]; then
  if [ -d ./src ]; then
    echo "Linting package..."
    ./node_modules/.bin/coffeelint src
    rc=$?; if [[ $rc != 0 ]]; then exit $rc; fi
  fi
  if [ -d ./spec ]; then
    echo "Linting package specs..."
    ./node_modules/.bin/coffeelint spec
    rc=$?; if [[ $rc != 0 ]]; then exit $rc; fi
  fi
fi

echo "Running specs..."
ATOM_PATH=./atom atom/Atom.app/Contents/Resources/app/apm/node_modules/.bin/apm test --path atom/Atom.app/Contents/Resources/app/atom.sh

exit

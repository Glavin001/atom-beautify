#!/bin/sh

if [ "$TRAVIS_OS_NAME" != "osx" ]; then
    /sbin/start-stop-daemon --start --quiet --pidfile /tmp/custom_xvfb_99.pid --make-pidfile --background --exec /usr/bin/Xvfb -- :99 -ac -screen 0 1280x1024x16
    export DISPLAY=":99"
fi

echo "Using Atom version:"
"$ATOM_SCRIPT_NAME" -v
echo "Using APM version:"
"$APM_SCRIPT_NAME" -v

echo "Downloading package dependencies..."
"$APM_SCRIPT_NAME" clean
"$APM_SCRIPT_NAME" install

echo "Installing atom package dependencies..."
"$APM_SCRIPT_NAME" install --packages-file atom-packages.txt

if [ -f ./node_modules/.bin/coffeelint ]; then
  if [ -d ./src ]; then
    echo "Linting package..."
    ./node_modules/.bin/coffeelint src
    rc=$?; if [ $rc -ne 0 ]; then exit $rc; fi
  fi
  if [ -d ./spec ]; then
    echo "Linting package specs..."
    ./node_modules/.bin/coffeelint spec
    rc=$?; if [ $rc -ne 0 ]; then exit $rc; fi
  fi
fi

if [ -f ./node_modules/.bin/eslint ]; then
  if [ -d ./src ]; then
    echo "Linting package..."
    ./node_modules/.bin/eslint src
    rc=$?; if [ $rc -ne 0 ]; then exit $rc; fi
  fi
  if [ -d ./spec ]; then
    echo "Linting package specs..."
    ./node_modules/.bin/eslint spec
    rc=$?; if [ $rc -ne 0 ]; then exit $rc; fi
  fi
fi

if [ -f ./node_modules/.bin/standard ]; then
  if [ -d ./src ]; then
    echo "Linting package..."
    ./node_modules/.bin/standard "src/**/*.js"
    rc=$?; if [ $rc -ne 0 ]; then exit $rc; fi
  fi
  if [ -d ./spec ]; then
    echo "Linting package specs..."
    ./node_modules/.bin/standard "spec/**/*.js"
    rc=$?; if [ $rc -ne 0 ]; then exit $rc; fi
  fi
fi

if [ -d ./spec ]; then
  echo "Running specs..."
  "$ATOM_SCRIPT_NAME" --test spec
else
  echo "Missing spec folder! Please consider adding a test suite in `./spec`"
  exit 1
fi
exit

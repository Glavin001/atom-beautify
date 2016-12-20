#!/bin/bash
find . -type f \( -iname \*.ex -o -iname \*.exs \) -exec elixir {} \;

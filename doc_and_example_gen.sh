#!/bin/bash

# Generate docs
grep "#>" jazzman.rb > README.md
sed -i 's/#>//g' README.md

# Generate example
./jazzman.rb example/dayman.jm.js example/dayman.js

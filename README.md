# jazzman
 A dead-simple Jasmine-DSL. That helps you focus on testing rather than
 boilerplate code.

## YAJSS2SAPTS:
 - Yet
 - Another
 - JavaScript
 - Source
 - To
 - Source
 - Although
 - Probably
 - The
 - Simplest

## Usage:
```
 jazzman.rb jazzman_file jasmine_file
```

## Performs the following, dead-simple transformations, in order:
 - `before[[` => `beforeEach(function () {`
 - `after[[` => `afterEach(function () {`
 - `describe ` => `describe('`
 - `it ` => `it('`
 - `[[` => `', function () {`
 - `]]` => `});`

 See example for an example

#!/usr/bin/env ruby

#># jazzman
#> A dead-simple Jasmine-DSL. That helps you focus on testing rather than
#> boilerplate code.
#>

#>## YAJSS2SAPTS:
#> - Yet
#> - Another
#> - JavaScript
#> - Source
#> - To
#> - Source
#> - Although
#> - Probably
#> - The
#> - Simplest
#>

#>## Usage:
#>```
#> jazzman.rb jazzman_input_file jasmine_output_file
#>```
#> Note, `jasmine_output_file` will be overwritten by this operation
#>
input, output = ARGV

puts "Jazz it up: #{input} -> #{output}"

text = File.open(input, 'r') { |f| f.read }

#>## Performs the following, dead-simple transformations, in order:
transformations = {
#> - `before[[` => `beforeEach(function () {`
  'before[[' => 'beforeEach(function () {',

#> - `after[[` => `afterEach(function () {`
  'after[[' => 'afterEach(function () {',

#> - `describe ` => `describe('`
  'describe ' => "describe('",

#> - `it ` => `it('`
  'it ' => "it('",

#> - `[[` => `', function () {`
  '[[' => "', function () {",

#> - `]]` => `});`
  ']]' => '});'
}

transformations.each do |pattern, replacment|
  text.gsub!(pattern, replacment)
end

File.open(output, 'w') { |f| f.write(text) }

#>
#> See example for an example

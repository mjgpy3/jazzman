#!/usr/bin/env ruby

input, output = ARGV

puts "Jazz it up: #{input} -> #{output}"

text = File.open(input, 'r') { |f| f.read }

transformations = {
  'before[[' => 'beforeEach(function () {',
  'after[[' => 'beforeEach(function () {',
  'describe ' => "describe('",
  'it ' => "it('",
  '[[' => "', function () {",
  ']]' => '});'
}

transformations.each do |pattern, replacment|
  text.gsub!(pattern, replacment)
end

File.open(output, 'w') { |f| f.write(text) }

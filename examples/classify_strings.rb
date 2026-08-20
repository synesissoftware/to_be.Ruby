#! /usr/bin/env ruby

# examples/classify_strings.rb


require 'to_be'
require 'to_be/extensions/string'


samples = [
  'no',
  'True',
  'orange',
]

puts 'Module API:'
samples.each do |s|

  puts "\t#{s.inspect}\ttruthy=#{ToBe.string_truthy?(s)}\ttruey=#{ToBe.string_truey?(s)}\tfalsey=#{ToBe.string_falsey?(s)}"
end
puts

puts 'String extensions:'
samples.each do |s|

  puts "\t#{s.inspect}\ttruthy=#{s.truthy?}\ttruey=#{s.truey?}\tfalsey=#{s.falsey?}"
end

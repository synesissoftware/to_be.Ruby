# to_be.Ruby - Example - **classify_strings**

## Summary

Classifies sample strings as truthy, truey, or falsey using the **to_be** module API and the **String** extensions.

## Source

```ruby

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
```

`"no"` is truthy and falsey; `"True"` is truthy and truey; `"orange"` is not classified as truthy.

## Usage

When run, this produces the following output:

```
Module API:
	"no"	truthy=true	truey=false	falsey=true
	"True"	truthy=true	truey=true	falsey=false
	"orange"	truthy=false	truey=false	falsey=false

String extensions:
	"no"	truthy=true	truey=false	falsey=true
	"True"	truthy=true	truey=true	falsey=false
	"orange"	truthy=false	truey=false	falsey=false
```


<!-- ########################### end of file ########################### -->

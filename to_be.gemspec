# ######################################################################## #
# File:     to_be.gemspec
#
# Purpose:  Gemspec for to_be.Ruby library
#
# Created:  11th August 2025
# Updated:  20th August 2026
#
# ######################################################################## #


$:.unshift File.join(File.dirname(__FILE__), 'lib')

require 'to_be/version'


Gem::Specification.new do |spec|

  spec.name         = 'to_be'
  spec.summary      = 'Simple Ruby library determining whether strings indicate truey or falsy values.'
  spec.version      = ToBe::VERSION
  spec.description  = <<END_DESC
Simple Ruby library determining whether strings indicate truey or falsy
values.
END_DESC

  spec.authors      = [
    'Matt Wilson',
  ]
  spec.email        = [
    'matthew@synesis.com.au',
  ]
  spec.homepage     = 'https://github.com/synesissoftware/to_be.Ruby'
  spec.license      = 'BSD-3-Clause'

  spec.required_ruby_version = [ '>= 1.9.3' ]

  spec.metadata = {
    'bug_tracker_uri' => 'https://github.com/synesissoftware/to_be.Ruby/issues',
    'changelog_uri' => 'https://github.com/synesissoftware/to_be.Ruby/blob/master/CHANGES.md',
    'homepage_uri' => 'https://github.com/synesissoftware/to_be.Ruby',
    'source_code_uri' => 'https://github.com/synesissoftware/to_be.Ruby',
  }

  spec.files = Dir[
    'Rakefile',
    '{bin,examples,lib,man,spec,test}/**/*',
    'AUTHORS*',
    'CHANGES*',
    'CONTRIBUTING*',
    'EXAMPLES*',
    'FAQ*',
    'INSTALL*',
    'LICENSE*',
    'NEWS*',
    'README*',
    'SECURITY*',
    'TODO*',
  ] & `git ls-files -z`.split("\0")
  spec.files -= [
    '.ruby-version',
    'Gemfile.lock',
  ]

  spec.add_development_dependency 'xqsr3', [ '>= 0.39.5', '< 1.0' ]
end


# ############################## end of file ############################# #

# ######################################################################### #
# File:     to_be.gemspec
#
# Purpose:  Gemspec for to_be.Ruby library
#
# Created:  11th August 2025
# Updated:  11th August 2025
#
# ######################################################################### #


$:.unshift File.join(File.dirname(__FILE__), 'lib')

require 'to_be'

require 'date'

Gem::Specification.new do |spec|

    spec.name           =   'to_be'
    spec.version        =   ToBe::VERSION
    spec.date           =   Date.today.to_s
    spec.summary        =   'to_be'
    spec.description    =   <<END_DESC
Simple Ruby library determining whether strings indicate truey or falsy values.
END_DESC
    spec.authors        =   [ 'Matt Wilson' ]
    spec.email          =   'matthew@synesis.com.au'
    spec.homepage       =   'http://github.com/synesissoftware/to_be.Ruby'
    spec.license        =   'BSD-3-Clause'
    spec.files          =   Dir[ 'Rakefile', '{bin,examples,lib,man,spec,test}/**/*', 'README*', 'LICENSE*' ] & `git ls-files -z`.split("\0")

    spec.required_ruby_version = [ '>= 1.9.3', '< 4' ]

    spec.add_development_dependency 'xqsr3', [ '~> 0.38' ]
end


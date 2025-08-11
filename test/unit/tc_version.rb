#! /usr/bin/env ruby

$:.unshift File.join(File.dirname(__FILE__), '../../lib')


require 'to_be/version'

require 'test/unit'


class Test_version < Test::Unit::TestCase

  def test_has_VERSION

    assert defined? ToBe::VERSION
  end

  def test_has_VERSION_MAJOR

    assert defined? ToBe::VERSION_MAJOR
  end

  def test_has_VERSION_MINOR

    assert defined? ToBe::VERSION_MINOR
  end

  def test_has_VERSION_REVISION

    assert defined? ToBe::VERSION_REVISION
  end

  def test_VERSION_has_consistent_format

    assert_equal ToBe::VERSION.split('.')[0..2].join('.'), "#{ToBe::VERSION_MAJOR}.#{ToBe::VERSION_MINOR}.#{ToBe::VERSION_REVISION}"
  end
end


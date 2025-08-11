#! /usr/bin/env ruby

$:.unshift File.join(File.dirname(__FILE__), '../..', 'lib')

require 'to_be/extensions/string'

require 'xqsr3/extensions/test/unit'
require 'test/unit'


class Test_ToBe_EXTENSIONS_String < Test::Unit::TestCase

  def test__string_falsey?()

    assert_false "".falsey?
    assert_false "Copyright ©".falsey?

    assert_true "0".falsey?
    assert_true "false".falsey?
    assert_true " FALSE".falsey?
    assert_true "False".falsey?
    assert_true "FaLSe".falsey?
    assert_true "no".falsey?
    assert_true "No ".falsey?
    assert_true "NO".falsey?
    assert_true " Off ".falsey?
    assert_true "off".falsey?
    assert_true "OFF".falsey?

    assert_false "1".falsey?
    assert_false "true".falsey?
    assert_false "TRUE".falsey?
    assert_false "True".falsey?
    assert_false "tRuE".falsey?
    assert_false "yes".falsey?
    assert_false " YES".falsey?
    assert_false "Yes   ".falsey?
    assert_false "yEs".falsey?
  end

  def test__string_truey?()

    assert_false "".truey?
    assert_false "Copyright ©".truey?

    assert_false "0".truey?
    assert_false "false".truey?
    assert_false " FALSE".truey?
    assert_false "False".truey?
    assert_false "FaLSe".truey?
    assert_false "no".truey?
    assert_false "No ".truey?
    assert_false "NO".truey?
    assert_false " Off ".truey?
    assert_false "off".truey?
    assert_false "OFF".truey?

    assert_true "1".truey?
    assert_true "true".truey?
    assert_true "TRUE".truey?
    assert_true "True".truey?
    assert_true "tRuE".truey?
    assert_true "yes".truey?
    assert_true " YES".truey?
    assert_true "Yes   ".truey?
    assert_true "yEs".truey?
  end

  def test__string_truthy?()

    assert_false "".truthy?
    assert_false "Copyright ©".truthy?

    assert_true "0".truthy?
    assert_true "false".truthy?
    assert_true " FALSE".truthy?
    assert_true "False".truthy?
    assert_true "FaLSe".truthy?
    assert_true "no".truthy?
    assert_true "No ".truthy?
    assert_true "NO".truthy?
    assert_true " Off ".truthy?
    assert_true "off".truthy?
    assert_true "OFF".truthy?

    assert_true "1".truthy?
    assert_true "true".truthy?
    assert_true "TRUE".truthy?
    assert_true "True".truthy?
    assert_true "tRuE".truthy?
    assert_true "yes".truthy?
    assert_true " YES".truthy?
    assert_true "Yes   ".truthy?
    assert_true "yEs".truthy?
  end
end


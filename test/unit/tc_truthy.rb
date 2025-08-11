#! /usr/bin/env ruby

$:.unshift File.join(File.dirname(__FILE__), '../..', 'lib')

require 'to_be'

require 'xqsr3/extensions/test/unit'
require 'test/unit'


class Test_ToBe < Test::Unit::TestCase

  def test__string_falsey?()

    assert_false ToBe.string_falsey?("")
    assert_false ToBe.string_falsey?("Copyright ©")

    assert_true ToBe.string_falsey?("0")
    assert_true ToBe.string_falsey?("false")
    assert_true ToBe.string_falsey?(" FALSE")
    assert_true ToBe.string_falsey?("False")
    assert_true ToBe.string_falsey?("FaLSe")
    assert_true ToBe.string_falsey?("no")
    assert_true ToBe.string_falsey?("No ")
    assert_true ToBe.string_falsey?("NO")
    assert_true ToBe.string_falsey?(" Off ")
    assert_true ToBe.string_falsey?("off")
    assert_true ToBe.string_falsey?("OFF")

    assert_false ToBe.string_falsey?("1")
    assert_false ToBe.string_falsey?("true")
    assert_false ToBe.string_falsey?("TRUE")
    assert_false ToBe.string_falsey?("True")
    assert_false ToBe.string_falsey?("tRuE")
    assert_false ToBe.string_falsey?("yes")
    assert_false ToBe.string_falsey?(" YES")
    assert_false ToBe.string_falsey?("Yes   ")
    assert_false ToBe.string_falsey?("yEs")
  end

  def test__string_truey?()

    assert_false ToBe.string_truey?("")
    assert_false ToBe.string_truey?("Copyright ©")

    assert_false ToBe.string_truey?("0")
    assert_false ToBe.string_truey?("false")
    assert_false ToBe.string_truey?(" FALSE")
    assert_false ToBe.string_truey?("False")
    assert_false ToBe.string_truey?("FaLSe")
    assert_false ToBe.string_truey?("no")
    assert_false ToBe.string_truey?("No ")
    assert_false ToBe.string_truey?("NO")
    assert_false ToBe.string_truey?(" Off ")
    assert_false ToBe.string_truey?("off")
    assert_false ToBe.string_truey?("OFF")

    assert_true ToBe.string_truey?("1")
    assert_true ToBe.string_truey?("true")
    assert_true ToBe.string_truey?("TRUE")
    assert_true ToBe.string_truey?("True")
    assert_true ToBe.string_truey?("tRuE")
    assert_true ToBe.string_truey?("yes")
    assert_true ToBe.string_truey?(" YES")
    assert_true ToBe.string_truey?("Yes   ")
    assert_true ToBe.string_truey?("yEs")
  end

  def test__string_truthy?()

    assert_false ToBe.string_truthy?("")
    assert_false ToBe.string_truthy?("Copyright ©")

    assert_true ToBe.string_truthy?("0")
    assert_true ToBe.string_truthy?("false")
    assert_true ToBe.string_truthy?(" FALSE")
    assert_true ToBe.string_truthy?("False")
    assert_true ToBe.string_truthy?("FaLSe")
    assert_true ToBe.string_truthy?("no")
    assert_true ToBe.string_truthy?("No ")
    assert_true ToBe.string_truthy?("NO")
    assert_true ToBe.string_truthy?(" Off ")
    assert_true ToBe.string_truthy?("off")
    assert_true ToBe.string_truthy?("OFF")

    assert_true ToBe.string_truthy?("1")
    assert_true ToBe.string_truthy?("true")
    assert_true ToBe.string_truthy?("TRUE")
    assert_true ToBe.string_truthy?("True")
    assert_true ToBe.string_truthy?("tRuE")
    assert_true ToBe.string_truthy?("yes")
    assert_true ToBe.string_truthy?(" YES")
    assert_true ToBe.string_truthy?("Yes   ")
    assert_true ToBe.string_truthy?("yEs")
  end
end


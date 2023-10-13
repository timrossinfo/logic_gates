require 'minitest/autorun'
require_relative '../lib/full_adder'

class TestFullAdder < Minitest::Test
  def test_full_adder
    assert_equal [0, 0], full_adder(0, 0, 0)
    assert_equal [0, 1], full_adder(0, 1, 0)
    assert_equal [0, 1], full_adder(1, 0, 0)
    assert_equal [1, 0], full_adder(1, 1, 0)
    assert_equal [0, 1], full_adder(0, 0, 1)
    assert_equal [1, 0], full_adder(0, 1, 1)
    assert_equal [1, 0], full_adder(1, 0, 1)
    assert_equal [1, 1], full_adder(1, 1, 1)
  end
end

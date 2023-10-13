require 'minitest/autorun'
require_relative '../lib/half_adder'

class TestHalfAdder < Minitest::Test
  def test_half_adder
    assert_equal [0, 0], half_adder(0, 0)
    assert_equal [0, 1], half_adder(0, 1)
    assert_equal [0, 1], half_adder(1, 0)
    assert_equal [1, 0], half_adder(1, 1)
  end
end

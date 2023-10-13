require 'minitest/autorun'
require_relative '../lib/decimal_addition'

class TestDecimalAddition < Minitest::Test
  def test_add_decimal
    assert_equal 0, add_decimal(0, 0)
    assert_equal 1, add_decimal(0, 1)
    assert_equal 1, add_decimal(1, 0)
    assert_equal 2, add_decimal(1, 1)
    assert_equal 5, add_decimal(2, 3)
    assert_equal 11, add_decimal(5, 6)
    assert_equal 37, add_decimal(19, 18)
    assert_equal 53, add_decimal(27, 26)
    assert_equal 100, add_decimal(50, 50)
    assert_equal 207, add_decimal(103, 104)
    assert_equal 1500, add_decimal(750, 750)
  end
end

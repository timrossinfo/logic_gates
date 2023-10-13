require 'minitest/autorun'
require_relative '../lib/binary_addition'

class TestBinaryAddition < Minitest::Test
  def test_add_binary
    assert_equal '0', add_binary('0', '0')
    assert_equal '1', add_binary('0', '1')
    assert_equal '1', add_binary('1', '0')
    assert_equal '10', add_binary('1', '1')

    # Testing when numbers have different lengths
    assert_equal '100', add_binary('11', '1')
    assert_equal '100', add_binary('1', '11')

    # Larger numbers
    assert_equal '1010', add_binary('1001', '1')
    assert_equal '10000', add_binary('1111', '1')

    # When there is a carry throughout the whole process
    assert_equal '10000', add_binary('1111', '1')
    assert_equal '1110', add_binary('1011', '11')

    # Larger numbers with different lengths
    assert_equal '1000000', add_binary('111111', '1')
    assert_equal '110000', add_binary('100011', '1101')
  end
end

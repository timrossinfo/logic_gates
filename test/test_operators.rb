require 'minitest/autorun'
require_relative '../lib/operators'

class TestOperators < Minitest::Test
  # Testing primary operations
  def test_and_gate
    assert_equal 1, and_gate(1, 1)
    assert_equal 0, and_gate(0, 1)
    assert_equal 0, and_gate(1, 0)
    assert_equal 0, and_gate(0, 0)
  end

  def test_or_gate
    assert_equal 1, or_gate(1, 1)
    assert_equal 1, or_gate(0, 1)
    assert_equal 1, or_gate(1, 0)
    assert_equal 0, or_gate(0, 0)
  end

  def test_not_gate
    assert_equal 0, not_gate(1)
    assert_equal 1, not_gate(0)
  end

  # Testing secondary operations
  def test_xor_gate
    assert_equal 0, xor_gate(1, 1)
    assert_equal 1, xor_gate(0, 1)
    assert_equal 1, xor_gate(1, 0)
    assert_equal 0, xor_gate(0, 0)
  end

  def test_imp_gate
    assert_equal 1, imp_gate(0, 0)
    assert_equal 1, imp_gate(0, 1)
    assert_equal 0, imp_gate(1, 0)
    assert_equal 1, imp_gate(1, 1)
  end

  def test_equiv_gate
    assert_equal 1, equiv_gate(1, 1)
    assert_equal 0, equiv_gate(0, 1)
    assert_equal 0, equiv_gate(1, 0)
    assert_equal 1, equiv_gate(0, 0)
  end

  # Testing complimentary operations
  def test_identity_gate
    assert_equal 1, identity_gate(1)
    assert_equal 0, identity_gate(0)
  end

  def test_nand_gate
    assert_equal 0, nand_gate(1, 1)
    assert_equal 1, nand_gate(0, 1)
    assert_equal 1, nand_gate(1, 0)
    assert_equal 1, nand_gate(0, 0)
  end

  def test_nor_gate
    assert_equal 0, nor_gate(1, 1)
    assert_equal 0, nor_gate(0, 1)
    assert_equal 0, nor_gate(1, 0)
    assert_equal 1, nor_gate(0, 0)
  end

  def test_xnor_gate
    assert_equal 1, xnor_gate(1, 1)
    assert_equal 0, xnor_gate(0, 1)
    assert_equal 0, xnor_gate(1, 0)
    assert_equal 1, xnor_gate(0, 0)
  end

  def test_nequiv_gate
    assert_equal 0, nequiv_gate(1, 1)
    assert_equal 1, nequiv_gate(0, 1)
    assert_equal 1, nequiv_gate(1, 0)
    assert_equal 0, nequiv_gate(0, 0)
  end

  def test_nimp_gate
    assert_equal 0, nimp_gate(0, 0)
    assert_equal 0, nimp_gate(0, 1)
    assert_equal 1, nimp_gate(1, 0)
    assert_equal 0, nimp_gate(1, 1)
  end
end

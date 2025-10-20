require 'minitest/autorun'

class TestSquareRoot < Minitest::Test
  def test_with_a_perfect_square
    assert_equal(3, square_root(9))
  end

  def test_with_zero
    assert_equal(0, square_root(0))
  end

  def test_with_non_perfect_square
    assert_in_delta(1.4142, square_root(2))
  end

  def test_with_negative_number
    assert_raises(Math::DomainError) { square_root(-3) }
  end
end

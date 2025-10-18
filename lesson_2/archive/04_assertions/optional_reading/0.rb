require 'minitest/autorun'

# A test suite for testing a square_root method
# Using the assertions-based interface
class TestSquareRoot < Minitest::Test
  def test_with_a_perfect_square
    assert_equal(3, square_root(9))
  end

  def test_with_zero
    assert_equal(0, square_root(0))
  end

  def test_with_non_perfect_square
    assert_equal(1.4142, suare_root(2))
  end

  def test_with_negative_number
    assert_raises(Math::DomainError) { square_root(-3) }
  end
end

# Using the expectations-based interface
describe 'square_root test case' do
  it 'works with perfect squares' do
    square_root(9).must_equal(3)
  end

  it 'returns 0 as the square root of 0' do
    square_root(0).must_equal(0)
  end

  it 'works with non-perfect squares' do
    square_root(2).must_be_close_to 1.4142
  end

  it 'raises an exception for negative numbers' do
    proc { square_root(-3) }.must_raise Math::DomainError
  end
end

# Example: Suppose we want to develop a method to calculate square roots
# rounded to the nearest integer. If we attempt to take the square root of a
# negative number, the method should return nil.

require 'minitest/autorun'

def square_root(value)
  Math.sqrt(value)
end

class SquareRootTest < Minitest::Test
  def test_that_square_root_of_9_is_3
    result = square_root(9)
    assert_equal(3, result)
  end
end

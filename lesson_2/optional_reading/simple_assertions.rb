require 'minitest/autorun'

class DifferentAssertions < Minitest::Test
  def test_assert
    assert('abc'.reverse == 'cba')
  end

  def test_assert_list_is_empty # Expected to fail
    list = [1, 2, 3]
    assert(list.empty?, 'The list is not empty as expected.')
  end

  def test_assert_equal
    assert_equal('cba', 'abc'.reverse)
  end

  def test_assert_in_delta_pi_1
    assert_in_delta(3.1415, Math::PI, 0.0001)
  end

  def test_assert_in_delta_pi_2 # Expected to fail
    assert_in_delta(3.1415, Math::PI, 0.00001)
  end

  def test_assert_same
    arr = [2, 3, 1]
    assert_same(arr, arr.sort!)
  end

  def test_assert_nil
    iamnil = nil
    assert_nil(iamnil)
  end

  def test_assert_empty
    list = []
    assert_empty(list)
  end

  def test_assert_includes
    list = %w[abc def xyz]
    assert_includes(list, 'xyz')
  end

  def test_assert_match # Expected to fail
    assert_match(/not found/, error_message)
  end
end

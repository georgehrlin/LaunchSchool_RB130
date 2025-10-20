require 'minitest/autorun'
require_relative '../lib/xyzzy'

class XyzzyTest < Minitest::Test # This class defines a test suite, which is a collection of one or more test cases
  def test_the_answer_is_42 # A method is a test case
    xyzzy = Xyzzy.new
    assert(xyzzy.the_answer == 42, 'the_answer did not return 42') # A test step
  end

  def test_whats_up_returns_doc
    xyzzy = Xyzzy.new
    assert(xyzzy.whats_up == 'Doc', 'whats_up did not return Doc') # A test step
  end
end

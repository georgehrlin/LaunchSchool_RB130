require 'minitest/autorun' # Loads all the necessary files from the minitest gem

require_relative 'car' # Requires the file for testing

class CarTest < Minitest::Test
  def test_wheels # A test is an instance method that starts with test_
    car = Car.new
    assert_equal(4, car.wheels) # This is an assertion
    # assert_equal accepts two arguments of which the first is the expected value, and the second is the test or actual value
  end
end

=begin
Output:
Run options: --seed 38831

# Running:

.

Finished in 0.000287s, 3484.3206 runs/s, 3484.3206 assertions/s.

1 runs, 1 assertions, 0 failures, 0 errors, 0 skips
=end

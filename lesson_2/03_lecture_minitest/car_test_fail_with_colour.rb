require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

require_relative 'car'

class CarTest < Minitest::Test
  def test_wheels
    car = Car.new
    assert_equal(4, car.wheels)
  end

  def test_bad_wheels
    car = Car.new
    assert_equal(3, car.wheels)
  end
end

=begin
Started with run options --seed 37369

 FAIL CarTest#test_bad_wheels (0.00s)
        Expected: 3
          Actual: 4
        car_test_fail_with_colour.rb:15:in `test_bad_wheels'

  2/2: [======================================================================] 100% Time: 00:00:00, Time: 00:00:00

Finished in 0.00057s
2 tests, 2 assertions, 1 failures, 0 errors, 0 skips
=end

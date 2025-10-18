require 'minitest/autorun'

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
Output:
Run options: --seed 9361

# Running:

.F

Finished in 0.000313s, 6389.7764 runs/s, 6389.7764 assertions/s.

  1) Failure:
CarTest#test_bad_wheels [car_test_fail.rb:13]:
Expected: 3
  Actual: 4

2 runs, 2 assertions, 1 failures, 0 errors, 0 skips
=end

require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

require_relative '0_car'

class CarTest < Minitest::Test
  def test_wheels_is_4
    car = Car.new
    assert_equal(4, car.wheels) # Fails if car.wheels does not return 4
  end
end

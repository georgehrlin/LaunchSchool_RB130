require 'minitest/autorun'

require_relative 'car'

class CarTest < Minitest::Test
  def test_wheels_is_4
    car = Car.new
    assert_equal(4, car.wheels)
  end
end

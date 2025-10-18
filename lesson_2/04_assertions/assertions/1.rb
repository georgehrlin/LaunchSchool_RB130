require 'minitest/autorun'

require_relative 'car'

class CarTest < Minitest::Test
  def test_car_exists
    car = Car.new
    assert(car)
  end
end

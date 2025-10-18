require 'minitest/autorun'

require_relative 'car'

class CarTest < Minitest::Test
  def test_cars_includes_car
    car = Car.new
    cars = [car, Car.new, Car.new]
    assert_includes(cars, car)
  end
end

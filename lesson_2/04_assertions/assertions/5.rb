require 'minitest/autorun'

require_relative 'car'

class CarTest < Minitest::Test
  def test_car_instance_of_Car
    car = Car.new
    assert_instance_of(Car, car)
  end
end

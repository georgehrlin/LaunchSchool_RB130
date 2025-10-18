require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

require_relative '0_car'

class CarTest < Minitest::Test
  def test_instance_of_car
    car = Car.new
    assert_instance_of(Car, car) # Fails unless car is an instance of Car
  end
end

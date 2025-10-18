require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

require_relative '0_car'

class CarTest < Minitest::Test
  def test_car_exists
    car = Car.new
    assert(car) # Fails unless car is truthy
  end
end

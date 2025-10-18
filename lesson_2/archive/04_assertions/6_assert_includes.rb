require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

require_relative '0_car'

class CarTest < Minitest::Test
  def test_includes_car
    car = Car.new
    arr = [1, 2, 3]
    arr << car

    # assert_includes(arr, car) # Fails unless arr is a collection that includes car
    assert(arr.include?(car))
  end
end

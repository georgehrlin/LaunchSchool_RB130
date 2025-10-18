require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

require_relative '0_car'

class CarTest < Minitest::Test
  def test_name_is_nil
    car = Car.new
    assert_nil(car.name) # Fails unless car.name returns nil
    # Or: assert(car.name == nil)
  end
end

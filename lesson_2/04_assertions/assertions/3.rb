require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

require_relative 'car'

class CarTest < Minitest::Test
  def test_name_is_nil
    car = Car.new
    assert_nil(car.name)
  end
end

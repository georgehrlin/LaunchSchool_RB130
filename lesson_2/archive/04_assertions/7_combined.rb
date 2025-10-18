require 'minitest/autorun'
#require 'minitest/reporters'
#Minitest::Reporters.use!

require_relative '0_car'

class CarTest < Minitest::Test
  def test_name_is_nil
    car = Car.new
    my_local_var = 'hi'
    # assert_nil(my_local_var) # Fails unless car.name returns nil
    assert(my_local_var.nil?)
  end

  def test_instance_of_car
    car = Car.new
    assert_instance_of(Car, car) # Fails unless car is an instance of Car
  end

  def test_includes_car
    car = Car.new
    arr = [1, 2, 3]
    arr << car

    # assert_includes(arr, car) # Fails unless arr is a collection that includes car
    assert(arr.include?(car))
  end
end

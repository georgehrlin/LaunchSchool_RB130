require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

require_relative '../car'

class CarTest < Minitest::Test
  def test_car_exists
    car = Car.new
    assert(car)
  end

  def test_wheels_is_4
    car = Car.new
    assert_equal(4, car.wheels)
  end

  def test_name_is_nil
    car = Car.new
    assert_nil(car.name)
  end

  def test_make_raises_NoMethodError
    car = Car.new
    assert_raises(NoMethodError) { car.make }
  end

  def test_raise_initialize_with_arg
    assert_raises(ArgumentError) do
      car = Car.new(name: "Joey")
    end
  end

  def test_car_instance_of_Car
    car = Car.new
    assert_instance_of(Car, car)
  end

  def test_cars_includes_car
    car = Car.new
    cars = [Car.new, Car.new]
    assert_includes(cars, car)
  end

  def test_cars_includes_car_assert_only
    car = Car.new
    cars = [Car.new, Car.new]
    assert(cars.include?(car))
  end
end

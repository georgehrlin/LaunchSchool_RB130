require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

require_relative '0_car'

class CarTest < Minitest::Test
  def test_raise_initialize_with_arg
    assert_raises(ArgumentError) do
      car = Car.new(name: "Joey") # Fails unless an AgumentError is raised
    end
  end
end

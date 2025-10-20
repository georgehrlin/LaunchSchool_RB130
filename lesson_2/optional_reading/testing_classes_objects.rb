require 'minitest/autorun'

class ClasseObjectTests < Minitest::Test
  def test_an_object_is_an_instance_of_a_class
    assert_instance_of(SomeClass, object)
  end

  def test_an_object_is_a_kind_of_a_class_or_one_of_its_subclasses
    assert_kind_of(SomeClass, object)
  end

  def test_an_object_repond_to_a_method
    assert_respond_to(object, :empty?)
  end
end
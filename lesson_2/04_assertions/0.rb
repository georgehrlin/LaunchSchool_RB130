=begin
assert(test)                     | Fails unless test is truthy.
assert_equal(expected, actual)   | Fails unless expected == actual.
assert_nil(obj)                  | Fails unless obj is nil.
assert_raises(*exp) { ... }      | Fails unless block raises one of *exp.
assert_instance_of(cls, obj)     | Fails unless obj is an instance of cls.
assert_includes(collection, obj) | Fails unless collection includes obj.
=end

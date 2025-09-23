def my_method
  yield(2)
end

my_method(&:to_s)
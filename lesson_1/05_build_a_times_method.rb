# My attempt without looking
def times(n)
  current_num = 0
  until current_num == n
    yield(current_num)
    current_num += 1
  end
  n
end

p (times(5) do |n|
  puts n
end)

# Official
# method implementation
def times(number)
  counter = 0
  while counter < number do
    yield(counter)
    counter += 1
  end

  number
  # return the original method argument to match behavior of `Integer#times`
end

# method invocation
times(5) do |num|
  puts num
end

# Output:
# 0
# 1
# 2
# 3
# 4
# => 5

# My attempt without looking
def reduce(collection, starting_val=nil)
  if starting_val.nil?
    idx = 1
    acc = collection.first
  else
    idx = 0
    acc = starting_val
  end

  current_num = collection[idx]

  until idx == collection.length
    acc = yield(acc, current_num)
    idx += 1
    current_num = collection[idx]
  end

  acc
end

p reduce(['a', 'b', 'c']) { |acc, value| acc += value }     # => 'abc'
p reduce([[1, 2], ['a', 'b']]) { |acc, value| acc + value } # => [1, 2, 'a', 'b']

# p reduce([1, 2, 3]) { |acc, num| acc + num }
# p reduce([1, 2, 3], 10) { |acc, num| acc + num }
# p reduce([1, 2, 3], 10) { |acc, num| acc - num }

# array = [1, 2, 3, 4, 5]

# p reduce(array) { |acc, num| acc + num }             # => 15
# p reduce(array, 10) { |acc, num| acc + num }         # => 25
# #p reduce(array) { |acc, num| acc + num if num.odd? } # => NoMethodError: undefined method `+' for nil:NilClass

# sentences = ["The ice cream truck is rolling on by", "There is a dog in the park", "There are jumping lizards on the fountain", "Why is there no rain today? I brought an umbrella for nothing.", "There is a dog park nearby!"]

# p reduce(sentences) do |memo, sentence|
#     if memo.size < sentence.size
#         memo = sentence
#     else
#         memo
#     end

=begin
# Official
def reduce(array, default=0)
  counter = 0
  accumulator = default

  while counter < array.size
    accumulator = yield(accumulator, array[counter])
    counter += 1
  end

  accumulator
end

sentences = ["The ice cream truck is rolling on by", "There is a dog in the park", "There are jumping lizards on the fountain", "Why is there no rain today? I brought an umbrella for nothing.", "There is a dog park nearby!"]

p (reduce(sentences) do |memo, sentence|
    if memo.size < sentence.size
        memo = sentence
    else
        memo
    end
   end)
=end

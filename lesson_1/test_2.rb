def reduce(collection, default=collection[0])
  total = default
  # Original: total = default unless default.nil?

  if total != collection.first
    collection.each do |item|
      total = yield(total, item)
    end
  else
    collection[1..].each do |item|
      total = yield(total, item)
    end
  end

  total
end

p reduce(['a', 'b', 'c']) { |acc, value| acc += value }     # =>  "abc"
p reduce([1, 2], ['a', 'b']) { |acc, value| acc + value } # =>  [1, 2, "a", "b"]
p reduce([1, 2, 3, 4, 5]) { |acc, num| acc + num }        # => 15
p reduce([1, 2, 3, 4, 5], 10) { |acc, num| acc + num }   # => 25
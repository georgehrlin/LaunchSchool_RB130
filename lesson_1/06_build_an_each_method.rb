# My attempt without looking
def each(collection)
  index = 0
  until index == collection.size
    yield(collection[index])
    index += 1
  end

  collection
end

each([1, 2, 3, 4, 5]) do |num|
  puts num
end

# Official
def each(array)
  counter = 0

  while counter < array.size
    yield(array[counter])
    # yield to the block, passing in the current element to the block
    counter += 1
  end

  array
  # returns the `array` parameter, similar in spirit to how `Array#each`
  # returns the caller
end

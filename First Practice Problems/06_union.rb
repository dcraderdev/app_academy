#06_union


# Write a method, union, that accepts any number of arrays as arguments.
# The method should return an array containing all elements of the given arrays.


p union(["a", "b"], [1, 2, 3]) # => ["a", "b", 1, 2, 3]
p union(["x", "y"], [true, false], [20, 21, 23]) # => ["x", "y", true, false, 20, 21, 23]


def union(*arr)
  union = []
  arr.map { |el| el.map {|l| union << l } }
  return union
end

  p union(["a", "b"], [1, 2, 3]) 
  # => ["a", "b", 1, 2, 3]

p union(["x", "y"], [true, false], [20, 21, 23]) 
# => ["x", "y", true, false, 20, 21, 23]




# # better answer


def union(*arr)
  arr.inject { |acc, el|  acc + el }
end

p union(["a", "b"], [1, 2, 3]) 
# => ["a", "b", 1, 2, 3]

p union(["x", "y"], [true, false], [20, 21, 23]) 
# => ["x", "y", true, false, 20, 21, 23]
"""
Combinations
Write a method combinations that takes in an array of unique elements, the
method should return a 2D array representing all possible combinations
of 2 elements of the array.
"""

def combinations(arr)
  res = []
  arr.each_with_index do |val1, i1|
    arr.each_with_index do |val2, i2|
      if i2 > i1
        res << [val1, val2]
      end
    end
  end
  return res
end

print combinations(["a", "b", "c"]); # => [ [ "a", "b" ], [ "a", "c" ], [ "b", "c" ] ]
puts

print combinations([0, 1, 2, 3]); # => [ [ 0, 1 ], [ 0, 2 ], [ 0, 3 ], [ 1, 2 ], [ 1, 3 ], [ 2, 3 ] ]
puts

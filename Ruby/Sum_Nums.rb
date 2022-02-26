"""
Sum Nums
Write a method sum_nums(max) that takes in a number max and returns the sum of
all numbers from 1 up to and including max.
"""

def sum_nums(max)
  sum = 0
  while max > 0
    sum += max
    max -= 1
  end
  return sum
end

puts sum_nums(4) # => 10, because 1 + 2 + 3 + 4 = 10
puts sum_nums(5) # => 15

"""
Range
Write a method range(min, max) that takes in two numbers min and max. The method
should return an array containing all numbers from min to max inclusive.
"""

def range(min, max)
  res = []
  for i in min..max
    res << i
  end
  return res
end

print range(2, 7)   # => [2, 3, 4, 5, 6, 7]
puts
print range(13, 20) # => [13, 14, 15, 16, 17, 18, 19, 20]

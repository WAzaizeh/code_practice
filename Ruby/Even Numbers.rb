"""
Even Nums
Write a method even_nums(max) that takes in a number max and returns an array
containing all even numbers from 0 to max
"""

def even_nums(max)
  res = []
  (0...max+1).step(2).each do |i|
    res << i
  end
  return res
end

print even_nums(10) # => [0, 2, 4, 6, 8, 10]
puts
print even_nums(5)  # => [0, 2, 4]

"""
Pyramid Sum
Write a method pyramid_sum that takes in an array of numbers representing the
base of a pyramid. The function should return a 2D array representing a complete
pyramid with the given base. To construct a level of the pyramid, we take the
sum of adjacent elements of the level below.
"""

# For example, the base [1, 4, 6] gives us the following pyramid
#     15
#   5   10
# 1   4    6

def pyramid_sum(base)
  res = [base]
  (base.length - 1).times do |i|
  	res.unshift (1 .. (res[0].length - 1)).map {|j| res[0][j-1 .. j].sum}
  end
  return res
end

print pyramid_sum([1, 4, 6]) #=> [[15], [5, 10], [1, 4, 6]]
puts

print pyramid_sum([3, 7, 2, 11]) #=> [[41], [19, 22], [10, 9, 13], [3, 7, 2, 11]]
puts

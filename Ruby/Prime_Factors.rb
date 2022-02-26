"""
Prime Factors
Write a method prime_factors that takes in a number and returns an array
containing all of the prime factors of the given number.
"""

def prime_factors(num)
  return (2 .. num / 2).select {|i| num % i == 0 && prime?(i)}
end

def prime?(num)
  num < 2 ? (return false) : nil
  return (2 .. num / 2).none? {|i| num % i == 0}
end



print prime_factors(24) #=> [2, 3]
puts
print prime_factors(60) #=> [2, 3, 5]
puts

"""
Number Check
Write a method number_check(num) that takes in a number and returns a string.
The method should return the string 'positive' if the num is positive, 'negative'
if the num is negative, and 'zero' if the num is zero.
"""

def number_check(num)
	return num > 0 ? (puts "positive") : num == 0 ? (puts "zero") : (puts "negative");
end

puts number_check(5)    # => "positive"
puts number_check(-2)   # => "negative"
puts number_check(0)    # => "zero"

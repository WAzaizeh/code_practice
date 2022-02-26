"""
Double Letter Count
Write a method that takes in a string and returns the number of times that the
same letter repeats twice in a row.
"""

def double_letter_count(string)
  c = 0
  (1 .. string.length - 1).map {|i| string[i - 1] == string[i] ? c += 1 : nil}
  return c
end

puts double_letter_count("the jeep rolled down the hill") #=> 3
puts double_letter_count("bootcamp") #=> 1

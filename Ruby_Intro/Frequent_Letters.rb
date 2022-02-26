"""
Frequent Letters
Write a method frequent_letters that takes in a string and returns an array
containing the characters that appeared more than twice in the string.
"""

def frequent_letters(string)
  count = Hash.new(0)
  res = []
  string.each_char {|char| count[char] += 1}
  count.each {|k, v| v > 2? res << k : nil}
  return res
end

print frequent_letters('mississippi') #=> ["i", "s"]
puts
print frequent_letters('bootcamp') #=> []
puts

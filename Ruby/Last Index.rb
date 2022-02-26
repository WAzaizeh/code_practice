"""
Last Index
Write a method last_index that takes in a string and a character. The method
should return the last index where the character can be found in the string.
"""

def last_index(str, char)
  res = str.reverse.each_char.map.with_index {|w, i| w == char ? (str.length-1) - i : nil}.compact
  return res[0]
end

puts last_index("abca", "a")       #=> 3
puts last_index("mississipi", "i") #=> 9
puts last_index("octagon", "o")    #=> 5
puts last_index("programming", "m")#=> 7

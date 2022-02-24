"""
Count E
Write a method count_e(word) that takes in a string word and returns the
number of e's in the word
"""

def count_e(word)
  i = 0
  c = 0
  while i < word.length
    word[i] == "e" ? c+= 1 : nil
    i += 1
  end
  return c
end

puts count_e("movie") # => 1
puts count_e("excellent") # => 3

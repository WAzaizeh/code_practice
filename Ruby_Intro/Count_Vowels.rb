"""
Count Vowels
Write a method, count_vowels(word), that takes in a string word and returns the
number of vowels in the word. Vowels are the letters a, e, i, o, u.
"""

def count_vowels(word)
  i = 0
  c = 0
  while i < word.length
    if ['a', 'e', 'i', 'o', 'u'].include?(word[i])
      c += 1
    end
    i += 1
  end
  return c
end

puts count_vowels("bootcamp")  # => 3
puts count_vowels("apple")     # => 2
puts count_vowels("pizza")     # => 2

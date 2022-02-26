"""
Most Vowels
Write a method most_vowels that takes in a sentence string and returns the word
of the sentence that contains the most vowels.
"""

def most_vowels(sentence)
  vowels = "aeiou"
  words = sentence.split(" ")
  res = words.map {|w| w.count(vowels)}
  return words[res.index(res.max)]
end

print most_vowels("what a wonderful life") #=> "wonderful"

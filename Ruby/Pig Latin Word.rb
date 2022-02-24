"""
Pig Latin Word
Write a method pig_latin_word that takes in a word string and translates the
word into pig latin.
"""

# Pig latin translation uses the following rules:
# - for words that start with a vowel, add 'yay' to the end
# - for words that start with a nonvowel, move all letters before the first vowel to the end of the word and add 'ay'

def pig_latin_word(word)
  vowels = 'aeiou'
  splitted = word.chars
  right_part = []

  word.each_char do |letter|
    vowels.include?(letter) ? (return word + 'yay') : right_part << splitted.shift
    word = (splitted + right_part).join
  end

  return word
end

puts pig_latin_word("apple")   # => "appleyay"
puts pig_latin_word("eat")     # => "eatyay"
puts pig_latin_word("banana")  # => "ananabay"
puts pig_latin_word("trash")   # => "ashtray"

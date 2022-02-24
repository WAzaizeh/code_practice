"""
Select Long Words
Write a method select_long_words(words) that takes in an array of words and
returns a new array containing all of the words of the original array that are
longer than 4 characters.
"""

def select_long_words(words)
  res = []
  for word in words do
    if word.length > 4
      res << word
    end
  end
  return res

end

print select_long_words(["what", "are", "we", "eating", "for", "dinner"]) # => ["eating", "dinner"]
puts
print select_long_words(["keep", "coding"])                               # => ["coding"]

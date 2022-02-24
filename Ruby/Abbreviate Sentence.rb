"""
Abbreviate Sentence
Write a method abbreviate_sentence that takes in a sentence string and returns
a new sentence where every word longer than 4 characters has all of it's vowels
removed.
"""

def abbreviate_sentence(sent)
  res = []
  vowels = "aeoui"
  words = sent.split(" ")
  words.each do |word|
    word_arr = word.split('')
    if word.length > 4
      word_arr.delete_if {|char| "aeiou".include?(char) }
    end
    res << word_arr.join('')
  end
  return res.join(" ")
end

puts abbreviate_sentence("follow the yellow brick road") # => "fllw the yllw brck road"
puts abbreviate_sentence("what a wonderful life")        # => "what a wndrfl life"

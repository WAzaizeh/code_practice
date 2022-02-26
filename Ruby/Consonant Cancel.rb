"""
Consonant Cancel
Write a method consonant_cancel that takes in a sentence and returns a new
sentence where every word begins with it's first vowel.
"""

def consonant_cancel(sentence)
  vowel_pattern = /[aeiou]/
  return sentence.split.map {|w| w[w.index(vowel_pattern) .. w.length-1]}.join(" ")
end

puts consonant_cancel("down the rabbit hole") #=> "own e abbit ole"
puts consonant_cancel("writing code is challenging") #=> "iting ode is allenging"

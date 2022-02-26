"""
Vowel Cipher
Write a method vowel_cipher that takes in a string and returns a new string
where every vowel becomes the next vowel in the alphabet.
"""

def vowel_cipher(string)
  vowel = "aeiou"
  return string.each_char.map {|a| vowel.include?(a)? vowel[(vowel.index(a) + 1) % vowel.length] : a}.join("")
end

puts vowel_cipher("bootcamp") #=> buutcemp
puts vowel_cipher("paper cup") #=> pepir cap

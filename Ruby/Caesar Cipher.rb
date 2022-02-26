"""
Caesar Cipher
Write a method caesar_cipher that takes in a string and a number. The method
should return a new string where every character of the original is shifted num
characters in the alphabet.
"""

# Feel free to use this variable:
# alphabet = "abcdefghijklmnopqrstuvwxyz"

def caesar_cipher(str, num)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  res = ""
  str.each_char.map do |a|
    i = alphabet.index(a)
    if i < (alphabet.length - 1)
      res += alphabet[i + num]
    else
      res += alphabet[num - alphabet.length - 1]
    end
  end
  return res
end

puts caesar_cipher("apple", 1)    #=> "bqqmf"
puts caesar_cipher("bootcamp", 2) #=> "dqqvecor"
puts caesar_cipher("zebra", 4)    #=> "difve"

def caesar_cipher2(str, num)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  return str.each_char.map {|a| alphabet[(alphabet.index(a) + num) % 26]}.join("")
end

puts caesar_cipher2("apple", 1)    #=> "bqqmf"
puts caesar_cipher2("bootcamp", 2) #=> "dqqvecor"
puts caesar_cipher2("zebra", 4)    #=> "difve"

"""
Anagrams
Write a method anagrams? that takes in two words and returns a boolean
indicating whether or not the words are anagrams. Anagrams are words that
contain the same characters but not necessarily in the same order. Solve this
without using .sort
"""

def anagrams?(word1, word2)
  count1, count2 = Hash.new(0), Hash.new(0)
  word1.each_char.map {|s| count1[s] += 1}
  word2.each_char.map {|s| count2[s] += 1}
  return count1 == count2
end

puts anagrams?("cat", "act")          #=> true
puts anagrams?("restful", "fluster")  #=> true
puts anagrams?("cat", "dog")          #=> false
puts anagrams?("boot", "bootcamp")    #=> false

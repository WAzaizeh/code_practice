"""
Hand Score
Write a method hand_score that takes in a string representing a hand of cards
and returns it's total score. You can assume the letters in the string are
only A, K, Q, J. A is worth 4 points, K is 3 points, Q is 2 points, and J i
s 1 point. The letters of the input string not necessarily uppercase.
"""

def hand_score(hand)
  hands = {"A" => 4, "K" => 3, "Q" => 2, "J" => 1}
  sum = 0
  hand.each_char {|char| sum += hands[char.upcase]}
  return sum
end

puts hand_score("AQAJ") #=> 11
puts hand_score("jJka") #=> 9

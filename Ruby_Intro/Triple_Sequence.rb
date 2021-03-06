"""
Triple Sequence
Write a method triple_sequence that takes in two numbers, start and length. The
method should return an array representing a sequence that begins with start and
is length elements long. In the sequence, every element should be 3 times the
previous element. Assume that the length is at least 1.
"""

def triple_sequence(start, length)
  return (0.. length - 1).map {|i| start * 3 ** (i)}
end

print triple_sequence(2, 4) # => [2, 6, 18, 54] [2, 2*3, 2*3*3, 2*3*3*3]
puts
print triple_sequence(4, 5) # => [4, 12, 36, 108, 324]
puts

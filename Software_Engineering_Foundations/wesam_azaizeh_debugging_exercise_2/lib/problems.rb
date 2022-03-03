# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.

require 'byebug'
require 'prime'
require 'set'

def largest_prime_factor(num)
    # debugger
    return (num).downto(2).find {|f| num % f == 0 && f.prime?}
end

# puts largest_prime_factor(7)

def unique_chars?(str)
    counts = Hash.new(0)
    str.each_char.map {|c| counts[c] += 1}
    return counts.values.all? {|v| v == 1}
end

# puts unique_chars?("bicycle")

def dupe_indices(arr)
    idx = Hash.new { |h, k| h[k] = [] }
    arr.each_with_index {|c, i| idx[c] << i}
    return idx.select {|k, v| v.size > 1}
end

# puts dupe_indices(["a", "b", "c", "c", "b"])

def ana_array(arr1, arr2)
    arr1, arr2 = arr1.to_set, arr2.to_set
    return (arr1 - arr2).empty? && (arr2 - arr1).empty?
end

# puts ana_array(["cat"], ["cat", "dog"])
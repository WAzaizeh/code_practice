def palindrome?(str)
    return (str.length/2).times.all? { |i| str[i] == str[-i - 1] }
end

def substrings(str)
    res = []
    str.each_char.map.with_index do |c, i|
         i.upto(str.length - 1) do |j|
            res << str[i .. j]
         end
    end
    return res
end

def palindrome_substrings(str)
    return substrings(str).select {|subs| palindrome?(subs) && subs.size > 1}
end

puts palindrome_substrings('abracadabra')

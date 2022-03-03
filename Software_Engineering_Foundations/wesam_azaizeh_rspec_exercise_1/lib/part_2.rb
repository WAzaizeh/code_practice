def hipsterfy(word)
    return word.reverse.sub(/[aeiou]/, '').reverse
end

def vowel_counts(sen)
    count = Hash.new(0)
    vowels = 'aeiou'
    sen.downcase.each_char.map {|c| count[c] += 1 if vowels.include?(c)}
    return count
end

def caesar_cipher(str, num)
    alphabet = "abcdefghijklmnopqrstuvwxyz"
    return str.each_char.map {|a| 
        alphabet.include?(a) ? alphabet[(alphabet.index(a) + num) % 26] : a}.join('')
end

puts caesar_cipher('a123 _-!?@%', 3)
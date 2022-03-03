def partition(arr, target)
    res = Array.new(2) {Array.new}
    arr.map {|n| n < target ? res[0] << n : res[1] << n}
    p res
end

def merge(hash1, hash2)
    res = Hash.new()
    hash1.map {|k,v| hash2.key?(k) ? nil : res[k] = v}
    hash2.map {|k,v| res[k] = v}
    return res
end

def censor(sen, arr)
    return sen.split.map {|w| arr.include?(w.downcase) ? replace_vowels(w) : w}.join(' ')
end

def replace_vowels(word)
    vowels = 'aeiou'
    return word.each_char.with_index {|c, i| vowels.include?(c.downcase) ? word[i] = '*' : nil}
end

def power_of_two?(num)
    return num.to_s(2).count('1') == 1
end


puts censor("Gosh darn it", ["gosh", "darn", "shoot"])


def select_even_nums(arr)
    arr.select(&:even?)
end

def reject_puppies(hash_arr)
    hash_arr.reject {|d| d["age"] <= 2}
end

def count_positive_subarrays(arr)
    arr.count {|sub_arr| sub_arr.sum > 0}
end

def aba_translate(str)
    vowels = 'aeiou'
    res = ''
    str.chars.map.with_index {|c, i| vowels.include?(c) ? res += (c + 'b' + c) : res += c}.join
    res
end

def aba_array(arr)
    arr.map {|w| aba_translate(w)}
end
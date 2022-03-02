def average(num1, num2)
    return (num1 + num2) / 2.0
end

def average_array(arr)
    return arr.inject{ |sum, el| sum + el }.to_f / arr.size
end

def repeat(str, num)
    return str * num
end

def yell(str)
    return str.upcase! + '!'
end

def alternating_case(sen)
    return sen.split.each_with_index{|w, i| i.even? ? w.upcase! : w.downcase!}.join(' ')
end

puts yell('hello')
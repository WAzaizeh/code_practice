def reverser(str, &prc)
    prc.call( str.reverse)
end

def word_changer(sen, &prc)
    res = []
    sen.split.each {|w| res << prc.call(w)}
    res.join(' ')
end 

def greater_proc_value(num, prc_1, prc_2)
    [prc_1.call(num), prc_2.call(num)].max
end

def and_selector(arr, prc_1, prc_2)
    res = []
    arr.each {|e| res << e if prc_1.call(e) && prc_2.call(e)}
    res
end

def alternating_mapper(arr, prc_1, prc_2)
    res = []
    arr.each_with_index {|e, i| i.even? ? res << prc_1.call(e) : res << prc_2.call(e)}
    res
end

half = Proc.new { |n| n / 2.0 }
times_thousand = Proc.new { |n| n * 1000 }
p alternating_mapper([1,10,4,7,5], half, times_thousand)
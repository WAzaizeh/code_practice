def my_map(arr, &prc)
    res = []
    arr.each {|e| res << prc.call(e)}
    res
end

def my_select(arr, &prc)
    res = []
    arr.each {|e| res << e if prc.call(e)}
    res
end

def my_count(arr, &prc)
    count = 0
    arr.each {|e| count += 1 if prc.call(e)}
    count
end

def my_any?(arr, &prc)
    arr.each {|e| return true if prc.call(e)}
    false
end

def my_all?(arr, &prc)
    arr.each {|e| return false if !prc.call(e)}
    true
end

def my_none?(arr, &prc)
    arr.each {|e| return false if prc.call(e)}
    true
end
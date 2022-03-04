def all_words_capitalized?(arr)
    arr.all? {|w| capitalized?(w)}
end

def capitalized?(str)
    str.capitalize == str
end

def no_valid_url?(url_arr)
    suf = ['.com', '.net', '.io', '.org']
    url_arr.none? {|w| suf.include?('.' + w.split('.')[-1])}
end

def any_passing_students?(students_arr)
    students_arr.any? {|student| (student[:grades].sum / student[:grades].size)  > 75}
end

students = [
          { name: "Alice", grades: [60, 68] },
          { name: "Bob", grades: [20, 100] }
        ]
puts any_passing_students?(students)
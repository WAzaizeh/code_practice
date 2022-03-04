def all_words_capitalized?(arr)
    arr.all? {|w| w.capitalize == w}
end

def no_valid_url?(url_arr)
    suf = ['.com', '.net', '.io', '.org']
    url_arr.none? {|w| w.end_with?(*suf)}
end

def any_passing_students?(students_arr)
    students_arr.any? {|student| (student[:grades].sum / student[:grades].size * 1.0)  >= 75}
end
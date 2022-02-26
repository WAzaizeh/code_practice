"""
Same Char Collapse
Write a method same_char_collapse that takes in a string and returns a collapsed
version of the string. To collapse the string, we repeatedly delete 2 adjacent
characters that are the same until there are no such adjacent characters. If
there are multiple pairs that can be collapsed, delete the leftmost pair.
For example, we take the following steps to collapse "zzzxaaxy":
zzzxaaxy -> zxaaxy -> zxxy -> zy
"""

def same_char_collapse(str)
  reducible = true

  while reducible
    reducible = false

    str.each_char.with_index do |c, i|

      if (i < str.length - 1) && (str[i] == str[i + 1])
        str[i..i+1] = ''
        reducible = true
        break
      end

    end
  end

  return str
end

def uniq?(str)
  return str.split.uniq.length == str.length
end


puts same_char_collapse("zzzxaaxy")   #=> "zy"
# because zzzxaaxy -> zxaaxy -> zxxy -> zy


puts same_char_collapse("uqrssrqvtt") #=> "uv"
# because uqrssrqvtt -> uqrrqvtt -> uqqvtt -> uvtt -> uv

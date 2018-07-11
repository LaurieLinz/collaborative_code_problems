# Problem "Is unique"
# Implement an algorithm to determine if a string has unique characters

unique_chars_in_string = "abcdefghijklmnop1293!&"
non_unique_chars_in_string = "aabc29930h^&"


# Assume ASCII character set?
def is_isogram(candidate_string)
    standard_ascii_max_char_count = 128
    char_counts = Array.new(128, 0)
    isogram = true

    if candidate_string.length > standard_ascii_max_char_count
        return false
    end

    candidate_string.split("").each do |char|
        if char_counts[char.ord] > 0
            isogram = false
            break
        end
        char_counts[char.ord] += 1
    end

    return isogram
end

def simplified_is_isogram(candidate_string)
    candidate_string = candidate_string.split("").sort
    (0..candidate_string.length-1).each do |index|
        if candidate_string[index] == candidate_string[index+1] 
            return false
        end
    end
    return true
end


def simplified_is_isogram2(candidate_string)
    candidate_string.each_char { |char| return false if candidate_string.count(char) > 1 }
    return true
end


puts "tests...."
puts "#{unique_chars_in_string} #{is_isogram(unique_chars_in_string) ? 'is' : 'is not'} an isogram"
puts "#{non_unique_chars_in_string} #{is_isogram(non_unique_chars_in_string) ? 'is' : 'is not'} an isogram"
puts "#{unique_chars_in_string} #{simplified_is_isogram(unique_chars_in_string) ? 'is' : 'is not'} an isogram"
puts "#{non_unique_chars_in_string} #{simplified_is_isogram(non_unique_chars_in_string) ? 'is' : 'is not'} an isogram"

# What if you cannot use additional datastructures?
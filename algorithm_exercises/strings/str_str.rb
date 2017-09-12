def str_str_regexp(haystack, needle)
    return 0 if needle.length == 0
    needle = Regexp.new(/#{needle}/)
    if haystack =~ needle
        return haystack =~ needle
    else
        return -1
    end
end

# space: O(n)
# time: O(n)

def str_str
  nlength = needle.length
    return 0 if nlength == 0
    haystack.chars.each_with_index do |letter, i|
        return i if haystack[i, nlength] == needle
    end
    return -1
  end
end

# time: O(n)
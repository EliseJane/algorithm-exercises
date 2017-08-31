def reverse_string(s)
    chars = s.chars
    front_i = 0
    back_i = chars.length - 1
    while front_i < back_i do
        chars[front_i], chars[back_i] = chars[back_i], chars[front_i]
        front_i += 1
        back_i -= 1
    end
    chars.join
end

# space: O(n)
# time: O(n)
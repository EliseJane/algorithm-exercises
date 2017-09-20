def find_the_difference(s, t)
    ALPAHBET = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]

    t.map! {|char| ALPHABET.index_of(char)}
    binary_t = t[0] ^ t[1]
    (2...t.size).each do |num|
        binary_t ^= t[num]
    end

    s.map! {|char| ALPHABET.index_of(char)}
    binary_s = s[0] ^ s[1]
    (2...s.size).each do |num|
        binary_s ^= s[num]
    end

    answer = binary_s ^ binary_t

    return ALPHABET[answer]
end


For that one, I didn't really think of converting the strings to binary.
Instead, I converted each char to their zero based index in the alphabet
and used the XOR operator to reduce each string to a number. I then XOR'd
those numbers together to get a number which represented the index of a
character in the alphabet.

for example:
`'abc' = 0 ^ 1 ^ 2 = 3 ` `'abcd' = 0 ^ 1 ^ 2 ^ 3 = 0` `3 ^ 0 = 3` `alphabet[3] = 'd'`
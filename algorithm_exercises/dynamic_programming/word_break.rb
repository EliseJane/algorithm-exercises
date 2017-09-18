dp[i], i in 0..s.size-1 : can a substring from 0..i be broken into dict words

dp[0] ... dp[i-1]

false: l
false: le
false: lee
true : leet
false: leetc

??   : leetco

def word_break(s, word_dict)
  dp = [true]

  (1..s.length).each do |i|
    (0...i).each do |j|
      if dp[j] && word_dict.include?(s[j...i])
        dp[i] = true
        break
      end
    end
  end

  !!dp[s.length]
end
def partition(s, set=[], solutions=[])
  if s.length == 0
    solutions << set.clone
  else
    (0...s.length).each do |i|
      if is_palindrome(s[0..i])
        set << s[0..i]
        partition(s[i+1..-1], set, solutions)
        set.pop
      end
    end
  end
  solutions       
end

def is_palindrome(string)
  left = 0
  right = string.length-1

  while left < right
    return false if string[left] != string[right]
    left += 1
    right -= 1
  end

  return true
end
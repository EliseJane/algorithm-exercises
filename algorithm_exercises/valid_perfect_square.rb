#valid perfect square

def is_perfect_square(num)
  left = 0
  right = num
  while left + 1 < right
    mid = left + (right - left) / 2
    if mid * mid == num
      return true
    elsif mid * mid < num
      left = mid
    else
      right = mid
    end
  end

  return true if left * left == num || right * right == num
  return false
end

p is_perfect_square(16)
p is_perfect_square(14)
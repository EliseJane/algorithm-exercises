def can_jump(nums, i=0, memo={})
  return true if i == nums.size-1
  memo[i] = false and return false if nums[i] == 0
   
  1.upto(nums[i]) do |jump_length|
    if memo[i+jump_length]
      return memo[i+jump_length]
    else
      memo[i+jump_length] = can_jump(nums, i+jump_length, memo)
    end
    return true if memo[i+jump_length]
  end
  return false
end

def can_jump(nums)
  memo = [true]

  (1...nums.size).each do |i|
    (0...i).each do |j|
      memo[i] = true if (memo[j] && (nums[j] >= (i-j)))
    end
  end

  return memo[nums.length-1] || false
end
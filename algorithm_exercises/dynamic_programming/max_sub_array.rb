def max_sub_array(nums, left=0, right=nums.size-1)
  if left == right
    return nums[left]
  end

  mid = left + (right-left) / 2

  return [max_sub_array(nums, left, mid), max_sub_array(nums, mid+1, right), max_cross(nums, left, mid, right)].max
end

def max_cross(nums, left, mid, right)
  sum = 0
  left_sum = -999
  mid.downto(left) do |i|
    sum += nums[i]
    left_sum = sum if sum > left_sum
  end

  sum = 0
  right_sum = -999
  (mid+1).upto(right) do |i|
    sum += nums[i]
    right_sum = sum if sum > right_sum
  end

  return left_sum + right_sum
end
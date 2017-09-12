# using Kadane's algorithm and recursion
def max_sub_array(nums, prev_sum=0, max_so_far=0, best_start=-1, best_end=-1, current_start=0, i=0)

  sum = [0, prev_sum + nums[i]].max
  current_start = i if prev_sum == 0

  if sum > max_so_far
    max_so_far = sum
    best_start = current_start
    best_end = i
  end

  if i < nums.size - 1
    max_sub_array(nums, sum, max_so_far, best_start, best_end, current_start, i+1)
  else
    return [best_start, best_end]
  end
end

p max_subarray([-2,1,-3,4,-1,2,1,-5,4])


# divide and conquer
def max_subarray(nums, left=0, right=nums.size-1)
  if left == right
    return nums[left]
  end

  mid = left + (right-left) / 2

  return [max_subarray(nums, left, mid), max_subarray(nums, mid+1, right), max_cross(nums, left, mid, right)].max
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
def find_kth_largest(nums, k, left=0, right=nums.size-1)
  pivot_index = partition(nums, left, right)
  if pivot_index == nums.size - k
    return nums[pivot_index]
  end

  if pivot_index < nums.size - k
    find_kth_largest(nums, k, pivot_index+1, right)
  elsif pivot_index > nums.size - k
    find_kth_largest(nums, k, left, pivot_index-1)
  end
end

def partition(nums, left, right)
  pivot_index = right
  right = left
  left -= 1

  while right < nums.size
    if nums[right] < nums[pivot_index]
      left += 1
      nums[right], nums[left] = nums[left], nums[right]
    end
    right += 1
  end

  left += 1
  nums[left], nums[pivot_index] = nums[pivot_index], nums[left]
  
  return left
end

p find_kth_largest([3, 2, 1, 5, 6, 4], 2)
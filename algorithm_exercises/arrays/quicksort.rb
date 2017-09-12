def quicksort(nums, left=0, right=nums.size-1)
  if left <= right
    pivot_index = partition(nums, left, right)

    quicksort(nums, left, pivot_index-1)
    quicksort(nums, pivot_index+1, right)
  end

  nums
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

p quicksort([2, 5, 1, 9, 6, 4, 3])
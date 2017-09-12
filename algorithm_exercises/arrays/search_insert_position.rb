#search insert position
#use binary search template

def search_insert(nums, target)
  if nums.size == 1
      if nums[0] >= target
          return 0
      else
          return 1
      end
  end
  left = 0
  right = nums.size - 1
  while left + 1 < right
    mid = left + (right - left) / 2
    if nums[mid] == target
      return mid
    elsif nums[mid] < target
      left = mid
    else
      right = mid
    end
  end
  
  if target <= nums[left]
      return left
  elsif target <= nums[right]
      return right
  else
      return right + 1
  end
end
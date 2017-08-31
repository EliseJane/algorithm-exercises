#search in rotated sorted array

def search(nums, target)
  return -1 if nums.empty?

  left = 0
  right = nums.size - 1
  min_index = nil
  while left + 1 < right
    mid = left + (right - left) / 2
    if nums[left] < nums[mid] && nums[right] > nums[mid]
      min_index = 0
      break
    elsif nums[left] < nums[mid]
      left = mid
    elsif nums[right] > nums[mid]
      right = mid
    end
  end

  if !min_index
    min_index = nums[left] < nums[right] ? left : right
  end
  
  if nums[min_index] == target
    return min_index
  elsif target <= nums[-1] || min_index == 0
    left = min_index
    right = nums.size - 1
  elsif target >= nums[0]
    right = min_index - 1
    left = 0
  end

  while left + 1 < right
    mid = left + (right - left) / 2
    if nums[mid] == target
      return mid
    elsif nums[mid] > target
      right = mid
    elsif nums[mid] < target
      left = mid
    end
  end

  if nums[left] == target
    return left
  elsif nums[right] == target
    return right
  else
    return -1
  end
end

p search([3, 5, 1], 1)

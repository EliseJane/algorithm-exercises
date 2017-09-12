#search for a range
#use binary search template to find FIRST occurence
#and again to find LAST occurrence
#that's that range

def search_range(nums, target)
  left = 0
  right = nums.size - 1
  beginning = -1
  ending = -1

  while left + 1 < right
    mid = left + (right - left) / 2
    if nums[mid] < target
      left = mid + 1
    else
      right = mid
    end
  end
  if nums[left] == target
    beginning = left
  elsif nums[right] == target
    beginning = right
  end

  right = nums.size - 1
  while left + 1 < right
    mid = left + (right - left) / 2 + 1
    if nums[mid] > target
      right = mid - 1
    else
      left = mid
    end
  end
  if nums[right] == target
    ending = right
  elsif nums[left] == target
    ending = left
  end

  return [beginning, ending]
end

p search_range([2, 7, 7, 7, 7, 7], 7)

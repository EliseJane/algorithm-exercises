def search_range(nums, target)
  if nums.size == 1 && nums[0] == target
      return [0, 0]
  end

  return [find_beginning(nums, target), find_ending(nums, target)]
end

def find_beginning(nums, target, left=0, right=nums.size-1)
  if left + 1 < right
    mid = left + (right - left) / 2
    if nums[mid] >= target
      find_beginning(nums, target, left, mid)
    else
      find_beginning(nums, target, mid, right)
    end
  else
    if nums[left] == target
      return left
    elsif nums[right] == target
      return right
    else
      return -1
    end
  end
end

def find_ending(nums, target, left=0, right=nums.size-1)
  if left + 1 < right
    mid = left + (right - left) / 2
    if nums[mid] > target
      find_ending(nums, target, left, mid)
    else
      find_ending(nums, target, mid, right)
    end
  else
    if nums[right] == target
      return right
    elsif nums[left] == target
      return left
    else
      return -1
    end
  end
end

p search_range([2, 3, 7, 7, 7, 9, 9], 7)

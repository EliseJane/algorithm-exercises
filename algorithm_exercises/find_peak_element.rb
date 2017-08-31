#find peak element
#using binary search template

def find_peak_element(nums)
  left = 0
  right = nums.size - 1
  while left + 1 < right
    mid = left + (right - left) / 2
    if nums[mid] > nums[mid-1] && nums[mid] > nums[mid+1]
      return mid
    elsif nums[mid] < nums[mid+1]
      left = mid
    else
      right = mid
    end
  end

  if nums[left] > nums[right]
    return left
  else
    return right
  end
end

p find_peak_element([0, 1, 2, 3, 2, 3, 4])
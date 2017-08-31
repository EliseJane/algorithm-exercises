=begin
find minimum in rotated sorted array
easy with O(n)
use binary search template
compare midpoint with item to left and right?
throw away the half that has a constant slope because
    that's not where the loop around to the beginning is
    i.e. keep the zigzag half
=end

def find_min(nums)
  left = 0
  right = nums.size - 1
  while left + 1 < right
    mid = left + (right - left) / 2
    if nums[left] < nums[mid] && nums[right] > nums[mid]
      return nums[0]
    elsif nums[left] < nums[mid]
      left = mid
    elsif nums[right] > nums[mid]
      right = mid
    end
  end

  if nums[left] < nums[right]
    return nums[left]
  else
    return nums[right]
  end
end

p find_min([1, 2, 4, 5, 6, 7, 0])
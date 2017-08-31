# Find a number in an array and return its index. If not found, return -1

def search_recursion(nums, target, index=0)
  if index + 1 > nums.size
    return -1
  end

  if nums[index] == target
    return index
  else
    search_recursion(nums, target, index+1)
  end
end

p search_recursion([0, 3, 9, 1, 2], 3)
p search_recursion([0, 3, 9, 1, 2], 4)
p search_recursion([3], 3)
p search_recursion([3], 4)
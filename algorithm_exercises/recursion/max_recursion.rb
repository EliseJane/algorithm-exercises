# Find the maximum number in an array of numbers. Return that number.

def max_recurse(nums)
  return 0 if nums.size == 0
  return nums[0] if nums.size == 1
  if nums[0] > nums[-1]
    max_recurse(nums[0...-1])
  else
    max_recurse(nums[1..-1])
  end
end

p max_recurse([])
p max_recurse([2])
p max_recurse([1, 6, 3, 9, 12, 13, 14, 3])
p max_recurse([2, 2, 2])
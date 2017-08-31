# Implement Merge Sort

def merge_sort(nums)
  return nums if nums.size <= 1

  mp = nums.size / 2
  left_half = merge_sort(nums[0...mp])
  right_half = merge_sort(nums[mp..-1])

  return merge_helper(left_half, right_half)
end

def merge_helper(left, right)  # this could be recursive also
  result = []

  while !left.empty? && !right.empty? do
    if left[0] <= right[0]
      result.push(left.shift)
    else
      result.push(right.shift)
    end
  end

  while !left.empty? do
    result.push(left.shift)
  end
  while !right.empty? do
    result.push(right.shift)
  end

  result
end

p merge_sort([5, 3, 9, 1, 400, 254])
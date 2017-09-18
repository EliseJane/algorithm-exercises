def subsets_with_dup(nums)
  subset_helper(nums.sort, 0, [], {})
end


def subset_helper(nums, start, subset, results)
  results[subset.clone] = true

  (start...nums.length).each do |i|
    subset << nums[i]
    subset_helper(nums, i+1, subset, results)
    subset.pop
  end
  
  results.keys
end
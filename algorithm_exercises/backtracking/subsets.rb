def subsets(nums, subset=[], results=[])
    results << subset.clone

    if nums.size > 0
        nums.each_with_index do |num, i|
            subset << num
            subsets(nums[i+1..-1], subset, results)
            subset.pop
        end
    end
    results
end
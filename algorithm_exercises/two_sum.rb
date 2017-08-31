def two_sum(nums, target)
    diffs = {}
    nums.each_with_index do |num, i|
        if diffs.has_key?(num)
            return [diffs[num], i]
        else
            diffs[target - num] = i
        end
    end
end

# space: O(n)
# time: O(n)
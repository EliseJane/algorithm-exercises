def two_sum_ordered(nums, target)
    left = 0
    right = nums.length - 1

    while left < right do
        sum = nums[left] + nums[right]

        if sum == target
            break
        elsif sum > target
            right -= 1
        elsif sum < target
            left += 1
        end
    end
    return [left+1, right+1]
end

# time: O(n)
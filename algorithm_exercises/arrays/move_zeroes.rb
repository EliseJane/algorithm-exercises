def move_zeroes(nums)
    reader = 0
    writer = 0
    
    while reader < nums.size do
        if nums[reader] != 0
            nums[writer] = nums[reader]
            writer += 1
        end
        reader += 1
    end
    
    while writer < nums.size do
        nums[writer] = 0
        writer += 1
    end
    
    return nums
end
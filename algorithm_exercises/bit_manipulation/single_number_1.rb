def single_number(nums)
    return nums[0] if nums.size < 2
    
    total = nums[0] ^ nums[1]
    
    (2...nums.size).each do |idx|
        total ^= nums[idx]
    end
    
    total
end
def single_number(nums)
    n = 0
    
    (0...nums.size).each do |i|
        n ^= nums[i]
    end
    
    flag = n & (~(n - 1))
    a = 0
    b = 0
    
    (0...nums.size).each do |i|
        if flag & nums[i] == 0
            a ^= nums[i]
        else
            b ^= nums[i]
        end
    end
    
    return [a, b]
end
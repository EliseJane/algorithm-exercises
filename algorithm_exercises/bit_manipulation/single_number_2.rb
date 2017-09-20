def single_number(nums)
    return nums[0] if nums.size < 2
    
    a = 0
    b = 0
    
    (0...nums.size).each do |idx|
        temp = (a&~b&~nums[idx]) | (~a&b&nums[idx])
        b = (~a&b&~nums[idx]) | (~a&~b&nums[idx])
        a = temp
    end
    
    return a | b
end
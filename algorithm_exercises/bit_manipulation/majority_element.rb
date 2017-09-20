def majority_element(nums)
    mask = 1
    ret = 0
    negate = false
    (0...32).each do |bit|
        count = 0
        (0...nums.size).each do |idx|
            if nums[idx] < 0
                num = -(nums[idx])
                negate = true
            else
                num = nums[idx]
                negate = false
            end
            count += 1 if mask & num != 0
        end
        ret |= mask if count > nums.size/2
        mask <<= 1
    end
    return negate == true ? -ret : ret
end
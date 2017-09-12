def remove_duplicates(nums)
    left = 0
    right = 1
    
    while (right < nums.length) do
        nums[left] == nums[right] ? (nums[right] = nil) : (left = right)
        
        right += 1
    end
    
    nums.compact!
    nums.length
end

def remove_duplicates_hash(nums)
    dups = {}
    
    nums.each_with_index do |num, i|
        dups.has_key?(num) ? nums[i] = nil : dups[num] = 1
    end
    
    nums.compact!
    nums.length
end

# space: O(n)
# time: O(n^2)

def remove_duplicates(nums)
    return 0 if nums.length == 0
    left = 0
    right = 1
    
    while (right < nums.length) do
        if nums[left] != nums[right]
            left += 1
            nums[left] = nums[right]
        end
        
        right += 1
    end
    
    left + 1
end

# time: O(n)
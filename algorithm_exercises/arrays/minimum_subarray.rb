def min_sub_array_len(s, nums)
    return 0 if nums.empty? || nums.inject(:+) < s

    left = 0
    sum = 0
    min = nums.length
    
    nums.each_with_index do |num, i|
        sum += num
        while (sum >= s) do
            if nums[left..i].length < min
                min = nums[left..i].length
            end
            sum -= nums[left]
            left += 1
        end
    end
    min
end

# time: O(n^2)
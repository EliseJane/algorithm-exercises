def remove_element(nums, val)
    nums.each_with_index do |num, i|
        if num == val
            nums[i] = nil
        end
    end
    nums.compact!
    nums.length
end

# time: O(n^2)

def remove_element(nums, val)
    nums.delete(val)
    nums.length
end

# time: O(n^2)

def remove_element(nums, val)
  pointer = 0

  (0...nums.length).each do |idx|
    if nums[idx] != val
      nums[pointer] = nums[idx]
      pointer += 1
    end
  end
  pointer
end

# time: O(n)
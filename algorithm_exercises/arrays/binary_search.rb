def binary_recursion(nums, the_one)
    if nums.size == 1
        if nums[0] == the_one
            puts "We found #{the_one} in that group of stuff!"
        else
            puts "We couldn't find #{the_one} anywhere..."
        end
    else
        midpoint = nums.size / 2
        if nums[midpoint] > the_one
            binary(nums[0, midpoint-1], the_one)
        elsif nums[midpoint] < the_one
            binary(nums[midpoint+1, nums.size-1], the_one)
        else
            puts "We found #{the_one} in that group of stuff!"
        end
    end
end


# binary search template
def binary(stuff, thing)
  left = 0
  right = stuff.size - 1
  while left + 1 < right
    mid = left + (right - left) / 2 # this prevents overflow that's possible with left + right
    if stuff[mid] == thing
          # optional early return
    elsif # comparison
            # always include mid in the next iteration
      left = mid
    else
      right = mid
    end
  end

    # loop ends when left and right pointers are next to each other
  if stuff[left] == thing
        # ...
  end
  if stuff[right] == thing
        # ...
  end
end

=begin
    
pain point
    left < right? or left + 1 < right? or left <= right?
    left = mid? or left = mid + 1? or right = mid? or right = mid - 1?
    early return or not?
=end
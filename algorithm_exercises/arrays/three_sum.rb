def three_sum(nums)
  nums.sort!
  sets = []
  (0..nums.length-3).each do |left|
    middle = left + 1
    right = nums.length - 1
    while middle < right
      sum = nums[left] + nums[middle] + nums[right]
      if sum == 0
        sets << [nums[left], nums[middle], nums[right]]
        middle += 1
        right -= 1
      elsif sum < 0
        middle += 1
      elsif sum > 0
        right -= 1
      end
    end
  end
  return sets
end

p three_sum([-2, 0, 1, 1, 2])

# time: O(n^2)

=begin
  
naive: three nested loops, time: O(n^3), space: O(1)

iterate through for a - O(n)
  sort the array - O(nlogn)
  for each b - O(n)
    use binary seach to find c - O(logn)
time: O(n^2logn)

create hash table - O(n) is irrelevant
for each a - O(n)
  for each b - O(n)
    find c with hash table - O(1)
time: O(n^2), space O(n)

sort first - O(nlogn) irrelevant

for each a - O(n)
  find b and c with 2 pointers - O(n)
time: O(n^2), space: O(1)
  
=end
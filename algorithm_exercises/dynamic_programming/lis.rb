keep global running array of lis
smallest problem: 1 number, lis is always 1
so create array same size as num with each index set to 1

for each i in nums
  for each j in nums[0...i]
    if value at j is less than value at i, it is increasing
      lis[i] = lis[j] + 1 unless lis[i] already had a bigger value
      
return max of all lis

def length_of_lis(nums)
  lis = []
  nums.length.times { lis << 1 }
  greatest_lis = lis[0]

  (1...nums.length).each do |i|
    (0...i).each do |j|
      if nums[j] < nums[i]
        lis[i] = lis[j] + 1 unless lis[i] > lis[j] + 1
        greatest_lis = [greatest_lis, lis[i]].max
      end
    end
  end

  return greatest_lis || 0
end
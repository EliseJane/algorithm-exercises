[-2, 1, -3, 4, -1, 2, 1, -5, 4]

MS: [4, -1, 2, 1]

maximum subarray ending at index i

[-2]                [-2]
[-2, 1]             [1]
[-2, 1, -3]         [1, -3]
[-2, 1, -3, 4]      [4]

[-2, 1, -2, 4, ..6...].max


def max_sub_array(nums)
  dp = [nums[0]]
  max_so_far = dp[0]

  (1...nums.length).each do |i|
    dp[i] = nums[i] + (dp[i-1] > 0 ? dp[i-1] : 0)
    max_so_far = [max_so_far, dp[i]].max
  end

  max_so_far
end
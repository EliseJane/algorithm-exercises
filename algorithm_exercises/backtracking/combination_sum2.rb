def combination_sum2(candidates, target)
    combination_helper(candidates.sort, target, 0, [], [])
end

def combination_helper(candidates, target, start, combination, combinations)
  if target == 0
    combinations << combination.clone
  elsif target > 0
    (start...candidates.length).each do |idx|
      next if candidates[idx] == candidates[idx-1] && start != idx
      combination << candidates[idx]
      combination_helper(candidates, target-candidates[idx], idx+1, combination, combinations)
      combination.pop
    end
  end
  combinations
end
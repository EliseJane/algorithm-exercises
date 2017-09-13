def combination_sum(candidates, target, combination=[], combinations=[])
  if combination.inject(:+) == target
        combinations << combination.clone
  else
    if combination.empty? || combination.inject(:+) < target
        candidates.each_with_index do |candidate, i|
            combination << candidate
            combination_sum(candidates[i..-1], target, combination, combinations)
            combination.pop
        end
    end
  end
  combinations
end
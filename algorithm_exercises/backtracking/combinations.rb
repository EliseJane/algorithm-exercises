def combine(n, k, start=1, combination=[], combinations=[])
    if combination.size == k
        combinations << combination.clone
    else
        (start..n).each do |num|
            combination << num
            combine(n, k, num+1, combination, combinations)
            combination.pop
        end
    end
    combinations
end
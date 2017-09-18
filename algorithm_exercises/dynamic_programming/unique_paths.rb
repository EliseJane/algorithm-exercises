def unique_paths(m, n, cache={})
  return 0 if m < 1 || n < 1
  return 1 if m == 1 && n = 1

  from_top = cache[[m-1, n]] || unique_paths(m-1, n, cache)
  from_left = cache[[m, n-1]] || unique_paths(m, n-1, cache)

  total = from_top + from_left
  cache[[m, n]] = total
  total
end

def unique_paths_loop(m, n)
  memo = []
  
  (0...m).each do |row|
    memo[row]=[]
    memo[row][0] = 1
  end
  (0...n).each do |col|
    memo[0][col] = 1
  end

  (1...m).each do |row|
    (1...n).each do |col|
      memo[row][col] = memo[row][col] || memo[row-1][col] + memo[row][col-1]
    end
  end

  memo[m-1][n-1]
end
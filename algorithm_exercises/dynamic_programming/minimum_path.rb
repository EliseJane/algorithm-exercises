def min_path_sum(grid)
  rows = grid.size - 1
  columns = grid[0].size - 1
  min_path(grid, rows, columns)
end

def min_path(grid, rows, columns)
  if rows == 0 && columns == 0
    return grid[rows][columns]
  end
  if rows < 0 || columns < 0
    return Float::INFINITY
  end
    
  min_from_left = min_path(grid, rows, columns-1)
  min_from_above = min_path(grid, rows-1, columns)
    
  return grid[rows][columns] + [min_from_left, min_from_above].min
end

def min_path_sum_loop(grid)
  memo = [[grid[0][0]]]
  rows = grid.size - 1
  cols = grid[0].size - 1

  (1..rows).each do |row|
    memo[row] = []
    memo[row][0] = grid[row][0] + memo[row-1][0]
  end
  (1..cols).each do |col|
    memo[0][col] = grid[0][col] + memo[0][col-1]
  end

  (1..rows).each do |row|
    (1..cols).each do |col|
      memo[row][col] = memo[row][col] || (grid[row][col] + [memo[row-1][col], memo[row][col-1]].min)
    end
  end

  memo[rows][cols]
end

4 x 5  (0-index 3 x 4)

[0][0]  [0][1]  [0][2]  [0][3]  [0][4]

[1][0]  [1][1]  [1][2]  [1][3]  [1][4]

[2][0]  [2][1]  [2][2]  [2][3]  [2][4]

[3][0]  [3][1]  [3][2]  [3][3]  [3][4]
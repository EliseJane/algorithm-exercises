maze = [[1, 1, 1, 0], [1, 1, 0, 1], [1, 1, 0, 0], [0, 1, 1, 1]]

def rat_maze(maze, row=0, column=0, solution=[[0,0,0,0],[0,0,0,0],[0,0,0,0],[0,0,0,0]])
  return false unless row < maze.size && column < maze.size && maze[row][column] == 1
  solution[row][column] = 1
  return true if row == maze.length-1 && column == maze.length-1  # reached destination
  
  if rat_maze(maze, row, column+1, solution)
    return true
  elsif rat_maze(maze, row+1, column, solution)
    return true
  else
    solution[row][column] = 0
  end

  p solution
end
rat_maze(maze)
def minimum_total(triangle, row=0, column=0, memo={})
  if row == triangle.size - 1
    memo[[row, column]] = triangle[row][column]
    return triangle[row][column]
  end
  
  min_from_below_left = memo[[row+1, column]] || minimum_total(triangle, row+1, column, memo)
  min_from_below_right = memo[[row+1, column+1]] || minimum_total(triangle, row+1, column+1, memo)
    
  return triangle[row][column] + [min_from_below_left, min_from_below_right].min
end
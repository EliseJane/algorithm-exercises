def generate_parenthesis(n, ss="", open_used=0, close_used=0, solutions=[])
  if ss.length == n * 2
    solutions << ss.clone
  else
    generate_parenthesis(n, ss+"(", open_used+1, close_used, solutions) if open_used < n
    generate_parenthesis(n, ss+")", open_used, close_used+1, solutions) if close_used < open_used
  end
  solutions
end
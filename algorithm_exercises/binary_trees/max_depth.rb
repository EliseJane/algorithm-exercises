def max_depth(root, count=1)
    return 0 if !root
    return count unless root.left || root.right
    
    left_result = max_depth(root.left, count + 1)
    right_result = max_depth(root.right, count + 1)
    
    return left_result > right_result ? left_result : right_result
end

def max_depth_dnc(root)
  return 0 if !root

  left_result = max_depth(root.left)
  right_result = max_depth(root.right)

  return (left_result > right_result ? left_result : right_result) + 1
end
def inorder_traversal(node)
  node_values = []
  remaining_stack = []
    
  return node_values if !root
    
  while root || !remaining_stack.empty?
    while root
      remaining_stack.push(root)
      root = root.left
    end
  root = remaining_stack.pop
  node_values.push(root.val)
  root = root.right
  end
    
  node_values
end
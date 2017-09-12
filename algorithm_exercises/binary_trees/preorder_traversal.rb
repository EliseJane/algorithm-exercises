def preorder_traversal(root)
    return [] if root.nil?
    
    return [root.val].concat(preorder_traversal(root.left)).concat(preorder_traversal(root.right))
end


def preorder_traversal(root)
  node_values = []
  remaining_stack = []
    
  return node_values if !root
  
  while root || !remaining_stack.empty?
    while root
      node_values.push(root.val)
      remaining_stack.push(root)
      root = root.left
    end
    root = remaining_stack.pop
    root = root.right if root
  end  
  node_values
end
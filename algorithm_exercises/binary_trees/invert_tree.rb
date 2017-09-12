def invert_tree(root)
  return nil if root.nil?

  remaining_stack = []
  
  dummy_node = root
  while dummy_node || !remaining_stack.empty?
    while dummy_node
      temp = dummy_node.left
      dummy_node.left = dummy_node.right
      dummy_node.right = temp
      
      remaining_stack.push(dummy_node)
      dummy_node = dummy_node.left
    end
    dummy_node = remaining_stack.pop
    dummy_node = dummy_node.right if dummy_node
  end 

  root
end

def invert_tree_dnc(root)
  return nil if root.nil?

  left_result = invert_tree_dnc(root.left)
  right_result = invert_tree_dnc(root.right)

  root.left = right_result
  root.right = left_result

  return root
end

def invert_tree_recursion(root)
  return nil if root.nil?

  root.left, root.right = root.right, root.left

  invert_tree_recursion(root.left)
  invert_tree_recursion(root.right)

  return root
end
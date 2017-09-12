def is_valid_bst(root, min=nil, max=nil)
  return true if !root

  return false if (min && root.val <= min.val) || (max && root.val >= max.val)
  
  return is_valid_bst(root.left, min, root) && is_valid_bst(root.right, root, max)
end

# use in order traversal and just check that the values are in ascending order.

def is_valid_bst(root)
  return true if root.nil?
    inorder_values = inorder_traversal(root)

    (1...inorder_values.size).each do |idx|
      return false if inorder_values[idx] <= inorder_values[idx-1]
    end

    return true
end

def inorder_traversal(root)
  return true if root.nil?
    
  return inorder_traversal(root.left).concat([root.val]).concat(inorder_traversal(root.right))
end

def is_valid_bst(root, storage={keepTraversing: true, lastVisitedValue: nil})
  return false if storage.keepTraversal.false?

  left = root.left
  right = root.right

  is_valid_bst(left, storage)

  if root.val <= storage.lastVisitedValue
    storage.keepTraversing = false
  else
    storage.lastVisitedValue = root.val
  end

  is_valid_bst(right, storage)

  return true
end

=begin
  
traversal rules to validate BST

traverse the tree... as I visit each node
 - keep track of last node visited
 - compare the current with the last node's value
 - if current <= last
    - stop traversal and return false
 - when I reach the end
   - return true

=end

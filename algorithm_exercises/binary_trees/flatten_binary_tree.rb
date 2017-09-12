def flatten(root)
  return nil if !root

  left_side = root.left
  right_side = root.right

  root.left = nil

  flatten(left_side)
  flatten(right_side)

  root.right = left_side

  current = root
  while current.right
    current = current.right
  end
  current.right = right_side
end

def flatten(root, storage={previousNode: nil})
  return nil if root.nil?

  flatten(root.right, storage)
  flatten(root.left, storage)

  root.right = storage.previousNode
  root.left = nil
  storage.previousNode = root
  return root
end
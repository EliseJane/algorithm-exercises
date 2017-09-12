class TreeNode
     attr_accessor :val, :left, :right
     def initialize(val)
         @val = val
         @left, @right = nil, nil
     end
 end

def is_subtree(s, t)
  return true if t.nil?
  return false if s.nil?

  if t.val == s.val
    return true if is_same_tree(s, t)
  end

  is_subtree(s.left, t) || is_subtree(s.right, t)
end

def is_same_tree(tree1, tree2)
  return true if tree1.nil? && tree2.nil?
  return false if tree1.nil? || tree2.nil?

  left_result = is_same_tree(tree1.left, tree2.left)
  right_result = is_same_tree(tree1.right, tree2.right)

  return tree1.val == tree2.val && left_result && right_result
end

tree1 = TreeNode.new(3)
tree1.left = TreeNode.new(4)
tree1.right = TreeNode.new(5)
tree1.left.left = TreeNode.new(1)
tree1.left.right = TreeNode.new(2)

tree2 = TreeNode.new(4)
tree2.left = TreeNode.new(1)
tree2.right = TreeNode.new(2)

p is_subtree(tree1, tree2)
# Definition for a binary tree node.
class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val)
        @val = val
        @left, @right = nil, nil
    end

    def to_preorder_array(root = self)
      return [] unless root

      array = [root.val]
      left = to_preorder_array(root.left)
      right = to_preorder_array(root.right)
      array.concat(left).concat(right)
    end
end


def balance_bst(root)
  nodes = deconstruct_tree(root)
  return construct_tree(nodes)
end

def deconstruct_tree(root)
  return nil if !root
  left_side = deconstruct_tree(root.left)
  right_side = deconstruct_tree(root.right)
  return [left_side, root.val, right_side].flatten.compact
end

def construct_tree(nodes)
  return nil if nodes.nil? || nodes.empty?
  midpoint = nodes.size / 2
  head = TreeNode.new(nodes[midpoint])
  if nodes.size > 1
    head.left = construct_tree(nodes[0...midpoint])
  end
  if nodes.size > 2
    head.right = construct_tree(nodes[midpoint+1..-1])
  end
  return head
end

# create array of values inorder, build a balanced binary search tree from scratch

# Problem 1

node1 = TreeNode.new(30)
node2 = TreeNode.new(20)
node3 = TreeNode.new(10)

node1.left = node2
node2.left = node3


puts balance_bst(node1).to_preorder_array == [20, 10, 30]


# Problem 2

node4 = TreeNode.new(4)
node5 = TreeNode.new(3)
node6 = TreeNode.new(2)
node7 = TreeNode.new(1)

node4.left = node5
node5.left = node6
node6.left = node7

puts balance_bst(node4).to_preorder_array == [2, 1, 3, 4] ||
balance_bst(node4).to_preorder_array == [3, 1, 2, 4] ||
balance_bst(node4).to_preorder_array == [3, 2, 1, 4]

# Problem 3

node_1 = TreeNode.new(1)
node_2 = TreeNode.new(2)
node_3 = TreeNode.new(3)
node_4 = TreeNode.new(4)
node_5 = TreeNode.new(5)
node_6 = TreeNode.new(6)
node_7 = TreeNode.new(7)

node_4.left = node_3
node_4.right = node_5
node_3.left = node_2
node_2.left = node_1
node_5.right = node_6
node_6.right = node_7

puts balance_bst(node_4).to_preorder_array == [4, 2, 1, 3, 6, 5, 7]
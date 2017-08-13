class TreeNode
    attr_accessor :value, :left_child, :right_child
    
    def initialize(value, left=nil, right=nil)
        @value = value
        @left_child = left
        @right_child = right
    end
end

node1 = TreeNode.new(3)
node2 = TreeNode.new(7)
node3 = TreeNode.new(5, node1, node2)
node4 = TreeNode.new(15)
root = TreeNode.new(10, node3, node4)

=begin
Write a function that counts the number of items in a binary tree.

def traverse_and_count(node, count=0)
    if node
        count += 1
        count = traverse_and_count(node.left_child, count)
        count = traverse_and_count(node.right_child, count)
    end
    return count
end

puts traverse_and_count(root)
=end

# Write a function that returns the sum of all the keys in a binary tree.

=begin
Write a function that returns the maximum value of all the keys in a binary 
tree. Assume all values are nonnegative; return nil if the tree is empty.
=end

=begin
The height of a tree is the maximum number of nodes on a path from the root to
a leaf node. Write a function that returns the height of a binary tree.
=end
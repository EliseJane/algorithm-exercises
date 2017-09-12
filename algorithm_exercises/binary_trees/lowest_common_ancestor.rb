=begin
def lowest_common_ancestor(root, p, q)
  ancestors_of_p = []
  ancestors_of_q = []

  current_node = root
  while current_node && current_node.val != p.val
    ancestors_of_p.push(current_node)
    if current_node.val < p.val
      current_node = current_node.right
    elsif current_node.val > p.val
      current_node = current_node.left
    end
  end

  current_node = root
  while current_node && current_node.val != q.val
    ancestors_of_q.push(current_node)
    if current_node.val < q.val
      current_node = current_node.right
    elsif current_node.val > q.val
      current_node = current_node.left
    end
  end

  p_ancestor = root
  q_ancestor = root
  while p_ancestor == q_ancestor
    common_ancestor = p_ancestor
    p_ancestor = ancestors_of_p.shift
    q_ancestor = ancestors_of_q.shift
  end

  return common_ancestor
end
=end

def lowest_common_ancestor(root, p, q)
  return root if root.nil? || root == p || root == q

  left_lca = lowest_common_ancestor(root.left, p, q)
  right_lca = lowest_common_ancestor(root.right, p, q)

  left_lca && right_lca ? root : left || right
end
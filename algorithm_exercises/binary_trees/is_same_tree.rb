def is_same_tree(p, q)
    return true if p.nil? && q.nil?
    return false if p.nil? || q.nil?
    
    left_equal = is_same_tree(p.left, q.left)
    right_equal = is_same_tree(p.right, q.right)
    
    return left_equal && right_equal && p.val == q.val
end
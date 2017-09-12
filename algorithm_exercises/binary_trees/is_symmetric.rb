def is_symmetric(root, tree2=root)
  return true if root.nil? && tree2.nil?
  return false if root.nil? || tree2.nil?

  left_result = is_symmetric(root.right, tree2.left)
  right_result = is_symmetric(root.left, tree2.right)
  return root.val == tree2.val && left_result && right_result
end

def is_symmetric(root)
  return true if root.nil?

  queue = [root, root]

  while !queue.empty?
    left_side = queue.shift
    right_side = queue.shift
    next if left_side.nil? && right_side.nil?
    return false if left_side.nil? || right_side.nil?
    return false if left_side.val != right_side.val
    queue.push(left_side.left)
    queue.push(right_side.right)
    queue.push(left_side.right)
    queue.push(right_side.left)
  end

  return true
end

def is_symmetric(root)
  return true if root.nil?

  level_order(root).each { |level| return false if !a_palindrome(level) }
    
    return true
end

def level_order(root)
  return [] if !root

  levels = []
  queue_to_visit = [root]

  until queue_to_visit.empty?
    this_level = []
    queue_to_visit.size.times do
      root = queue_to_visit.shift
      if root.nil?
          this_level.push(nil)
      else
        this_level.push(root.val)
        if root.left
          queue_to_visit.push(root.left)
        else
          queue_to_visit.push(nil)
        end
        if root.right
          queue_to_visit.push(root.right)
        else
          queue_to_visit.push(nil)
        end
      end
    end
    levels.push(this_level)
  end

  levels
end

def a_palindrome(array)
    return true if array.length <= 1
    
    left = 0
    right = array.length - 1
    
    while left <= right
        return false if array[left] != array[right]
        left += 1
        right -= 1
    end
    
    return true
end
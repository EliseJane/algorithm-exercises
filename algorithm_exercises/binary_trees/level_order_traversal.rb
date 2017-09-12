def level_order(root)
  return [] if !root

  levels = []
  queue_to_visit = [root]

  until queue_to_visit.empty?
    this_level = []
    queue_to_visit.size.times do
      root = queue_to_visit.shift
      this_level.push(root.val)
      queue_to_visit.push(root.left) if root.left
      queue_to_visit.push(root.right) if root.right
    end
    levels.push(this_level)
  end

  levels
end
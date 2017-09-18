=begin
def permute_unique(nums, start=0, perm=[], perms=[])
  if perm.size == nums.size
    perms << perm.clone
  else
    nums[start..-1].each_with_index do |num, i|
      perm << num
      permute_unique(nums, start+i, perm, perms)
      perm.pop
    end
  end
  perms
end
=end

def permute_unique(nums, perm=[], perms={}, visited_indices={})
  if perm.size == nums.size && !perms[perm]
    perms[perm.clone] = 1
  end

  nums.each_with_index do |num, idx|
    next if visited_indices[idx]
    visited_indices[idx] = 1
    perm << num

    permute_unique(nums, perm, perms, visited_indices)
    visited_indices.delete(idx)
    perm.pop
  end
  perms.keys
end

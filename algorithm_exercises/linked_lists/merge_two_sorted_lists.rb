def merge_two_lists(l1, l2)
  return l2 if l1.nil? # guard clause against l1 nil and base case where l2 is longer
  return l1 if l2.nil? # guard clause against l2 nil and base case where l1 is longer

  if l1.val <= l2.val # compare the two head values
    l1.next = merge_two_lists(l1.next, l2) # new tail = merging of the rest
    return l1 #l1 is the head
  else
    l2.next = merge_two_lists(l1, l2.next) # after recursion, just return new head
    return l2 #l2 is the head
  end
end

def combine_lists(head1, head2)
  return head1 if head2.nil?
  return head2 if head1.nil?

  if head1 >= head2
    node = head2
    list1, list2 = node.next, head1
  else
    node = head1
    list1, list2 = node.next, head2
  end

  sorted_list = combine_lists(list1, list2)

  node.next = sorted_list
  return node
end
def remove_elements(head, val)
  return nil if head.nil?
  
  dummy = ListNode.new(nil)
  dummy.next = head

  current = dummy

  while current.next do
    if current.next.val == val
      current.next = current.next.next
    else
      current = current.next
    end
  end
  
  dummy.next
end


# return nil if head.nil? (or other base cases)
tail = head.next
# recurse into the tail
# combine head and tail and determine the return value


def remove_elements_recursion(head, val)
  return nil if !head
  
  head.next = remove_elements_recursion(head.next, val)

  return head.val == val ? head.next : head
end
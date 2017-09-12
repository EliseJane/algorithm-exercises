def delete_duplicates(head)
  return nil if head.nil?

  current = head

  while current.next do
    if current.next.val == current.val
      current.next = current.next.next
    else
      current = current.next
    end
  end

  head
end

def delete_duplicates_recursion(head)
  return head if head.nil? || head.next.nil?
  
  head.next = delete_duplicates_recursion(head.next)

  return head.val == head.next.val ? head.next : head
end
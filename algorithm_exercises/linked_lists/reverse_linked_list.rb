def reverse_list(head)
  new_head = nil

  while head do
    temp = head.next
    head.next = new_head
    new_head = head
    head = temp
  end

  return new_head
end

def reverse_list_recursion(head, new_head=nil)
  return new_head if head.nil?

  temp = head.next
  head.next = new_head

  return reverse_list(temp, head)
end
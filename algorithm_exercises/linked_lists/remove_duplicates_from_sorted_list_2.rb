class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end
end

# dummy => 1 => 2 => 3 => 3 => 4 => 4 => 4 => 5

def delete_duplicates(head)
  return head if head.nil? || head.next.nil?

  comparator = nil
  dummy = ListNode.new(nil)
  dummy.next = head
  previous = dummy # in case all values are duplicates

  while head
    if head.next && head.val == head.next.val
      comparator = head.val
    end
    if head.val == comparator
      head = head.next
      previous.next = head
    else
      previous = head
      head = head.next
    end
  end

  return dummy.next
end

list2 = ListNode.new(1)
list2.next = ListNode.new(1)
p delete_duplicates(list2)

=begin
def delete_duplicates(head, comparator=nil)
  return nil if head.nil?

  if head.next.nil?
    if head.val == comparator
      return nil
    else
      return head
    end
  end

  if head.val == head.next.val
    comparator = head.val
    head = delete_duplicates(head.next.next, comparator)
    return head.next
  elsif head.val == comparator
    head = delete_duplicates(head.next, comparator)
  else
    return delete_duplicates(head.next, comparator)
  end

  head
end

1 => 2 => 3 => 3 => 4 => 4 => 4 => 5
head=node1, comparator=nil, return delete_duplicates(head.next, comparator)
  head=node2, comparator=nil, return delete_duplicates(head.next, comparator)
    head=firstnode3, comparator=3, head = delete_duplicates(head.next.next, comparator)
      head=firstnode4, comparator=4, head = delete_duplicates(head.next.next, comparator)
        head=thirdnode4, comparator=4, head = node5, return node5
          head=node5, comparator=4, return node5
=end
list1 = ListNode.new(1)
list1.next = ListNode.new(2)
list1.next.next = ListNode.new(3)
list1.next.next.next = ListNode.new(3)
list1.next.next.next.next = ListNode.new(4)
list1.next.next.next.next.next = ListNode.new(4)
list1.next.next.next.next.next.next = ListNode.new(4)
list1.next.next.next.next.next.next.next = ListNode.new(5)

remove = delete_duplicates(list1)
p remove.val
p remove.next.val
p remove.next.next.val
p remove.next.next.next
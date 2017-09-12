class ListNode
  attr_accessor :val, :next
  def initialize(val)
    @val = val
    @next = nil
  end
end

def reverse_between(head, m, n)
  node_num = 1
  dummy = ListNode.new(nil)

  middle = head
  while node_num < m
    dummy = middle
    middle = middle.next
    node_num += 1
  end
  dummy.next = nil

  tail = middle
  while node_num <= n
    dummy = tail
    tail = tail.next
    node_num += 1
  end
  dummy.next = nil

  return combine_lists(head, reverse_list(middle), tail)
end

def reverse_list(head, new_head=nil)
  return new_head if head.nil?

  temp = head.next
  head.next = new_head

  return reverse_list(temp, head)
end

def combine_lists(head, middle, tail)

  which_return = head

  if head == last_node(middle)
    which_return = middle
  else
    last_node(head).next = middle
  end

  last_node(middle).next = tail unless middle == tail
  
  which_return
end

def last_node(head)

  return head if head.nil? || head.next.nil?
  last_node(head.next)
end

list = ListNode.new(4)
list.next = ListNode.new(5)
list.next.next = ListNode.new(6)
list.next.next.next = ListNode.new(7)
list.next.next.next.next = ListNode.new(8)

solo = ListNode.new(5)

pair = ListNode.new(3)
pair.next = ListNode.new(5)

p reverse_between(list, 2, 4) # returns 4 => 7 => 6 => 5 => 8
p reverse_between(solo, 1, 1)
p reverse_between(pair, 1, 2)
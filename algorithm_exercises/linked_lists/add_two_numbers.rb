class ListNode
     attr_accessor :val, :next
     def initialize(val)
         @val = val
         @next = nil
     end
 end

def iterative_add_two_numbers(l1, l2)
    sum_list = ListNode.new(nil)
    dummy = ListNode.new(nil)
    dummy = sum_list
    carry = false

    while l1 && l2 do
        if l1.val + l2.val >= 10
            digit = carry ? ((l1.val + l2.val) % 10) + 1 : (l1.val + l2.val) % 10
            carry = true
        else
            digit = carry ? l1.val + l2.val + 1 : l1.val + l2.val
            carry = false
        end
        sum_list.next = ListNode.new(digit)
        sum_list = sum_list.next
        l1 = l1.next
        l2 = l2.next
    end
    if l1
        while carry
            if l1.val + 1 == 10
                sum_list.next = ListNode.new(0)
                sum_list = sum_list.next
            else
                sum_list.next = ListNode.new(l1.val + 1)
                sum_list = sum_list.next
                carry = false
            end
            l1 = l1.next
        end
        sum_list.next = l1 if l1
    elsif l2
        while carry
            if !l2
                sum_list.next = ListNode.new(1)
                carry = false
            elsif l2.val + 1 == 10
                sum_list.next = ListNode.new(0)
                sum_list = sum_list.next
                l2 = l2.next
            else
                sum_list.next = ListNode.new(l2.val + 1)
                sum_list = sum_list.next
                carry = false
                l2 = l2.next
            end
            
        end
        sum_list.next = l2 if l2
    else
        if carry
            sum_list.next = ListNode.new(1)
        end
    end

    return dummy.next
end

def add_two_numbers(l1, l2, carry=0)
    return nil if !l1 && !l2 && carry == 0

    sum = carry
    sum += l1.val if l1
    sum += l2.val if l2

    if sum >= 10
        carry = 1
        sum -= 10
    else
        carry = 0
    end
    sum_list = ListNode.new(sum)

    if l1 && l2
        sum_list.next = add_two_numbers(l1.next, l2.next, carry)
    elsif l1
        sum_list.next = add_two_numbers(l1.next, l2, carry)
    elsif l2
        sum_list.next = add_two_numbers(l1, l2.next, carry)
    elsif carry == 1
        sum_list.next = ListNode.new(carry)
    end

    return sum_list
end

list1 = ListNode.new(5)
list2 = ListNode.new(5)
p add_two_numbers(list1, list2)
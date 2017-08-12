# Rewrite the index_of method using recursion instead of a while loop.

class Node
    attr_accessor :data, :next_node
    
    def initialize(data)
        @data = data
    end
end

class LinkedList
    attr_accessor :first_node
    
    def initialize(first_node=nil)
        @first_node = first_node
    end
    
    def index_of(value)
        current_node = @first_node
        current_index = 0
        while current_node do
            if current_node.data == value
                return current_index
            end
            current_node = current_node.next_node
            current_index += 1
        end
        return nil
    end
    
    def read(index)
        current_node = @first_node
        current_index = 0
        while current_index < index do
            current_node = current_node.next_node
            current_index += 1
            return nil unless current_node
        end
        return current_node.data
    end
    
    def find_node(index)
        current_node = @first_node
        current_index = 0
        while current_index < index do
            current_node = current_node.next_node
            current_index += 1
            return nil unless current_node
        end
        return current_node
    end
    
    def recursive_index_of(value, node=@first_node, i=0)
        if node
            if node.data == value
                return i
            else
                return recursive_index_of(value, node.next_node, i + 1)
            end
        end
        return nil
    end
    
    def find_last_node
        node = @first_node
        
        loop do
            return node if node.next_node.nil?
            node = node.next_node
        end
    end
end

node_1 = Node.new("Once")
node_2 = Node.new("upon")
node_3 = Node.new("a")
node_4 = Node.new("time")

node_1.next_node = node_2
node_2.next_node = node_3
node_3.next_node = node_4

list = LinkedList.new(node_1)

puts list.recursive_index_of("Once") == 0
puts list.recursive_index_of("upon") == 1
puts list.recursive_index_of("a") == 2
puts list.recursive_index_of("time") == 3
puts list.recursive_index_of("end") == nil

# Write a method that attaches two linked lists together.
node_a = Node.new("In")
node_b = Node.new("the")
node_c = Node.new("end")

node_a.next_node = node_b
node_b.next_node = node_c

list_b = LinkedList.new(node_a)

def attach_linked_lists(first_list, second_list)
    first_list.find_last_node.next_node = second_list.first_node
    second_list.first_node = first_list.first_node
end

attach_linked_lists(list, list_b)

puts list.first_node.data
puts list.find_last_node.data
puts list.read(3)
puts list_b.first_node.data
puts list_b.find_last_node.data
    
# Write a method that reverses a linked list.

def reverse_linked_list(list)
    last_node = list.find_last_node
    current_index = list.index_of(last_node.data)
    loop do
        if current_index == 0
            list.find_node(current_index).next_node = nil
            break
        end
        list.find_node(current_index).next_node = list.find_node(current_index - 1)
        current_index -= 1
    end
    list.first_node = last_node
end

reverse_linked_list(list)
puts list.first_node.data
puts list.find_last_node.data
puts list.first_node.next_node.data

=begin
Write a method that takes two linked lists and puts them together with a 
riffle shuffle (ie zip).
=end

n1 = Node.new(1)
n2 = Node.new(2)
n3 = Node.new(3)
n4 = Node.new(4)
nA = Node.new("A")
nB = Node.new("B")
nC = Node.new("C")
nD = Node.new("D")

n1.next_node = n2
n2.next_node = n3
n3.next_node = n4
nA.next_node = nB
nB.next_node = nC
nC.next_node = nD

number_list = LinkedList.new(n1)
letter_list = LinkedList.new(nA)

def zip_linked_lists(first, second)
    index = second.index_of(second.find_last_node.data)
    while index > 0 do
        first.find_node(index).next_node = second.find_node(index)
        second.find_node(index - 1).next_node = first.find_node(index)
        index -= 1
    end
    first.first_node.next_node = second.first_node
    second.first_node = first.first_node
end

zip_linked_lists(number_list, letter_list)
puts number_list.read(0)
puts number_list.read(1)
puts number_list.read(2)
puts number_list.read(3)
puts number_list.read(4)
puts number_list.read(5)
puts number_list.read(6)
puts number_list.read(7)
puts number_list.read(8)
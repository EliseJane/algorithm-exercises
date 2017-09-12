class MyQueue
  def initialize()
    @stack = []
    @temp = []
  end

  def push(x)
    @stack.push(x)
  end

  def pop()
    reverse_stack!(@stack, @temp)
    popped = @temp.pop
    reverse_stack!(@temp, @stack)
    return popped
  end

  def peek()
    reverse_stack!(@stack, @temp)
    peeked = @temp[-1]
    reverse_stack!(@temp, @stack)
    return peeked
  end

  def empty()
    if @stack.empty?
      return true
    else
      return false
    end
  end
end

def reverse_stack!(stack, reversed)
  while !stack.empty?
    reversed.push(stack.pop)
  end
end
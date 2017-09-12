class MyStack
  def initialize()
    @queue = []
  end

  def push(x)
    @queue.push(x)
  end

  def pop()
    temp = []
    while @queue.size > 1
      temp.push(@queue.shift)
    end
    popped = @queue[0]
    @queue = temp
    return popped
  end

  def top()
    temp = []
    while @queue.size > 1
      temp.push(@queue.shift)
    end
    peeked = @queue[0]
    temp.push(@queue.shift)
    @queue = temp
    return peeked
  end

  def empty()
    if @queue.size == 0
      return true
    else
      return false
    end
  end
end

# Your MyStack object will be instantiated and called as such:
# obj = MyStack.new()
# obj.push(x)
# param_2 = obj.pop()
# param_3 = obj.top()
# param_4 = obj.empty()
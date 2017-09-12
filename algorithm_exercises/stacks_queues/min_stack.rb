class MinStack
  def initialize()
    @stack = []
    @mins = []
  end

  def push(x)
    @stack.push(x)
    if @mins.empty? || x < @mins[-1]
      @mins.push(x)
    else
      @mins.push(@mins[-1])
    end
  end

  def pop()
    @mins.pop
    @stack.pop
  end

  def top()
    @stack[-1]
  end

  def get_min()
    @mins[-1]
  end
end
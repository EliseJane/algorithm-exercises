def next_greater_element(find_nums, nums)
  answers = {}
  decreasing = []
  nums.each do |num|
    if decreasing.empty? || num < decreasing[-1]
      decreasing.push(num)
    else
      while !decreasing.empty? && decreasing[-1] < num
        answers[decreasing.pop] = num
      end
      decreasing.push(num)
    end
  end

  find_nums.map { |key| answers.has_key?(key) ? answers[key] : -1 }
end

p next_greater_element([1, 2], [2, 5, 1, 3, 4])
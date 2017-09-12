def max_profit(prices)
  min_valley = 999999
  max_profit = 0

  (0...prices.size).each do |i|
      if prices[i] < min_valley
          min_valley = prices[i]
      elsif (prices[i] - min_valley) > max_profit
          max_profit = prices[i] - min_valley
      end
  end
  return max_profit
end
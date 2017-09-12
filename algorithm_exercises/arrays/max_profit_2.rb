def max_profit(prices)
  profit = 0
  (1...prices.size).each do |i|
    if prices[i] > prices[i-1]
      profit += prices[i] - prices[i-1]
    end
  end
  return profit
end

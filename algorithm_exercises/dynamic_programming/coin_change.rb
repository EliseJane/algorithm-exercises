the smaller problem: less amount
the smallest amount: 1
for each coin, if it is smaller than amount 
  skip it if memo[amount-coin] == -1
  possible min = memo[amount-coin]+1
set memo[amount] as min of possible minimums of this iteration or -1 if no mins found



def coin_change(coins, amount)
  memo = [0]
  (1..amount).each do |total|
    min = -1
    coins.each do |coin|
      next if coin > total || memo[total-coin] == -1
      new_min = memo[total-coin] + 1
      min = min == -1 ? new_min : [new_min, min].min
    end
    memo[total] = min
  end
  memo[amount]
end

coins = [2, 7]

memo[0] = -1
memo[1] = -1
memo[2] = 1   <=   coins[0]
memo[3] = -1
memo[4] = 2
memo[5] = -1
memo[6] = 3
memo[7] = 1   <=   coins[1]
memo[8] = -1
memo[9] = 2
memo[10] = -1  
memo[11] = 3
memo[12] = -1
memo[13] = 4
memo[14] = 2
memo[15] = 5
memo[16] = -1
memo[17] = 6

in inner loop, could iterate through sub amounts instead of coins to see if there is an amount that 
can be built from available coins. more classically dp instead of backtracking
def climb_stairs(n, cache={})
    return 1 if n == 0 || n == 1
    result = (cache[n-2] || climb_stairs(n-2, cache)) + (cache[n-1] || climb_stairs(n-1, cache))
    cache[n] = result
    result
end

def climb_stairs_loop(n)
  cache = [1, 1]
  (2..n).each do |level|
    cache[level] = cache[level-1] + cache[level-2]
  end
  return cache[-1]
end

# f(i) = f(i-1) + f(i-2)
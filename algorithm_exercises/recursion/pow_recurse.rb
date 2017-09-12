def my_pow(x, n, total=x)
  return 1 if n == 0 || x == 1
  return x if n == 1

  if n < 0
    n = -n
    x = 1/(x.to_f)
    total = x
  end

  if n.even?
      return my_pow(x * x, n / 2)
  else
      return x * my_pow(x * x, n / 2)
  end
end

p my_pow(2, 4)
p my_pow(3, 1)
p my_pow(3, 0)
p my_pow(10, -2)
p my_pow(1.000001, 123456)
i = 0

loop do
  i += 2
  if i == 4
    next
  end
  puts i
  if i == 10
    break
  end
end

x = 0

while x <= 10
  if x.odd?
    puts x
  end
  x += 1
end
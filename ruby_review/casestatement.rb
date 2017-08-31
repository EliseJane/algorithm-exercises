a = 5

answer = case a
  when 5
    "a is 5"
  when 6
    "a is 6"
  else
    "a is neither 5, nor 6"
end

puts answer

puts "Enter a number between 0 and 100"
num = gets.chomp.to_i

if num < 0
  puts "too small!"
elsif num > 100
  puts "too big!"
else
  case num
    when 0...50
      puts "You're number was between 0 and 50"
    when 50...100
      puts "You're number was between 50 and 100"
    when 100
      puts "100 exactly...really?"
  end
end

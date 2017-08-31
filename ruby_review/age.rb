puts "How old are you?"

age = gets.chomp.to_i

puts "In 10 years you will be: #{age + 10}"

puts "What is your first name?"
first = gets.chomp

puts "What is your last name?"
last = gets.chomp

full_name = first + ' ' + last

10.times do
  puts full_name
end
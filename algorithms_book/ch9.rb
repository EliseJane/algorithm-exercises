=begin
You can technically use recursion to replace any loop. Write a function that
prints to the terminal "HELLO" 10 times - but don’t use a loop! Use a
recursive function instead.
=end
def many_hello(how_many)
  if how_many > 0
    puts "HELLO"
    many_hello(how_many-1)
  end
end

many_hello(10)

# Write a recursive function that prints out all even numbers from 2 until 100.
def even_numbers(lower, upper)
    if lower <= upper
        puts lower
        even_numbers(lower + 2, upper)
    end
end

even_numbers(2, 100)

=begin
Fibonacci numbers are numbers that follow this pattern: 1, 1, 2, 3, 5, 8, 13, 
21, 34, ... that is, each number is the sum of the two immediate numbers that
precede it. Write a recursive function that prints out the list of fibonacci
numbers up to 987.
=end
def fibonaccis(a=0, b=1, max)
    puts a
    if a < max
        fibonaccis(b, a+b, max)
    end
end

fibonaccis(987)

# Write a recursive function that accepts an array of numbers and returns the sum.
def recursive_sum(nums, remaining=nums.size-1)
    if (remaining == 0)
        nums[0]
    else
        nums[remaining] + recursive_sum(nums, remaining-1)
    end
end

puts recursive_sum([1, 3, 4, 5, 7])

# Write a recursive function that reverses a string.
def recursive_reverse(str)
    if str.length <= 1
        str
    else
        recursive_reverse(str[1, str.length-1]) + str[0]
    end
end

puts recursive_reverse("I am the best user")

=begin
Write a recursive function that accepts two numbers (a numerator and 
denominator), and returns the remainder if you divide the numerator by the 
denominator. The catch: Do not use the modulo operator!
=end
def remainder(num, den)
    if num < den
        num
    else
        remainder(num-den, den)
    end
end

puts remainder(23, 5)

# Write a recursive binary search function.
def binary(stuff, query)
    if stuff.size == 1
        if stuff[0] == query
            puts "We found #{query} in that group of stuff!"
        else
            puts "We couldn't find #{query} anywhere..."
        end
    else
        midpoint = stuff.size / 2
        if stuff[midpoint] > query
            binary(stuff[0, midpoint-1], query)
        elsif stuff[midpoint] < query
            binary(stuff[midpoint+1, stuff.size-1], query)
        else
            puts "We found #{query} in that group of stuff!"
        end
    end
end

binary([1, 2, 3, 4, 5, 6, 7, 8, 9], 8)
binary([2, 4, 6], 5)

=begin
Write a recursive function that accepts two numbers and calculates one by the 
power of the other. For example, if the numbers were 2 and 5, it would 
calculate 25. Do not use any built-in power operations provided by your 
computer language.
=end
def powered(base, power)
    if power == 1
        base
    else
        base * powered(base, power - 1)
    end
end

puts powered(5, 2)
puts powered(3, 6)

=begin
Write a recursive function that returns all anagrams of a string (even if the 
anagrams aren’t words themselves). For example, the anagrams of cat are cat, 
cta, act, atc, tac, tca.
=end
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

base case: length of argument passed to all_anagrams is 1
   return the fixed portion plus the argument
in all_anagrams
    loop through letters of argument, putting each in first index, calling
    all_anagrams with remaining letters and adding them together to create
    partial anagrams. Loop through partial anagrams and complete them.
=end

def without(word, index)                # just a convenience method
    new_word = ""
    word.split("").each_with_index do |letter, i|
        if i != index
            new_word += letter
        end
    end
    return new_word
end

def all_anagrams(fixed="", word)
    if word.length == 1                 # base case
        return [fixed + word]
    else
        anagrams = []
        word.split("").each_with_index do |letter, i|
            new_fixed = letter
            partial_anagrams = all_anagrams(new_fixed, without(word, i))
            partial_anagrams.each do |partial|
                anagrams.push(fixed + partial)
            end
        end
        return anagrams
    end
end

puts all_anagrams("star").join(", ")
puts all_anagrams("star").length

=begin

Step-by-Step of what is happening....

fixed = "" word = "cat"
anagrams = []
loop through ["c", "a", "t"]
    new_fixed = "c"
    partial_anagrams =
        fixed = "c" word = "at"
        anagrams = []
        loop through ["a", "t"]
            new_fixed = "a"
            partial_anagrams =
                fixed = "a" word = "t"
                return ["at"]
            loop through partial_anagrams
                anagrams = ["cat"]
            new_fixed = "t"
            partial_anagrams =
                fixed = "t" word = "a"
                return ["ta"]
            loop through partial_anagrams
                anagrams = ["cat", "cta"]
        return ["cat", "cta]
    loop through partial_anagrams
        anagrams = ["cat", "cta"]   (just prepends with original blank string)
    new_fixed = "a"
    partial_anagrams =
        fixed = "a" word = "ct"
        anagrams = []
        loop through ["c", "t"]
            new_fixed = "c"
            partial_anagrams =
                fixed = "c" word = "t"
                return ["ct"]
            loop through partial_anagrams
                anagrams = ["act"]
            new_fixed = "t"
            partial_anagrams =
                fixed = "t" word = "c"
                return ["tc"]
            loop through partial_anagrams
                anagrams = ["act", "atc"]
        return ["act", "atc"]
    loop through partial_anagrams
        anagrams = ["cat", "cta", "act", "atc"]   (just prepends with original blank string)
    new_fixed = "t"
    partial_anagrams =
        fixed = "t" word = "ca"
        anagrams = []
        loop through ["c", "a"]
            new_fixed = "c"
            partial_anagrams =
                fixed = "c" word = "a"
                return ["ca"]
            loop through partial_anagrams
                anagrams = ["tca"]
            new_fixed = "a"
            partial_anagrams =
                fixed = "a" word = "c"
                return ["ac"]
            loop through partial_anagrams
                anagrams = ["tca", "tac"]
        return ["tca", "tac"]
    loop through partial_anagrams
        anagrams = ["cat", "cta", "act", "atc", "tca", "tac"]   (just prepends with original blank string)
return ["cat", "cta", "act", "atc", "tca", "tac"]

=end
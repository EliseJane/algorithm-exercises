=begin
write a program to tell if a word is a palindrome with recursion
Think/Research:
What's the space complexity for recursive algorithms?
  O(n) stack space, but no memory space (only when tail?)
What are tail recursions?
  return the return value of a recursive call without doing anymore work on it.
What is tail call optimization?
  compiler recognizes tail recursion and converts to a loop to save space
=end

def palindrome_recursion(word)
  return true if word.length <= 1

  if word[0] == word[-1]
    palindrome_recursion(word[1..-2])
  else
    return false
  end
end

p palindrome_recursion("racecar")
p palindrome_recursion("elise")
p palindrome_recursion("")
p palindrome_recursion("a")

=begin
  1. Write a prototype for the recursive function.
  2. Write a comment that describes what the function does.
  3. Determine the base case (there may be more than one), and its solution(s).
  4. Determine what smaller problem (or problems) to solve. If it makes it easier for you to follow, 
  save the solutions to the smaller problems to local variables (e.g., small in the sum() example). 
  ASSUME the recursive call works (similar to inductive hypothesis in CMSC 250), i.e., 
  that it will correctly compute the answer.
  5. Use the solutions of the smaller problem to solve the larger problem.
  (If this is done INCORRECTLY, the solutions of the smaller problems will also be computed 
  incorrectly, thus, the assumption in the previous step will fail).
=end
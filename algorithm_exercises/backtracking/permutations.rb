Given a collection of distinct numbers, return all possible permutations
For example,
[1, 2, 3] have the following permutations:
[ [1, 2, 3],
  [1, 3, 2],
  [2, 1, 3],
  [2, 3, 1],
  [3, 1, 2],
  [3, 2, 1]
]

solution: what's the solution(s) we're searching for? all/one?
 - a solution is an array of n distinct numbers
how to build a solution one step at a time?
 - pick one number at a time
branching logic
 - n branches
dead end conditions
 - the number is already in the current candidate solution
backtrack state maintenance (before the return of recursion)
 - pop the last number from the candidate solution


def permute(nums)
  results = []
  permute_helper(nums, results)
  results
end

def permute_helper(nums, solution, results)
  # process root
  # do we have a complete solution yet?

  for(node in children) {
    permute_helper(nums, solution, results)
  }
end

def permute_helper(nums, solution, results)
  # check if solution is complete, if so, backtrack right away
  if solution.size == nums.size
    results << solution.clone
  else
    nums.each do |num|
      # root processing
      next if solution.include?(num)
      solution << num

      # recursive preorder traversal
      permute_helper(nums, solution, result)

      #state maintenance
      solution.pop
    end
  end
end

def my_permute(nums, result=[], results=[])
    if result.size == nums.size
        results << result.clone
    else
        nums.each do |vertex|
            unless result.index(vertex)
                result << vertex
                permute(nums, result, results)
                result.pop
            end
        end
    end
    results
end

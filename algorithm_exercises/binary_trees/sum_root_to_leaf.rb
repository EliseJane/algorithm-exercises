def sum_numbers(root)
    return 0 if !root
    
    number_strings = []
    stack_of_arrays = [[root, ""]]
    
    until stack_of_arrays.empty?
        root, string_so_far = stack_of_arrays.pop
        string_so_far += root.val.to_s
        if root.right || root.left
          stack_of_arrays.push([root.right, string_so_far]) if root.right
          stack_of_arrays.push([root.left, string_so_far]) if root.left
        else
          number_strings.push(string_so_far)
        end
    end
        
    number_strings.map(&:to_i).reduce(:+)
end
=begin
In your favorite programming language, use a stack to implement an
algorithm that reverses a string.
=end

def reverse_string(str)
    stack = []
    reversed = ""
    
    str.each_char do |letter|
        stack.push(letter)
    end
    
    while stack.size > 0 do
        reversed += stack.pop
    end
    
    puts reversed
end

reverse_string("algorithm")
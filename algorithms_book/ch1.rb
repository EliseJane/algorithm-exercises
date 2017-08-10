=begin
Use your favorite object-oriented programming language to create a class that
represents an array-based set. It should include functions/methods that serve
as the key operations: Read, search, insert, and delete. Ensure that the insert
operation will not insert duplicate values.
=end

class Set
    def initialize(a, b, c, d)
        @stuff = [a, b, c, d]
    end
    
    def read(index)
        @stuff[index]
    end
    
    def search(query)
        index = nil
        @stuff.each_with_index do |thing, i|
            if thing == query
                index = i
            end
        end
        index
    end
    
    def insert(new_thing, index)
        if self.search(new_thing)
            puts "Cannot insert #{new_thing} because it already exists!"
        else
            @stuff.insert(index, new_thing)
        end
    end
    
    def delete(thing)
        @stuff.delete(thing)
    end
    
    def my_contents
        puts "My contents are: " + @stuff.join(", ") + "."
    end
end

set = Set.new(12, 24, 36, 48)

set.my_contents
puts set.read(2)
puts set.read(5)
puts set.search(24)
puts set.search(30)
set.insert(24, 3)
set.insert(30, 3)
set.my_contents
set.delete(24)
set.my_contents
        
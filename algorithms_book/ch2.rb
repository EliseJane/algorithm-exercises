=begin
Use your favorite object-oriented programming language to create a class that
represents an ordered array. It should include functions/methods that serve as
the key operations: Read, search, insert, and delete. Ensure that the insert
operation inserts the value in the correct place within the ordered array.
=end

class Ordered_Array
    def initialize(a, b, c, d, e)
        @stuff = [a, b, c, d, e]
    end
    
    def read(index)
        @stuff[index]
    end
    
    def search(query)
        lower = 0
        upper = @stuff.length - 1
        while upper >= lower do
          midpoint = (upper + lower) / 2
        
          if @stuff[midpoint] == query
            return midpoint
          elsif @stuff[midpoint] > query
            upper = midpoint - 1
          elsif @stuff[midpoint] < query
            lower = midpoint + 1
          end
        end
        
        return nil
    end
    
    def insert(new_item)
        index = 0
        
        while @stuff[index] < new_item do
          index += 1
        end
        @stuff.insert(index, new_item)
        self.reveal
    end
    
    def delete(item)
        @stuff.delete(item)
        self.reveal
    end
    
    def reveal
        puts "My content are: " + @stuff.join(", ") + "."
    end
end

ordered_array = Ordered_Array.new(1, 3, 6, 9, 12)

ordered_array.reveal
puts ordered_array.read(3)
puts ordered_array.read(10)
puts ordered_array.search(12)
puts ordered_array.search(13)
ordered_array.insert(8)
ordered_array.insert(9)
ordered_array.delete(12)
ordered_array.delete(9)
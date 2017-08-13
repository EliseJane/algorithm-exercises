class Person
    attr_accessor :name, :connections, :visited
    
    def initialize(name)
        @name = name
        @connections = []
        @visited = false
    end
    
    def add_connection(connection)
        @connections << connection
    end
end

alice = Person.new("Alice")
bob = Person.new("Bob")
candy = Person.new("Candy")
derek = Person.new("Derek")
fred = Person.new("Fred")
helen = Person.new("Helen")
gina = Person.new("Gina")
irina = Person.new("Irina")

alice.add_connection(bob)
alice.add_connection(candy)
alice.add_connection(derek)

bob.add_connection(fred)

fred.add_connection(helen)

candy.add_connection(gina)

derek.add_connection(gina)
derek.add_connection(irina)

# Write a function that conducts depth-first search on a graph.

def breadth_first_display(vertex)
    to_reset = [vertex]
    queue = [vertex]
    vertex.visited = true
    
    while queue.any?
        vertex = queue.shift
        puts vertex.name
        
        vertex.connections.each do |connection|
            if !connection.visited
                to_reset << connection
                queue << connection
                connection.visited = true
            end
        end
    end
    
    to_reset.each do |node|
        node.visited = false
    end
end

def depth_first_display(vertex)
    if !vertex.visited
        puts vertex.name
        vertex.visited = true
    end
    
    vertex.connections.each do |connection|
        depth_first_display(connection)
    end
end

depth_first_display(alice)

# What is the efficiency of depth-first search in terms of Big O Notation?
# O(V)

# Write a method that uses breadth-first search to search for a node within a graph.

def breadth_first_search(vertex, query)
    queue = [vertex]
    
    while queue.any?
        new_vertex = queue.shift
        if new_vertex.name == query
            return new_vertex
        else
            new_vertex.connections.each do |connection|
                queue << connection
            end
        end
    end
end

puts breadth_first_search(alice, "Derek").name

# Write a method that deletes a node from a graph.

def delete_from_graph(node)
end
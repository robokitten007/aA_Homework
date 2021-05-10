require 'set'
class GraphNode
    attr_accessor :val, :neighbors
    def initialize(value)
        @value = value
        @neighbors = []
    end 

    def bfs(staring_node, target_value, visited = Set.new())
        return nil if visted.include?(node.value)
        return node.value if node.vlaue == target_value
        visited.add(node.value)

        node.neighbors.each do |neighbor|
            bfs(neighbor,target_value, visited)
        end 
    end  
end 
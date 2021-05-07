class Stack
    def initialize
        @arr = Array.new
    end 

    def push(el)
        @arr.push(el)
    end 

    def pop
        @arr.pop
    end 

    def peek
        @arr[0]
    end 
end 

class Queue
    def initialize
        @arr = Array.new
    end 

    def enqueue(el)
        @arr.push(el)
    end 
    
    def dequeue
        @arr.shift
    end  

    def peek
        @arr[0]
    end 
end 
    
class Map
    def initialize
        @arr = Array.new
    end 

    def set(key, value)
        @arr.each do |ele|
            if ele[0] == key
                ele[1] = value
                return true 
            end 
        end 
         @arr << [key, value]
    end 

    def get(key)
        @arr.each do |ele|
            if ele[0] == key
                return ele[1]
            end 
        end 
        return nil
    end 

    def delete(key)
        @arr.each_with_index do |ele, idx|
            if ele[0] == key
                @arr.delete_at(idx)
            end 
        end 
    end 

    def show
        @arr
    end 
end 


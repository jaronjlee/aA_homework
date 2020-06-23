class Stack
    def initialize
      # create ivar to store stack here!
      @result = []
    end

    def push(el)
      # adds an element to the stack
      @result.push(el)
      el
    end

    def pop
      # removes one element from the stack
      @result.pop
    end

    def peek
      # returns, but doesn't remove, the top element in the stack
      @result.last
    end
end

class Map

    def initalize
        @result = []
    end
    
    def set(key, value)
        pair_index = @result.index { |pair| pair[0] = key }
        if pair_index
            @result[pair_index][1] = value
        else
            @result.push([key, value])
        end
        value
    end

    def get(key)
        @result.each do |subarray|
            return subarray.last if subarray.first == key
        end
    end

    def delete(key)
        @result.each_with_index do |subarray, i|
            @result.delete_at(i) if subarray.first == key
        end
    end

    def show
        p @result
    end
    
end

class Queue

    def initialize
        @queue = []
    end
    
    def enqueue(el)
        @queue.push(el)
    end

    def dequeue
        @queue.shift
    end

    def peek
        @queue.first
    end
    
end

  queue = Queue.new
  queue.enqueue('hello')
  queue.enqueue('you')
  queue.enqueue('world')
  p queue
  queue.dequeue
  p queue
  p queue.peek
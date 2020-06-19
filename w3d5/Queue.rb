class Queue

    def initialize
        @queue = []
    end
    
    def enqueue(el)
        @queue.unshift(el)
    end

    def dequeue
        @queue.pop
    end

    def peek
        @queue[-1]
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
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
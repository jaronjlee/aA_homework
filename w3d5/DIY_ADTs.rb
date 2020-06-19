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

  stack = Stack.new
  stack.push('hello')
  stack.push('you')
  stack.push('world')
  p stack
  stack.pop
  p stack
  p stack.peek

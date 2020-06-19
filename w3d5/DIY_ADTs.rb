  class Stack
    def initialize
      # create ivar to store stack here!
      @ivar = []
    end

    def push(el)
      # adds an element to the stack
      @ivar << el
    end

    def pop
      # removes one element from the stack
      @ivar.delete_at(-1)
    end

    def peek
      # returns, but doesn't remove, the top element in the stack
      @ivar[-1]
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

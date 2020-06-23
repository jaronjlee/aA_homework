# EXERCISE 1
class Stack
  def initialize
    @store = []
  end

  #default method every class has, default behavior is to show object id and any instance variables inside. 
  # we wanted to override that method to return a more specific output
  def inspect 
    "#<Stack:#{self.object_id}, #{@store.last}>"
  end

  def push(el)
    store.push(el)
    el
  end

  def pop
    store.pop
  end

  def peek
    store.last
  end

  def empty?
    store.empty?
  end

  private

  attr_reader :store

end



# EXERCISE 2
class MyQueue
  def initialize
    @store = []
  end

  def enqueue(el)
    store.unshift(el)
    el #keeps people from mutating our data structure
  end

  def dequeue
    store.pop
  end

  def peek
    store.first
  end

  def show
    store.dup
  end

  def empty?
    store.empty?
  end

  private

  attr_reader :store
  
end



class Node

  attr_reader :value, :children

  def initialize(value, children = [])
    @value = value
    @children = children
  end

  def bfs(target)
    queue = MyQueue.new     #can do dfs if we change this to stack
    queue.enqueue(self)

    until queue.empty?
      curr_node = queue.dequeue
      return curr_node if curr_node.value == target
      curr_node.children.each do |child|
        queue.enqueue(child)
      end
    end
    nil
  end

end

#      a
#   [b, c]
# [d,e] [f,g]

# d = Node.new('d')
# e = Node.new('e')
# f = Node.new('f')
# g = Node.new('g')
# b = Node.new('b', [d, e])
# c = Node.new('c', [f, g])
# a = Node.new('a', [b, c])








# EXERCISE 3
class Map
  def initialize
    @store = []
  end

  def set(key, value)
    pair_index = store.index { |pair| pair[0] == key }
    if pair_index
      store[pair_index][1] = value
    else
      store.push([key, value])
    end
    value
  end

  def get(key)
    store.each { |pair| return pair[1] if pair[0] == key }
    nil
  end

  def delete(key)
    value = get(key)
    store.reject! { |pair| pair[0] == key }
    value
  end

  def show
    deep_dup(store)
  end

  private

  attr_reader :store
  
  def deep_dup(arr)
    arr.map { |el| el.is_a?(Array) ? deep_dup(el) : el }
  end  
end




# map_1 = Map.new
# map_1.set("a", 1)
# map_1.set("b", 2)
# map_1.set("c", 3)
# map_1.set("d", 4)
# map_1.set("e", 5)
# map_1.show

# p map_1.get("a")
# p map_1.get("b")
# p map_1.get("e")

# map_1.delete("b")
# map_1.delete("e")
# map_1.show

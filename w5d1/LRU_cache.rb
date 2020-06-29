class LRUCache
    def initialize(n)
        @cache = []
        @max = n
    end

    def count
        @cache.length
        # returns number of elements currently in cache
    end

    def add(el)
        if @cache.include?(el)
            @cache.delete(el)
            @cache.push(el)
            return
        end

        if self.count < @max
            @cache.push(el) 
        elsif self.count == @max
            @cache.shift
            @cache.push(el)
        end
        # adds element to cache according to LRU principle
    end

    def show
        @cache
        # shows the items in the cache, with the LRU item first
    end

    private
    # helper methods go here!

end



johnny_cache = LRUCache.new(4)

p johnny_cache.add("I walk the line")
p johnny_cache.add(5)

p johnny_cache.count # => returns 2

p johnny_cache.add([1,2,3])
p johnny_cache.add(5)
p johnny_cache.add(-5)
p johnny_cache.add({a: 1, b: 2, c: 3})
p johnny_cache.add([1,2,3,4])
p johnny_cache.add("I walk the line")
p johnny_cache.add(:ring_of_fire)
p johnny_cache.add("I walk the line")
p johnny_cache.add({a: 1, b: 2, c: 3})


johnny_cache.show # => prints [[1, 2, 3, 4], :ring_of_fire, "I walk the line", {:a=>1, :b=>2, :c=>3}]
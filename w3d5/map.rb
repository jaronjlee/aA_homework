class Map

    def initalize
        @result = []
    end
    

    def set(key, value)
        pair_index = result.index { |pair| pair[0] = key }
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

map = Map.new
map.set("a", 1)
map.set("b", 2)
map.set("c", 3)
map.set("d", 4)
map.set("e", 5)
map.show

p map.get("a")
p map.get("b")
p map.get("e")

map.delete("b")
map.delete("e")
map.show

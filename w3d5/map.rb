class Map

    def initalize
        @map = Array.new() { Array.new(2) }
    end
    

    def set(key, value)
        return @map << [key, value] if @map.length < 1
        @map.each do |subarray|
            if subarray.first == key
                subarray.pop
                subarray.push(value)
                return
            end
        end
        @map << [key, value]
    end

    def get(key)
        @map.each do |subarray|
            return subarray.last if subarray.first == key
        end
    end

    def delete(key)
        @map.each_with_index do |subarray, i|
            @map.delete_at(i) if subarray.first == key
        end
    end

    def show
        p @map
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

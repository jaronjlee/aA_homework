#Octopus Problems
# x = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
# => "fiiiissshhhhhh"

def sluggish_octopus(arr)
    longest = nil
    (0...arr.length-1).each do |i|
        (i+1..arr.length-1).each do |j|
            longest = arr[i]
            longest = arr[j] if arr[j].length > arr[i].length
        end
    end
    longest
end

# x = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
# p sluggish_octopus(x)



def quick_sort(arr)
return arr if arr.length < 2

pivot = arr.first
left = []
right = []

arr.drop(1).each do |ele|
    if ele.length < pivot.length
    left << ele 
    else
    right << ele 
    end
end

result = quick_sort(left) + [pivot] + quick_sort(right)
end  

# x = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
# sorted = quick_sort(x)
# p sorted.last



def clever(arr)
    longest = ""
    arr.each do |ele|
        longest = ele if ele.length > longest.length
    end
    longest
end

# x = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
# p clever(x)




tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

def slow_dance(direction, arr)
    arr.each_with_index do |ele, i|
        return i if ele == direction
    end
end

p slow_dance("right-down", tiles_array)


tiles_hash = {
    "up" => 0,
    "right-up" => 1,
    "right"=> 2,
    "right-down" => 3,
    "down" => 4,
    "left-down" => 5,
    "left" => 6,
    "left-up" => 7
}

def fast_dance(direction, tiles_hash)
  tiles_hash[direction]
end
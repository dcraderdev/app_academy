# # scope_and_reference.rb


# swap elements in array

array = ["a", "b", "c", "d"]    # let's swap "a" and "b"
array[0], array[1] = array[1], array[0]
p array         # => ["b", "a", "c", "d"]




# you can use this swapping mechanic for entire variables as well

food = "mom's spaghetti"
clothing = "sweater"

food, clothing = clothing, food

p food      # => "sweater"   
p clothing  # => "mom's spaghetti"





def bubble_sort(array)

    sorted = false

    while !sorted
        sorted = true
        (0...array.length - 1).each do |i|
            if array[i] > array[i + 1]
                array[i], array[i + 1] = array[i + 1], array[i]
                sorted = false
            end
        end
    end

    array
end
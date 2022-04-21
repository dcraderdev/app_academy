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





def say_hello
    message = "hello"
    p message
end

say_hello


# # Global Variables

# Everywhere area in our code can access the global scope. 
# To define variables in the global scope, we must use special syntax. $


$message = "hello globe"

def say_hello
    p $message
end

say_hello # => "hello globe"


# # Constants

# A constant is denoted syntactically by beginning the name with a capital letter. 
# By convention we like to make the entire name capital to emphasize it being a special constant.
# A constant variable cannot be reassigned:
# But it can be edited/mutated/changed


FOOD = "pho"
FOOD[0] = "P"
p FOOD # => "Pho

FOOD = "pho"
$drink = "ice coffee"

def my_favorite
    p FOOD
    p $drink
end

my_favorite







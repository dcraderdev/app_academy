# adult_in_group



# Write a method, adult_in_group?(people), that accepts an array containing people.
# The method should return true if there is at least 1 person with an age of 18 or greater.
# The method should return false otherwise.



def adult_in_group?(people)
    # unpack_people = [**people]
    # return true if *people.include?(15)
    big_arr = []
    people.each do |k, v| 
        # return true if h.each }
    p k
    p v
    p big_arr
    end

end


def adult_in_group?(people)
    people.each do |person|
        person.each do |k, v|
            if v == Numeric && v >= 18
                return true
            end
        end
    end
    return false
end

def adult_in_group?(people)
    people.each do |person|
        person.any? { |k, v| v == Numeric && v >= 18 }
    end
    return false
end


people_1 = [{name: "Jack", age: 17},{name: "Jill", age: 21},{name: "Alice", age: 15},{name: "Bob", age: 16}]
p adult_in_group?(people_1)    # => true

people_2 = [
    {name: "Jane", age: 12},
    {name: "John", age: 13},
    {name: "Ashley", age: 10},
    {name: "Bill", age: 16}
]
p adult_in_group?(people_2)    # => false




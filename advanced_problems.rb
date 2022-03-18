# # advanced problems

# array-giving Enumerables

# map
# select

arr = ["a", "b", "c", "d"]
new_arr = arr.map { |ele| ele.upcase + "!" }
print new_arr
puts

new_arr = []
arr.each { |ele| new_arr << ele.upcase + "!" }
print new_arr
puts



arr = ["apple", "bootCAMP", "CaRRot", "DaNce"]

new_arr = arr.map { |ele| ele[0].upcase + ele[1..-1].downcase }

p new_arr


arr = ["apple", "bootCAMP", "CaRRot", "DaNce"]

new_arr = arr.map do |ele| 
  first_char = ele[0].upcase
  rest = ele[1..-1].downcase
  first_char + rest
end
p new_arr

# the last line becomes the element!!


# Map By Name
# Write a method map_by_name  that takes in an array of hashes and returns a new array
# containing the names of each hash.

iterate over array
each iteration is a hash
take key with name value and put into array

def map_by_name(arr)
  return arr.map { |hash| hash["name"] }
end

# def map_by_name(arr)
#   new_arr = []
#   arr.map do |l, k|
#     if l.has_key?["name"]
#       new_arr << k
#     end
#   end

# return new_arr
# end

pets = [
  {"type"=>"dog", "name"=>"Rolo"},
  {"type"=>"cat", "name"=>"Sunny"},
  {"type"=>"rat", "name"=>"Saki"},
  {"type"=>"dog", "name"=>"Finn"},
  {"type"=>"cat", "name"=>"Buffy"}
]
p map_by_name(pets) #=> ["Rolo", "Sunny", "Saki", "Finn", "Buffy"]


countries = [
 {"name"=>"Japan", "continent"=>"Asia"},
 {"name"=>"Hungary", "continent"=>"Europe"},
 {"name"=>"Kenya", "continent"=>"Africa"},
]
p map_by_name(countries) #=> ["Japan", "Hungary", "Kenya"]








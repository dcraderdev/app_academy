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





# Map By Key
# Write a method map_by_key that takes in an array of hashes and a key string. 
# The method should returns a new array containing the values from each hash for the given key.

iterate over arr
check what key we are looking for
return keys values into new array


def map_by_key(arr, key)
  return arr.map { |hash| hash[key] }
end

locations = [
  {"city"=>"New York City", "state"=>"New York", "coast"=>"East"},
  {"city"=>"San Francisco", "state"=>"California", "coast"=>"West"},
  {"city"=>"Portland", "state"=>"Oregon", "coast"=>"West"},
]

print map_by_key(locations, "state") #=> ["New York", "California", "Oregon"]
puts
print map_by_key(locations, "city") #=> ["New York City", "San Francisco", "Portland"]
puts


# Yell Sentence
# Write a method yell_sentence that takes in a sentence string and 
# returns a new sentence where every word is yelled. See the examples. 
# Use map to solve this.

split sentence into words
iterate over each word with.upcase and + "!"
join iterations with .join(" ") into new str

def yell_sentence(sent)
  return sent.split(" ").map { |l| l.upcase + "!"}.join(" ")
end



puts yell_sentence("I have a bad feeling about this") #=> "I! HAVE! A! BAD! FEELING! ABOUT! THIS!"


# Whisper Words
# Write a method whisper_words that takes in an array of words and 
# returns a new array containing a whispered version of each word. See the examples. 
# Solve this using map

iterate over array
.downcase + "..."


def whisper_words(words)
return words.map { |l| l.downcase + "..." }
end

print whisper_words(["KEEP", "The", "NOISE", "down"]) # => ["keep...", "the...", "noise...", "down..."]
puts

# O Words
# Write a method o_words that takes in a sentence string and
# returns an array of the words that contain an "o". 
# Use select in your solution!

iterate over str
select words that contain ("o")
return arr with those words

def o_words(sentence)
return sentence.split(" ").select { |l| l.include?("o") }
end

print o_words("How did you do that?") #=> ["How", "you", "do"]
puts


# Last Index
# Write a method last_index that takes in a string and a character. 
# The method should return the last index where the character can be found in the string.

take in str
reverse str
iterate thru str until iteration matches char
return array position

def last_index(str, char)
  str.reverse.each_with_index { |l, i| return i when l == char }
end

puts last_index("abca", "a")       #=> 3
puts last_index("mississipi", "i") #=> 9
puts last_index("octagon", "o")    #=> 5
puts last_index("programming", "m")#=> 7


# Last Index
# Write a method last_index that takes in a string and a character. 
# The method should return the last index where the character can be found in the string.

iterate over str 
return array_pos of char when [index of char..-1] !include? char

def last_index(str, char)
  str.each_char.with_index { |l, i| return i when l == char && l[i..-1].contain?(char) }
end

puts last_index("abca", "a")       #=> 3
puts last_index("mississipi", "i") #=> 9
puts last_index("octagon", "o")    #=> 5
puts last_index("programming", "m")#=> 7

def last_index(str, char)
  str.each_char.with_index { |l, i| puts "#{l} is at index #{i}" }
end

def last_index(str, char)
  str.each_char.with_index do |l, i| 
    if l == char && char[i..-1].include?(char)
      return i
  end
end

puts last_index("abca", "a")       #=> 3
puts last_index("mississipi", "i") #=> 9
puts last_index("octagon", "o")    #=> 5
puts last_index("programming", "m")#=> 7

def last_index(str, char)
  str.each_char.with_index do |l, i| 
if l == char


    return i unless str[i+1..-1].include?(char) && 
    end
end
end

# a, 0
# return 0 if
# l = char yes
# &&
# abca[0+1..-1]


puts last_index("abca", "a")       #=> 3
puts last_index("mississipi", "i") #=> 9
puts last_index("octagon", "o")    #=> 5
puts last_index("programming", "m")#=> 7



def last_index(str, char)
  i = str.length - 1
  while i >= 0
    if str[i] == char
      return i
    end
    i -= 1
  end
end

puts last_index("abca", "a")       #=> 3
puts last_index("mississipi", "i") #=> 9
puts last_index("octagon", "o")    #=> 5
puts last_index("programming", "m")#=> 7
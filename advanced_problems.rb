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

iterate from the last character
find the first appearance of the character
and record the index pos

def last_index(str, char)
  i = str.length - 1
  while i >= 0
    if str[i] = char
      return i
    end
    i -= 1
  end
end

puts last_index("abca", "a")       #=> 3
puts last_index("mississipi", "i") #=> 9
puts last_index("octagon", "o")    #=> 5
puts last_index("programming", "m")#=> 7



def last_index(str, char)
  i = str.length - 1
  while i >= 0
    puts str[i]
    i -= 1
  end
end

puts last_index("abca", "a")       #=> 3
puts last_index("mississipi", "i") #=> 9
puts last_index("octagon", "o")    #=> 5
puts last_index("programming", "m")#=> 7


# Most Vowels
# Write a method most_vowels that takes in a sentence string and 
# returns the word of the sentence that contains the most vowels.

split sentence into words
create hash with words as keys
count += 1 value if key .include?("aeiouAEIOU")
sort hash, return first index pos


def most_vowels(sentence)
  vowel_count = Hash.new(0)
  words = sentence.split(" ")
  vowels = "aeiouAEIOU"
  better_hash = vowel_count.sort_by { |k, v| -v}

  words.each do |l| 
    vowel_count[l] += 0
    l.each_char do |k| 
      if vowels.include?(k) 
      then vowel_count[l] += 1 
      end  
    end
  end

  return better_hash[0]
end

print most_vowels("what a wonderful life") #=> "wonderful"


def most_vowels(sentence)
  vowel_count = {}

  sentence.split(" ").each do |word|
    vowel_count[word] = vowel_count(word)
  end

    sorted = vowel_count.sort_by { |k, v| -v}
    return sorted[0][0]
  end



def vowel_count(word)
  count = 0
  vowels = "aeiouAEIOU"

  word.each_char do |k| 
    if vowels.include?(k) 
    count += 1 
    end  
  end

  return count
end

p most_vowels("what a wonderful life") #=> "wonderful"



# Prime

# Write a method prime? that takes in a number and returns a boolean, 
# indicating whether the number is prime. 
# A prime number is only divisible by 1 and itself.

take in num
check if num % 1 == true
check if num % [2..num-1] == true
if true return false
else true


def prime?(num)
  if num < 2
    return false
  end

  (2...num).each do |n|
    if num % n == 0
      return false
    end
  end

    return true
end


puts prime?(2)  #=> true
puts prime?(5)  #=> true
puts prime?(11) #=> true
puts prime?(4)  #=> false
puts prime?(9)  #=> false
puts prime?(-5) #=> false


# Pick Primes
# Write a method pick_primes that takes in an array of numbers
# and returns a new array containing only the prime numbers.



def pick_primes(numbers)
  return numbers.select { |l| prime?(l) }
end

def prime?(num)
  if num < 2
    return false
  end

  (2...num).each do |n|
    if num % n == 0
      return false
    end
  end
    return true
end



p pick_primes([2, 3, 4, 5, 6]) #=> [2, 3, 5]

p pick_primes([101, 20, 103, 2017]) #=> [101, 103, 2017]




# Prime Factors
# Write a method prime_factors that takes in a number and returns an array 
# containing all of the prime factors of the given number.


def prime_factors(num)
    arr = []
    prime_factors = []

  (1..num).each do |l|
      if num % l == 0
        arr << l
      end
  end

  arr.map { |k| prime_factors << k if prime?(k) == true}

  return prime_factors
end

def prime?(num)
  if num < 2
    return false
  end

  (2...num).each do |n|
    if num % n == 0
      return false
    end
  end
    return true
end

print prime_factors(24) #=> [2, 3]
puts
print prime_factors(60) #=> [2, 3, 5]
puts












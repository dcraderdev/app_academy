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


# Greatest Factor Array
# Write a method greatest_factor_array that takes in an array of numbers
# and returns a new array where every even number is replaced with it's 
# greatest factor. A greatest factor is the largest number that divides 
# another with no remainder. For example the greatest factor of 16 is 8. 
# (For the purpose of this problem we won't say the greatest factor of 16 is 16, 
# because that would be too easy, ha)

greatest factor array
returns new array
itterate thru array
if even number it is replaced with greatest factor

greatest factor
takes in num
divides all nums 1..num and takes largest possbile divisible number and returns it



def greatest_factor_array(arr)
  gfa = []
  arr.map do |k|
    if k % 2 == 0   #.is_even?
      gfa << greatest_factor(k)
    else
      gfa << k
    end
  end

  return gfa
end

def greatest_factor(num)
factors = []
  (1..num-1).map { |n| factors << n if num % n == 0}
  return factors[-1]
end

p greatest_factor_array([16, 7, 9, 14]) # => [8, 7, 9, 7]

p greatest_factor_array([30, 3, 24, 21, 10]) # => [15, 3, 12, 21, 5]


# Perfect Square
# Write a method perfect_square? that takes in a number and 
# returns a boolean indicating whether it is a perfect square. 
# A perfect square is a number that results from multiplying a number by itself. 
# For example, 9 is a perfect square because 3  3 = 9, 25 is a perfect square because 5  5 = 25.

takes in num
returns boolean if answer = square root of num



def perfect_square?(num)
  (1..num).each do |n|
    if n * n == num
      return true
    end
  end

  return false
end



puts perfect_square?(5)   #=> false
puts perfect_square?(12)  #=> false
puts perfect_square?(30)  #=> false
puts perfect_square?(9)   #=> true
puts perfect_square?(25)  #=> true


# Triple Sequence
# Write a method triple_sequence that takes in two numbers, start and length. 
# The method should return an array representing a sequence that begins with start 
# and is length elements long. In the sequence, every element should be 3 times the 
# previous element. Assume that the length is at least 1.




start with original element
take last element and * 3
then take that last ele and * 3

def triple_sequence(start, length)
  new_arr = []
  i = 0
   new_arr << start * 3

  i += 1

end



print triple_sequence(2, 4) # => [2, 6, 18, 54]
puts
print triple_sequence(4, 5) # => [4, 12, 36, 108, 324]
puts


def triple_sequence(start, length)
  seq = [start]

  while seq.length < length
    seq << seq[-1] * 3
  end

  return seq
end

print triple_sequence(2, 4) # => [2, 6, 18, 54]
puts
print triple_sequence(4, 5) # => [4, 12, 36, 108, 324]
puts




# Summation Sequence
# A number's summation is the sum of all positive numbers less than or equal to the number. 
# For example: the summation of 3 is 6 because 1 + 2 + 3 = 6, the summation of 6 is 21 
# because 1 + 2 + 3 + 4 + 5 + 6 = 21. Write a method summation_sequence that takes in a 
# two numbers: start and length. The method should return an array containing length total elements. 
# The first number of the sequence should be the start number. At any point, to generate the next 
# element of the sequence we take the summation of the previous element. 
# You can assume that length is not zero.

take in 2 arguments start, length
return array with length or array @length
firs numern = start
add start + start +1
return array of sums starting with start

arr begins with start
while i < length (iterations/array length)
next ele is sum of [0..start]
next ele is sum of [0..last ele]
next ele is sum of [0..last ele]


def summation_sequence(start, length)
  arr = [start]
  i = 1
  while i < length
  new_num = summation_of(arr[-1])
  arr << new_num
  i += 1
  end

  return arr
end

def summation_of(num)
  i = 0
  sum = 0
  while i <= num
  sum += i
  i += 1
  end
  return sum
end

p summation_of(3)

p summation_sequence(3, 4) # => [3, 6, 21, 231]
p summation_sequence(5, 3) # => [5, 15, 120]
p summation_sequence(4, 10) # => [5, 15, 120]

def summation_sequence(start, length)
  arr = [start]
  while arr.length < length 
  arr << summation_of(arr[-1])
  end

  return arr
end

def summation_of(num)
  count = 0
  (1..num).each { |n| count += n}
  return count
end

p summation_of(3)

p summation_sequence(3, 4) # => [3, 6, 21, 231]
p summation_sequence(5, 3) # => [5, 15, 120]
p summation_sequence(2, 5)




# Fibonacci
# The fibonacci sequence is a sequence of numbers whose first and second elements are 1. 
# To generate further elements of the sequence we take the sum of the previous two elements. 
# For example the first 6 fibonacci numbers are 1, 1, 2, 3, 5, 8. Write a method fibonacci 
# that takes in a number length and returns the fibonacci sequence up to the given length.

arr[1] = 1
arr[2] = 1
while length
next iteration is (arr[-1] + arr[-2])


def fibonacci(length)
  arr = [1, 1]
  returned_arr = []
  i = 0
  while length > 2 && i < length
    arr << (arr[-1] + arr[-2])
    i += 1
  end

  return arr[0..length]
end

p fibonacci(0) # => []

p fibonacci(1) # => [1]

p fibonacci(6) # => [1, 1, 2, 3, 5, 8]

p fibonacci(8) # => [1, 1, 2, 3, 5, 8, 13, 21]


def fibonacci(length)
  arr = [1, 1]
  returned_arr = []
  returned_arr_2 = [1]
  i = 2
  while length > 2 && i < length
    arr << (arr[-1] + arr[-2])
    i += 1
  end
  
  if length == 0 
      return returned_arr
  elsif length == 1
      return returned_arr_2
  end

  return arr[0..length]
end

p fibonacci(0) # => []

p fibonacci(1) # => [1]

p fibonacci(6) # => [1, 1, 2, 3, 5, 8]

p fibonacci(8) # => [1, 1, 2, 3, 5, 8, 13, 21]


def fibonacci(length)

  arr = [1, 1]
  returned_arr = []
  returned_arr_2 = [1]
  i = 2

  while arr.length < length
    arr << (arr[-1] + arr[-2])
    i += 1
  end
  
  if length == 0 
      return returned_arr
  elsif length == 1
      return returned_arr_2
  end

  return arr
end

p fibonacci(0) # => []

p fibonacci(1) # => [1]

p fibonacci(6) # => [1, 1, 2, 3, 5, 8]

p fibonacci(8) # => [1, 1, 2, 3, 5, 8, 13, 21]
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




# Caesar Cipher
# Write a method caesar_cipher that takes in a string and a number. 
# The method should return a new string where every character of the original is 
# shifted num characters in the alphabet.


# Feel free to use this variable:
# alphabet = "abcdefghijklmnopqrstuvwxyz"


take in str
.split str into letters
new_letter = find letter[] in alphabet + 2
shovel into new str or new_word = {^}.join


at what index in alphabet is l
add 2 to that l[i]  




def caesar_cipher(str, num)

  alphabet = "abcdefghijklmnopqrstuvwxyz"
  new_str = ""

  str.each_char do |l|
    old_i = alphabet.index(l)
    new_i = old_i + num
    new_letter = alphabet[new_i % 26]
    new_str += new_letter
  end

  return new_str
end



puts caesar_cipher("apple", 1)    #=> "bqqmf"
puts caesar_cipher("bootcamp", 2) #=> "dqqvecor"
puts caesar_cipher("zebra", 4)    #=> "difve"



# Vowel Cipher
# Write a method vowel_cipher that takes in a string and returns a new string 
# where every vowel becomes the next vowel in the alphabet.



def vowel_cipher(str)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  vowels = "aeiou"
  new_str = ""

  str.each_char do |l|
    if vowels.include?(l)
      old_i = vowels.index(l)
      new_i = old_i + 1
      new_letter = vowels[new_i % vowels.length]
      new_str << new_letter
    else
      new_str << l
    end
  end

  return new_str
end


puts vowel_cipher("bootcamp") #=> buutcemp
puts vowel_cipher("paper cup") #=> pepir cap



def vowel_cipher(str)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  vowels = "aeiou"
  new_str = ""

  new_chars = str.split("").map do |l|
    if vowels.include?(l)
      old_i = vowels.index(l)
      new_i = old_i + 1
      vowels[new_i % vowels.length]
    else
      l
    end
  end

  return new_chars.join("")
end

puts vowel_cipher("bootcamp") #=> buutcemp
puts vowel_cipher("paper cup") #=> pepir cap
puts vowel_cipher("bootcamp") #=> buutcemp
puts vowel_cipher("paper cup") #=> pepir cap


# Double Letter Count
# Write a method that takes in a string and returns the number of times 
# that the same letter repeats twice in a row.

establish a count
iterate over each char string
put it in array
increment count when current incerement matches last ele in array
return count


def double_letter_count(string)
  count = 0
  temp_arr = []
  string.each_char do |l|
    temp_arr << l
    if l == temp_arr[-2]
      count += 1
    end
  end

  return count
end


p double_letter_count("the jeep rolled down the hill") #=> 3
puts double_letter_count("bootcamp") #=> 1


def double_letter_count(string)
  count = 0

  string.each_char.with_index do |char, i|
    if string[i] == string[i + 1]
      count += 1
    end
  end

  return count
end

puts double_letter_count("the jeep rolled down the hill") #=> 3
puts double_letter_count("bootcamp") #=> 1



# Adjacent Sum
# Write a method adjacent_sum that takes in an array of numbers
# and returns a new array containing the sums of adjacent numbers in the original array. 
# See the examples.


takes in array
iterates over array.with_index
new_arr << takes iteration[i] + arr[i+1]

returns array



def adjacent_sum(arr)
  new_arr = []
  arr.each_with_index do |n, i|
    unless i == arr.length - 1
      new_arr << arr[i] + arr[i+1]
    end  
  end
  
  return new_arr
end


p adjacent_sum([3, 7, 2, 11]) #=> [10, 9, 13], because [ 3+7, 7+2, 2+11 ]

p adjacent_sum([2, 5, 1, 9, 2, 4]) #=> [7, 6, 10, 11, 6], because [2+5, 5+1, 1+9, 9+2, 2+4]


# Pyramid Sum
# Write a method pyramid_sum that takes in an array of numbers
# representing the base of a pyramid. The function should return a 2D array representing
# a complete pyramid with the given base. To construct a level of the pyramid, 
# we take the sum of adjacent elements of the level below.


# For example, the base [1, 4, 6] gives us the following pyramid
#     15
#   5   10
# 1   4    6


takes in array of 3 nums
iterate over each and << into arr


num1 + num2 = arr[2][1]
num2 + num3 = arr[2][2]
arr[2][1] + arr[2][2] = arr[1][1]
return 2D array

use .unshift to move element to front





def pyramid_sum(base)

  pyramid = [base]

  while pyramid.length < base.length
    prev_level = pyramid[0]
    next_level = adjacent_sum(prev_level)
    pyramid.unshift(next_level)
  end

  return pyramid
end

def adjacent_sum(arr)
  new_arr = []
  arr.each_with_index do |n, i|
    unless i == arr.length - 1
      new_arr << arr[i] + arr[i+1]
    end  
  end
  
  return new_arr
end

p pyramid_sum([1, 4, 6]) #=> [[15], [5, 10], [1, 4, 6]]

p pyramid_sum([3, 7, 2, 11]) #=> [[41], [19, 22], [10, 9, 13], [3, 7, 2, 11]]



# All Else Equal
# Write a method all_else_equal that takes in an array of numbers. 
# The method should return the element of the array that is equal to half of the sum of 
# all elements of the array. If there is no such element, the method should return nil.



def all_else_equal(arr)
  arr.each do |l| 
    if sum_of_all_else(arr) / 2.0 == l 
      return l
    end
  end
  return nil
end

#works
def sum_of_all_else(arr)
  sum = 0
  arr.each { |a| sum+=a }
return sum
end

# p sum_of_all_else([2, 4, 3, 10, 1])
p all_else_equal([2, 4, 3, 10, 1]) #=> 10, because the sum of all elements is 20
p all_else_equal([6, 3, 5, -9, 1]) #=> 3, because the sum of all elements is 6
p all_else_equal([1, 2, 3, 4])     #=> nil, because the sum of all elements is 10 and there is no 5 in the array


# Anagrams
# Write a method anagrams? that takes in two words and returns a boolean
# indicating whether or not the words are anagrams. 
# Anagrams are words that contain the same characters but not necessarily in 
# the same order. 
# Solve this without using .sort

takes in word
returns boolean
true if word 

def anagrams?(word1, word2)
  hash1 = Hash.new(0)
  hash2 = Hash.new(0)
  word1.each_char { |l| hash1[l] += 1 }
  word2.each_char { |k| hash2[k] += 1 }  

  if hash1 == hash2
  return true
  end

  return false
end

puts anagrams?("cat", "act")          #=> true
puts anagrams?("restful", "fluster")  #=> true
puts anagrams?("cat", "dog")          #=> false
puts anagrams?("boot", "bootcamp")    #=> false


def anagrams?(word1, word2)
  return create_hash(word1) == create_hash(word2)
end

def create_hash(word)
  hash_word = Hash.new(0)
  word.each_char { |l| hash_word[l] += 1 }
  return hash_word
end

puts anagrams?("cat", "act")          #=> true
puts anagrams?("restful", "fluster")  #=> true
puts anagrams?("cat", "dog")          #=> false
puts anagrams?("boot", "bootcamp")    #=> false



# Consonant Cancel
# Write a method consonant_cancel that takes in a sentence and 
# returns a new sentence where every word begins with it's first vowel.
split sentence into words
iterate over each char in word
if the character is not a vowel do not start << rest of word into new_word

def consonant_cancel(sentence)
  return sentence.split(" ").map { |w| remove_first_const(w) }.join(" ")
end


def remove_first_const(word)
  vowels = "aeiouAEIOU"
  word.each_char.with_index do |l , i|
    if vowels.include?(l)
      return word[i..-1]
    end
  end
end


puts consonant_cancel("down the rabbit hole") #=> "own e abbit ole"
puts consonant_cancel("writing code is challenging") #=> "iting ode is allenging"


# Same Char Collapse
# Write a method same_char_collapse that takes in a string and returns a collapsed version 
# of the string. To collapse the string, we repeatedly delete 2 adjacent characters that are 
# the same until there are no such adjacent characters. If there are multiple pairs that can 
# be collapsed, delete the leftmost pair. For example, we take the following steps to collapse 
# "zzzxaaxy": zzzxaaxy -> zxaaxy -> zxxy -> zy

takes in str
deletes first repeated characters and condenses str
then checks str again for repeated char
checking each time if theres any adjacent same charatcers and deleting if so



def same_char_collapse(str)
  reducible = true

  while reducible
    chars = str.split("")
    reducible = false

    chars.each.with_index do |char, i|
      if chars[i] == chars[i + 1]
        chars[i] = ""
        chars[i + 1] = ""
        reducible = true
      end
    end

    str = chars.join("")
  end

  return str
end

puts same_char_collapse("zzzxaaxy")   #=> "zy"
# because zzzxaaxy -> zxaaxy -> zxxy -> zy


puts same_char_collapse("zzzxaaxy")   #=> "zy"
# because zzzxaaxy -> zxaaxy -> zxxy -> zy

puts same_char_collapse("uqrssrqvtt") #=> "uv"
# because uqrssrqvtt -> uqrrqvtt -> uqqvtt -> uvtt -> uv
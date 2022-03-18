# numbers.rb


puts 1 + 1
puts -5 + 3
puts 2.5 + 0.5

# Modulo gives us the remainder of the division

puts 13 % 5
# 3
# returns three because it is not a floating point class so it returns the remainder. it works out to 13/5 = 2 r 3
puts 14 % 5
# 4
# returns three because it is not a floating point class and it returns the remainder. it works out to 14/5 = 2 r 4

Comparisons review -- returns a true or false -- BOOLEAN --

equal ==
not equal !=
greater than >
less than < 
greater than or equal >=
less than or equal <= 


puts 27 % 6



Boolean data type structure review

# operations
# ! (not)
# && (and)
# || (or)

puts false && false
puts false && true
puts true && false
puts true && true

puts false || false
puts false || true
puts true || false
puts true || true

puts false == false
puts false == true
puts true == false
puts true == true

puts false != false
puts false != true
puts true != false
puts true != true


# variables

location = "SF"
# assigned this string to the variable location

my_num = 42
my_num = my_num + 8
puts my_num

count = 8
count = count + 2
#could be written as count += 2
puts count


sentence = "There is no spoon"
puts "---1:"
puts sentence + "?"   # ?
# There is no spoon?

puts "---2:"
puts sentence         # ?
# There is no spoon

sentence += "."
puts "---3:"
puts sentence         # ?
# There is no spoon.

num = 6 / 2
puts "---4:"
puts num              # ?
# 3

puts "---5:"
puts sentence[num]    # ?
# r

def average_of_three(num1, num2, num3)
    num_sum = num1 + num2 + num3
    num_avg = num_sum / 3.00
    return num_avg
  end
  
  puts average_of_three(3, 7, 8)   # => 6.0
  puts average_of_three(2, 5, 17)  # => 8.0
  puts average_of_three(2, 8, 1)   # => 3.666666


  def goodbye(name)
	return "Hey, " + name + ", goodbye my friend."
end

puts goodbye("Daniel")   # => "Bye Daniel."
puts goodbye("Mark")     # => "Bye Mark."
puts goodbye("Beyonce")  # => "Bye Beyonce."


def is_div_by_5(number)
    return true if number % 5 == 0 else return false
end
    
    puts is_div_by_5(10) # => true
    puts is_div_by_5(40) # => true
    puts is_div_by_5(42) # => false
    puts is_div_by_5(8)  # => false


def either_only(number)
    return true if (number % 3 == 0 || number % 5 == 0) && !(number % 3 == 0 && number % 5 == 0)
    else return false
  end
  
  puts either_only(9)  # => true
  puts either_only(20) # => true
  puts either_only(7)  # => false
  puts either_only(15) # => false
  puts either_only(30) # => false

  def larger_number(num1, num2)
    return num1 if num1 > num2 
    else return num2
end
    
puts larger_number(42, 28)   # => 42
puts larger_number(99, 100)  # => 100


def longer_string(str1, str2)
    if str1.length > str2.length
     return str1
     else 
     return str2
     end
   end
   
   
   puts longer_string("app", "academy") # => "academy"
   puts longer_string("summer", "fall") # => "summer"
   puts longer_string("hello", "world") # => "hello"


   def number_check(num)
    if num > 0 
      return "positive"
    elsif num == 0
      return "zero"
    else
      return "negative"
    end
      
    end
    
    puts number_check(5)    # => "positive"
    puts number_check(-2)   # => "negative"
    puts number_check(0)    # => "zero"


def word_check(word)
    if word.length > 6
      return "long"
    elsif word.length < 6
      return "short"
    else 
      return "medium"
    end
      
    end
    
puts word_check("contraption") # => "long"
puts word_check("fruit")       # => "short"
puts word_check("puzzle")      # => "medium"


# iterating through strings with loops

str = "hello"
str.downcase

def count_e(word)
  
	count = 0
    i = 0
  while i <= word.length
    
    if word[i] == "e"
      count += 1
    end
      
    i += 1
  end
  return count
end

puts count_e("movie") # => 1
puts count_e("excellent") # => 3


def count_a(word)
    count = 0
      i = 0
      while i < word.length
        if word.downcase[i] == "a"
          count += 1
        end
        
          i += 1
      end
      return count
        
    end
    
    puts count_a("application")  # => 2
    puts count_a("bike")         # => 0
    puts count_a("Arthur")       # => 1
    puts count_a("Aardvark")     # => 3


def sum_nums(max)
    count = 0
      i = 1
      while i <= max
        count += i
          i += 1
      end
      
    return count
        
    end
    
    puts sum_nums(4) # => 10, because 1 + 2 + 3 + 4 = 10
    puts sum_nums(5) # => 15




def factorial(num)
    count = 1
      i = 1
      while i <= num
        i * i
        count *= i
     
        i += 1
      end
      return count
    end
    
    puts factorial(3) # => 6, because 1 * 2 * 3 = 6
    puts factorial(5) # => 120, because 1 * 2 * 3 * 4 * 5 = 120

def reverse(word)
    reversed = ""
  
    i = 0
    while i < word.length
      char = word[i]
      reversed = char + reversed
  
      i += 1
    end
  
    return reversed
  end
  
puts reverse("cat")          # => "tac"
puts reverse("programming")  # => "gnimmargorp"
puts reverse("bootcamp")     # => "pmactoob"    
def is_palindrome(word)
  reversed = ""

  i = 0
  while i < word.length
    char = word[i]
    reversed = char + reversed

    i += 1
  end

  return reversed == word
end

puts is_palindrome("racecar")  # => true
puts is_palindrome("kayak")    # => true
puts is_palindrome("bootcamp") # => false





def doubler(numbers)
    new_arr = []
      i = 0
      while i < numbers.length
        new_arr << (numbers[i].to_i * 2)
        i += 1
      end
      return new_arr
        
    end
    
    print doubler([1, 2, 3, 4]) # => [2, 4, 6, 8]
    puts
    print doubler([7, 1, 8])    # => [14, 2, 16]




def doubler(numbers)
  doubled_nums = []

  i = 0
  while i < numbers.length
    old_num = numbers[i]
    new_num = old_num * 2
    doubled_nums << new_num

    i += 1
  end

  return doubled_nums
end

print doubler([1, 2, 3, 4]) # => [2, 4, 6, 8]
puts
print doubler([7, 1, 8])    # => [14, 2, 16]


def yell(words)
yell = []
  i = 0 
  while i < words.length
  yell << words[i] + "!"
    i += 1
  end
  return yell
end

print yell(["hello", "world"]) # => ["hello!", "world!"]
puts
print yell(["code", "is", "cool"]) # => ["code!", "is!", "cool!"]

def element_times_index(numbers)
new_arr = []
  i = 0
  while i < numbers.length
    new_arr << numbers[i] * i
    i += 1
  end
  return new_arr
    
end

print element_times_index([4, 7, 6, 5])       # => [0, 7, 12, 15]
puts
print element_times_index([1, 1, 1, 1, 1, 1]) # => [0, 1, 2, 3, 4, 5]


def even_nums(max)
new_arr = []
  i = 0
  while i <= max
    if i % 2 == 0
    new_arr << i
     
    end
    i += 1
  end
    return new_arr
end

print even_nums(10) # => [0, 2, 4, 6, 8, 10]
puts
print even_nums(5)  # => [0, 2, 4]

def range(min, max)
new_arr = []
 i = min
  while i <= max
    new_arr << i

  i += 1
end
return new_arr
end

print range(2, 7)   # => [2, 3, 4, 5, 6, 7]
puts
print range(13, 20) # => [13, 14, 15, 16, 17, 18, 19, 20]

def odd_range(min, max)
    new_arr = []
      i = min
      while i <= max
        if i % 2 == 1
          new_arr << i
        end
          i += 1
        end
        return new_arr
    end
    
    print odd_range(11, 19) # => [11, 13, 15, 17]
    puts
    print odd_range(3, 7)   # => [3, 5, 7]

def reverse_range(min, max)
    new_arr = []
      i = max - 1
      while i > min
        new_arr << i
        i -= 1
      end
      return new_arr
    end

    print reverse_range(10, 17) # => [16, 15, 14, 13, 12, 11]
    puts
    print reverse_range(1, 7)   # => [6, 5, 4, 3, 2]

    def first_half(array)
        new_arr = []
          i = 0
          while i < (array.length / 2.0)
            new_arr << array[i]
            i += 1
          end
          return new_arr
        end
        
print first_half(["Brian", "Abby", "David", "Ommi"]) # => ["Brian", "Abby"]
puts
print first_half(["a", "b", "c", "d", "e"])          # => ["a", "b", "c"]

def factors_of(num)
    factors = []
  
    i = 1
    while i <= num
      if num % i == 0
        factors << i
      end
  
      i += 1
    end
  
    return factors
  end
  
  print factors_of(3)   # => [1, 3]
  puts
  print factors_of(4)   # => [1, 2, 4]
  puts
  print factors_of(8)   # => [1, 2, 4, 8]
  puts
  print factors_of(9)   # => [1, 3, 9]
  puts
  print factors_of(16)  # => [1, 2, 4, 8, 16]


def select_odds(numbers)
  new_arr = []
    i = 0
    while i <= numbers.length
      if numbers[i].to_i % 2 != 0
        new_arr << numbers[i]
      end
      i += 1
    end
    return new_arr
      
end
  
print select_odds([13, 4, 3, 7, 6, 11]) # => [13, 3, 7, 11]
puts
print select_odds([2, 4, 6])            # => []


def select_long_words(words)
  long_words = []

  i = 0
  while i < words.length
    word = words[i]
    if word.length > 4
      long_words << word
    end

    i += 1
  end

  return long_words
end

print select_long_words(["what", "are", "we", "eating", "for", "dinner"]) # => ["eating", "dinner"]
puts
print select_long_words(["keep", "coding"])                               # => ["coding"]


def sum_elements(arr1, arr2)
new_arr = []
  i = 0
  while i < (arr1.length || i < arr2.length)
    new_arr << arr1[i] + arr2[i]
    i += 1
  end
  return new_arr
end

print sum_elements([7, 4, 4, 11], [3, 2, 11, 12, 13])                            # => [10, 6, 15]
puts
print sum_elements(["cat", "pizza", "boot"], ["dog", "pie", "camp"]) # => ["catdog", "pizzapie", "bootcamp"]




def fizz_buzz(max)
new_arr = []
  i = 0
  while i < max
    if (i % 4 == 0 || i % 6 == 0) && !( i % 4 == 0 && i % 6 == 0 )
      new_arr << i
      end

    i += 1
  end
    return new_arr
end

print fizz_buzz(20) # => [4, 6, 8, 16, 18]
puts
print fizz_buzz(15) # => [4, 6, 8]


def to_initials(name)
    initials = ""
      names = name.split(" ")
      names.each { |l| initials << l[0] }
      p names
      return initials
end

puts to_initials("Kelvin Bridges")      # => "KB"
puts to_initials("Michaela Yamamoto")   # => "MY"
puts to_initials("Mary La Grange")      # => "MLG"



def first_in_array(arr, el1, el2)
    arr.each do |l| 
      if l == el1 
        return el1 
      elsif l == el2 
        return el2 
      end
    end
    end
    
    puts first_in_array(["a", "b", "c", "d"], "d", "b"); # => "b"
    puts first_in_array(["cat", "bird" ,"dog", "mouse" ], "dog", "mouse"); # => "dog"




def abbreviate_sentence(sent)
  new_str = []
  words = sent.split(" ")
    
  words.each do |word|
     if word.length <= 4
      new_str << word
        
      elsif word.length > 4
      abbrv_word = abbreviate_word(word)
      new_str << abbrv_word
    end
    end
    return new_str.join(" ")
end

def abbreviate_word(word)
  vowels = "aeiouAEIOU"
  abbrv_word = ""
  word.each_char do |l| 
    unless vowels.include?(l)
    abbrv_word << l
    end
    end
  return abbrv_word
end
puts abbreviate_word("Hello")

puts abbreviate_sentence("follow the yellow brick road") # => "fllw the yllw brck road"
puts abbreviate_sentence("what a wonderful life")        # => "what a wndrfl life"



# Hint: use str.upcase and str.downcase
# "abc".upcase # => "ABC"

def format_name(str)
  proper_name = []
	names = str.split(" ")
	names.each_with_index do |l, i|
       proper_name << l[0].upcase + l[1..-1].downcase
      end
  return proper_name.join(" ")
end

puts format_name("chase WILSON") # => "Chase Wilson"
puts format_name("brian CrAwFoRd scoTT") # => "Brian Crawford Scott"


# split the names into 2
# separate letters in each name
# upcase index 0 of each
# downcase index 0..-1




# A name is valid is if satisfies all of the following:
# - contains at least a first name and last name, separated by spaces
# - each part of the name should be capitalized
#
# Hint: use str.upcase or str.downcase
# "a".upcase # => "A"

def is_valid_name(word)
  names = word.split(" ")
  if names.length < 2
  return false
  end

  names.each do |l|
  if !is_valid_name2(l)
    return false
  end
end

return true
end


  def is_valid_name2(word)
  if word[0] == word[0].upcase && word[1..-1] == word[1..-1].downcase
    return true 
  else  
    return false
  end
end

puts is_valid_name("Kush Patel")       # => true
puts is_valid_name("Daniel")           # => false
puts is_valid_name("Robert Downey Jr") # => true
puts is_valid_name("ROBERT DOWNEY JR") # => false
puts is_valid_name("Robert") # => true for my test, false otherwise






split into 2 parts at @ 

# For simplicity, we'll consider an email valid when it satisfies all of the following:
# - contains exactly one @ symbol
# - contains only lowercase alphabetic letters before the @
# - contains exactly one . after the @

def is_valid_email(str)
  parts = str.split("@")
    if parts.length != 2
      return false
    end

  first = parts[0]
  second = parts[1]
  alpha = "abcdefghijklmnopqrstuvwxyz"
  first.each_char do |char|
      if !alpha.include?(char)
        return false
      end
  end

  if second.split(".").length == 2
    return true 
  else
    return false
  end

end

puts is_valid_email("abc@xy.z")         # => true
puts is_valid_email("jdoe@gmail.com")   # => true
puts is_valid_email("jdoe@g@mail.com")  # => false
puts is_valid_email("jdoe42@gmail.com") # => false
puts is_valid_email("jdoegmail.com")    # => false
puts is_valid_email("az@email")         # => false






# Write a method reverse_words that takes in a sentence string and returns the sentence with the order of the 
# characters in each word reversed. Note that we need to reverse the order of characters in the words, do not 
# reverse the order of words in the sentence.

def reverse_words(sent)
words = sent.split(" ")
rev_words = []
words.each { |l| rev_words << l.reverse }
return rev_words.join(" ")
end

puts reverse_words('keep coding') # => 'peek gnidoc'
puts reverse_words('simplicity is prerequisite for reliability') # => 'yticilpmis si etisiuqererp rof ytilibailer'



# Write a method rotate_array that takes in an array and a number. The method should return the array after rotating the elements 
# the specified number of times. A single rotation takes the last element of the array and moves it to the front.

def rotate_array(arr, num)
  num.times do
    ele = arr.pop
    arr.unshift(ele)
  end

  return arr
end

print rotate_array([ "Matt", "Danny", "Mashu", "Matthias" ], 1) # => [ "Matthias", "Matt", "Danny", "Mashu" ]
puts

print rotate_array([ "a", "b", "c", "d" ], 2) # => [ "c", "d", "a", "b" ]
puts


# nested loops

# Write a method combinations that takes in an array of unique elements, the method should return a 2D array representing all 
# possible combinations of 2 elements of the array.


def combinations(arr)
	array = []
  arr.each_with_index do |char1, idx1|
    arr.each_with_index do |char2, idx2|
      if idx2 > idx1
        array << [char1, char2]
      end
    end
  end
  return array
end

p combinations(["a", "b", "c"]); # => [ [ "a", "b" ], [ "a", "c" ], [ "b", "c" ] ]


p combinations([0, 1, 2, 3]); # => [ [ 0, 1 ], [ 0, 2 ], [ 0, 3 ], [ 1, 2 ], [ 1, 3 ], [ 2, 3 ] ]



def opposite_count(arr)
count = 0
  arr.each_with_index do |char1, idx1|
    arr.each_with_index do |char2, idx2|
      if idx2 > idx1 && (char1 + char2 == 0)
        count += 1
      end
    end
  end
  return count
end

puts opposite_count([ 2, 5, 11, -5, -2, 7 ]) # => 2
puts opposite_count([ 21, -23, 24 -12, 23 ]) # => 1



# Write a method two_d_Sum that takes in a two dimensional array and returns the sum of all elements in the array.

def two_d_sum(arr)
	count = 0
	arr.each do |l|
      l.each do |n|
	count += n
    end
    end
	return count
end

array_1 = [
  [4, 5],
  [1, 3, 7, 1]
]
p two_d_sum(array_1)    # => 21

array_2 = [
  [3, 3],
  [2],
  [2, 5]
]
puts two_d_sum(array_2)    # => 15




# Write a method two_d_translate that takes in a 2 dimensional array and translates it into a 1 dimensional array. 
# You can assume that the inner arrays always have 2 elements. See the examples.



def two_d_translate(arr)
  new_arr = []
    arr.each do |sub_array|
    ele = sub_array[0]
    num = sub_array[1]

    num.times { new_arr << ele }
  end
  return new_arr

end


arr_1 = [
  ['boot', 3],
  ['camp', 2],
  ['program', 0]
]

print two_d_translate(arr_1) # => [ 'boot', 'boot', 'boot', 'camp', 'camp' ]


arr_2 = [
  ['red', 1],
  ['blue', 4]
]

print two_d_translate(arr_2) # => [ 'red', 'blue', 'blue', 'blue', 'blue' ]




# Write a method array_translate that takes in an array whose elements alternate between words and numbers. 
# The method should return a string where each word is repeated the number of times that immediately follows in the array.

def array_translate(array)
  new_str = ""
  i = 0
  while i < array.length
    ele = array[i]
    num = array[i + 1]
    num.times { new_str += ele }

  	i += 2
    end
    return new_str
end


p array_translate(["Cat", 2, "Dog", 3, "Mouse", 1]); # => "CatCatDogDogDogMouse"


p array_translate(["red", 3, "blue", 1]); # => "redredredblue"

# Pig Latin Word
# Write a method pig_latin_word that takes in a word string and translates the word into pig latin.

# Pig latin translation uses the following rules:
# - for words that start with a vowel, add 'yay' to the end
# - for words that start with a nonvowel, move all letters before the first vowel to the end of the word and add 'ay'


def pig_latin_word(word)
  vowels = "aeiou"

  if vowels.include?(word[0])
     return word + "yay"
  end

  word.each_char.with_index do |char, i|
    if vowels.include?(char)
      return word[i..-1] + word[0...i] + "ay"
              # b a n a n a
              # 1..-1 + 0..0 + ay
    end
  end
end

puts pig_latin_word("apple")   # => "appleyay"
puts pig_latin_word("eat")     # => "eatyay"
puts pig_latin_word("banana")  # => "ananabay"
puts pig_latin_word("trash")   # => "ashtray"




# hashes key/value pairs

my_hash = {name: "App Academy", color: "red", age: 35}

p my_hash
p my_hash[:name]


# HASH METHODS
my_hash.has_key?(:name)
my_hash.has_value?("red")


p my_hash.keys[0]
p my_hash.keys[0..-1]
p my_hash.keys[1..-1]

p my_hash.values[0]
p my_hash.values[0..-1]
p my_hash.values[1..-1]


pizza = {
  style: "New York",
  slices: 8,
  diameter: "15 inches",
  toppings: ["mushrooms", "green peppers"],
  is_tasty: true
}

puts pizza

pizza.each do |key, value|
puts "key is #{key}"
puts "value is #{value}"
end

pizza.each_key do |key, value|
puts "key is #{key}"
end

pizza.each_value do |value|
puts "value is #{value}"
end




counter = Hash.new(0)
str = "bootcamp prep"
str.each_char { |char| counter[char] += 1 }
puts counter


counter = Hash.new(0)
str = "bootcamp prep"
str.each_char do |char| 
  puts char
  counter[char] += 1
  puts counter
end




my_hash = Hash.new(a: 1)
b = "hello"
puts my_hash[:a] #["key"]
puts my_hash[1] #["key"]

puts my_hash.keys[0]
puts my_hash.values[0]


my_hash[3] = "goodbye"
my_hash[b] = "goodbye"
puts my_hash
puts my_hash.keys[0]
puts my_hash.values[0]
puts my_hash.keys[1]
puts my_hash.values[1]

puts "-"
puts my_hash


my_hash = {a: 42, b: 10}

char = :b
p my_hash[char]


str = "mississippi river"

count = Hash.new(0)
str.each_char { |char| count[char] += 1 }

p count
sorted = count.sort_by { |k, v| v}
p sorted[-1][0]



my_array = ["a", "b", "c"]

my_hash = {name: "Bob", age: 0}



def get_double_age(hash)
  return hash["age"] * 2
end


puts get_double_age({"name"=>"App Academy", "age"=>5}) # => 10
puts get_double_age({"name"=>"Ruby", "age"=>23})       # => 46


# Get Full Name
# Write a method get_full_name that takes in a hash containing a first, last, and title. 
# The method should return a string representing the hash's full name


def get_full_name(hash)
return hash["first"] + " " + hash["last"] + ", the " + hash["title"] + "."
end

hash1 = {"first"=>"Michael", "last"=>"Jordan", "title"=> "GOAT"}
puts get_full_name(hash1) # => "Michael Jordan, the GOAT"

hash2 = {"first"=>"Fido", "last"=>"McDog", "title"=> "Loyal"}
puts get_full_name(hash2) # => "Fido McDog, the Loyal"


# Word Lengths
# Write a method word_lengths that takes in a sentence string 
# and returns a hash where every key is a word of the sentence, 
# and its' corresponding value is the length of that word.



# split sentence into words
# set keys as words
# set value as length of word

def word_lengths(sentence)
  word_length = Hash.new(0)
  words = sentence.split(" ")

  words.each do |word|
    word_length[word] = word.length
   # word[value] = word.length

  end
  return word_length
end

puts word_lengths("this is fun") #=> {"this"=>4, "is"=>2, "fun"=>3}
puts word_lengths("When in doubt, leave it out") #=> {"When"=>4, "in"=>2, "doubt,"=>6, "leave"=>5, "it"=>2, "out"=>3}



# Retrieve Values
# Write a method retrieve_values that takes in two hashes and a key. 
# The method should return an array containing the values from the two hashes 
# that correspond with the given key.


what key do we want
1 is name
2 is color

iterate over each hash, take desired key and shovel into new_arr



def retrieve_values(hash1, hash2, key)
  new_arr = []

  hash1 = hash1[key]
  hash2 = hash2[key]
  return [hash1, hash2]
end


dog1 = {"name"=>"Fido", "color"=>"brown"}
dog2 = {"name"=>"Spot", "color"=> "white"}
p retrieve_values(dog1, dog2, "name") #=> ["Fido", "Spot"]

p retrieve_values(dog1, dog2, "color") #=> ["brown", "white"]
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






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



        







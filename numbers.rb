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




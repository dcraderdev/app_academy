def coprime?(num1, num2)



# test
p 'test'


# Write a method, coprime?(num_1, num_2), that accepts two numbers as args.
# The method should return true if the only common divisor between the two numbers is 1.
# The method should return false otherwise. For example coprime?(25, 12) is true because
# 1 is the only number that divides both 25 and 12.



iterate thru 1..max of num1 or num_2

if num1 && num2 % i
return true


def coprime?(num1, num2)
  if [num1, num2].max.any? {}

end

p coprime?(25, 12)    # => true
p coprime?(7, 11)     # => true
p coprime?(30, 9)     # => false
p coprime?(6, 24)     # => false


def coprime?(num1, num2)
  i = 2
 while i < [num1, num2].max
  return false if (num1 % i == 0 && num2 % i == 0)
  i += 1
  end
  return true
end

p coprime?(25, 12)    # => true
p coprime?(7, 11)     # => true
p coprime?(30, 9)     # => false
p coprime?(6, 24)     # => false



def coprime?(num_1, num_2)
  (2..num_1).none?{ |divisor| num_1 % divisor == 0 && num_2 % divisor == 0 }
end

p coprime?(25, 12)    # => true
p coprime?(7, 11)     # => true
p coprime?(30, 9)     # => false
p coprime?(6, 24)     # => false

# edit

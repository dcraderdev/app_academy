# Beginning of App Academy! Preps over!

# Using documentation in ruby-docs.org

# commmon array methods

# #any?           in ruby docs # means to use as .
# #all?         in ruby docs # means to use as .
# #none?          in ruby docs # means to use as .
# #count          in ruby docs # means to use as .
# #flatten          in ruby docs # means to use as .


sym = :hello
str = "hello"

p sym.length
p str.length
# 5
# 5

# these two appear the same but 

# symbols are immutable - cannot change
# the trade off for the fact you cant modify a symbol
# is that they only take up one space in memory
# therefore being much more efficient

# strings are mutable - can change
# take up mulitple spaces in memory
# which will make your code run slower


# Let's make num an optional parameter.
# By default, num will have the value of 1

def repeat(message, num=1)
    message * num
end

p repeat("hi") # => "hi"
p repeat("hi", 3) # => "hihihi"


# A fairly common design pattern is to set an arg to nil by default and 
# have logic based on that scenario:

def greet(person_1, person_2=nil)
    if person_2.nil?
        p "Hey " + person_1
    else
        p "Hey " + person_1 + " and " + person_2
    end
end

greet("Chao") # => "Hey Chao"
greet("Chao", "Arittro") # => "Hey Chao and Arittro"


# Splat Operator


# Bif we want our method to have the ability to accept at least two arguments 
# with potentially more, we can add a splat parameter. The additional arguments 
# will be gathered into an array for us to use as we see fit:

def method(arg_1, arg_2, *other_args)
    p arg_1         # "a"
    p arg_2         # "b"
    p other_args    # ["c", "d", "e"]
end

method("a", "b", "c", "d", "e") 

# If we pass in exactly two arguments, then other_args will be an empty array:

def method(arg_1, arg_2, *other_args)
    p arg_1         # "a"
    p arg_2         # "b"
    p other_args    # []
end

method("a", "b") 


# we can use a splat to unpack this array:
# imagine * as removing the brackets around an array
# we can figure out some other creative ways to use this tool:

def greet(first_name, last_name)
    p "Hey " + first_name + ", your last name is " + last_name
end

names = ["Grace", "Hopper"]
greet(*names)    # => "Hey Grace, your last name is Hopper"

# Using splat to decompose a hash
# We can use a double splat (**) to perform a similar unpacking of a hash's key-value pairs. 
# Double splat will only work with hashes where the keys are symbols:

old_hash = { a: 1, b: 2 }
new_hash = { **old_hash, c: 3 }
p new_hash # => {:a=>1, :b=>2, :c=>3}

# This will also unpack an array to use inside of a parameter if we
# lets say fed it a variable but it epxected 2 parameters

def say_hello(first_name, last_name)
  p first_name
  p last_name
end

arr = ["a", "b"]
say_hello(arr)
# this would give us an error becuse arr is one variable with 1 piece of data, an array
# if we want to unpack this we can use the * splat operator before our variable name inside the paraters
# and it will unpack the array for us

def say_hello(first_name, last_name)
  p first_name
  p last_name
end 

arr = ["a", "b"]
say_hello(*arr)
# now it works





# Inject with only a block

# example:
[11, 7, 2, 4].inject { |acc, el| acc + el }


# FIRST ITERATION:
# acc = 11
# el = 7
# new_acc = 18
[11, 7, 2, 4].inject { |acc, el| acc + el }



# SECOND ITERATION:
# acc = 18
# el = 2
# new_acc = 20
[11, 7, 2, 4].inject { |acc, el| acc + el }

# last iteration
# acc = 20
# el = 4
# new_acc = 24
p [11, 7, 2, 4].inject { |acc, el| acc + el } # => 24


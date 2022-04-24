# # intro_to_testing.rb


# TDD (Test Driven Development) is a strategy to develop programs where the requirements 
# for the program are turned into test cases. Changes to the program are made until the program 
# passes the test cases. Here is a high level overview of a basic TDD workflow to create a method:

# Write a new test
# Run all tests & check for fail
# The new test should fail. If it passes, it should be rewritten
# Make changes to the method to satisfy the tests
# Run all tests & check for pass
# if any tests fail, go to back step 3
# if all tests pass, but more test coverage is needed, go to step 1
# Once we complete all 4 steps, we have completed 1 iteration of TDD.




# To use RSpec, we'll need to structure our project files in a certain way. 
# We separate our implementation code files from the testing files using a /lib and /spec folder respectively. 
# Another word for a "test" is a "spec" (short for specification, since the tests specify how our code should 
# behave). Let's say we had two methods that we wanted to have tests for, add and prime?, then we can structure 
# our project like so:

#        ├── lib
#        │   ├── add.rb
#        │   └── prime.rb
#        └── spec
#            ├── add_spec.rb
#            └── prime_spec.rb


# To use RSpec, we MUST follow this structure. 
# We need folders with the literal names lib and spec as direct children of the example_project folder. 
# The test files inside of the /spec folder must end with _specin their names.








# Let's take a look at the contents of /spec/add_spec.rb to see how we test the add method. 
# The behavior outlined in the specs will dictate how we ought to design the method in /lib/add.rb.


# /spec/add_spec.rb

require "add" # this line will include code from "/lib/add.rb"

describe "add method" do
  it "should accept two numbers as arguments" do
    expect { add(2, 3) }.to_not raise_error
  end

  it "should return the sum of the two numbers" do
    expect(add(2, 3)).to eq(5)
    expect(add(10, 12)).to eq(22)
  end
end


#   Here are the core RSpec terms you'll see in every spec file:
  
#   describe - names the method being tested
#   it - expresses the expected behavior of the method being tested
#   expect - shows how that behavior is tested




# # Exceptions in Ruby

Here are two examples of classic exceptions or errors that will halt our execution:

def my_method(arg_1, arg_2)
  puts arg_1
  puts arg_2
end

my_method("a") # ArgumentError: wrong number of arguments (given 1, expected 2)
5 + nil # TypeError: nil can't be coerced into Integer


num = 0

10 / num # ZeroDivisionError: divided by 0

puts "finished"


# Reaching the ZeroDivisionError exception would halt execution of the program and we would never
# get to reach the final puts "finished". This could be deadly if there is some critical code 
# after the exception that we still want to execute, regardless of the fact we got an exception.


# We'll need to use a new structure that is specific to handling exceptions, begin...rescue.


num = 0

begin
  puts "dividing 10 by #{num}"
  ans = 10 / num
  puts "the answer is #{ans}"
rescue
  puts "There was an error with that division."
end

puts "--------"
puts "finished"



# Somewhat similar control flow to an if...else in that both structures have branching logic.


Here are a few more common error types that are native to ruby:

ArgumentError
NameError
NoMethodError
IndexError
TypeError




def format_name(first, last)
  first.capitalize + " " + last.capitalize
end

format_name("grace", "HOPPER") # => "Grace Hopper"

format_name(42, true) # => NoMethodError: undefined method `capitalize' for 42:Integer


# We'll let you be the judge, which exception do you think is more appropriate:

# format_name(42, true) # => NoMethodError: undefined method `capitalize' for 42:Integer
# # OR
# format_name(42, true) # => RuntimeError: arguments must be strings


# we want to raise an exception when the arguments are not strings
# we'll need to check data type:

"hello".instance_of?(String)  # => true
42.instance_of?(String)       # => false


def format_name(first, last)
  if !(first.instance_of?(String) && last.instance_of?(String))
    raise "arguments must be strings"
  end

  first.capitalize + " " + last.capitalize
end

format_name("grace", "hopper") # => "Grace Hopper"
format_name(42, true)          # => RuntimeError: arguments must be strings
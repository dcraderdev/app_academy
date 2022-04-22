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
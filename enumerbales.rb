# enumerbales.rb


# Extend the Array class to include a method named my_each that takes a block, 
# calls the block on every element of the array, and returns the original array. 
# Do not use Enumerable's each method. I want to be able to write:



 # calls my_each twice on the array, printing all the numbers twice.
 return_value = [1, 2, 3].my_each do |num|
    puts num
  end.my_each do |num|
    puts num
  end
  # => 1
       2
       3
       1
       2
       3
  
  p return_value  # => [1, 2, 3]

  class Array

    def my_each(&arr)
      self.length.times do |n|
        puts arr
    end
    end
  
  end

p [1, 2, 3].my_each

def my_each(&prc)
  self.length.times do |i|
    prc.call(self[i])
  end

p [1, 2, 3].call


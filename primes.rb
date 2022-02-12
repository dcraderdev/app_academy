# app_academy_intro.rb


# In 2008, Matz declared that the primary purpose of Ruby is to "help every programmer in the world to be productive, 
# and to enjoy programming, and to be happy."




# Python is perhaps the most similar language to Ruby. Both are dynamic, reflective, object-oriented, multi-paradigm scripting languages.
# They even use similar syntax! Here are the primary linguistic differences:

# Python doesn't support blocks.
# Python has a richer set of data structures.
# Python is inflexible: there's one best way of doing things!
# Whitespace is syntactically significant in Python.
# Python is less object-oriented. It has primitive data types, which are more fundamental than objects (not everything in Python is an object!), and many of its object-oriented features were late additions.
# Ruby values elegance and "magic" over clarity. Here's how to determine the time one month from now in Ruby versus Python:


# The most significant difference between Ruby and Python is their communities. 
# For better or worse, Ruby's popularity is tied to Rails. Hence Rails is the testing ground for many innovations in web development. 
# Airbnb, Apple, Github, Groupon, Shopify, and Twitter all use Rails.





# primes.rb

# primes = []

# num = 1
# while primes.count < 100
#   is_prime = true
#   (1..num).each do |idx|
#     if num % idx == 0
#       is_prime = false
#       break
#     end
#   end

#   if is_prime
#     primes << num
#   end
# end

# puts primes



# primes.rb

def prime?(num)
    (1..num).each do |idx|
      if num % idx == 0
        return false
      end
    end
  end
  
  def primes(num_primes)
    ps = []
    num = 1
    while ps.count < num_primes
      primes << num if prime?(num)
    end
  end
  
  if __FILE__ == $PROGRAM_NAME
    puts primes(100)
  end
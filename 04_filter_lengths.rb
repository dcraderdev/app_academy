# filter_lengths




# Write a method, filter_lengths(strings, length), that accepts an array of strings
# and a length as args. The method should return an array containing the strings
# that have at least the given length. The length argument should be optional; if no length
# is passed in, then 5 should be used as the length.


arr of str, num
return arr str.length that are >= num

def filter_lengths(strings, length=5)
  new_arr = []
  strings.each do |w| 
    unless w.length < length
      new_arr << w
    end
  end
end


# def filter_lengths(strings, length=5)
#   new_arr = []
#   strings.each do |w| 
#   p w.length
   
#   end
# end

p filter_lengths(["pear", "dragonfruit", "fig", "clementine"], 4)   # => ["pear", "dragonfruit", "clementine"]
p filter_lengths(["pear", "dragonfruit", "fig", "clementine"])      # => ["dragonfruit", "clementine"]
p filter_lengths(["cat", "dog", "capybara", "mouse"], 7)            # => ["capybara"]
p filter_lengths(["cat", "dog", "capybara", "mouse"])               # => ["capybara", "mouse"]




# # Part 1:
#   average
#     should accept two numbers as arguments
#     should return the average of the two numbers
#   average_array
#     should accept an array of numbers as an arg
#     should return the average of the numbers of the array
#   repeat
#     should accept a string and a number as args
#     should return a new string where the original is repeated that number of times
#   yell
#     should accept a string as an arg
#     should return a yelled version of the string
#   alternating_case
#     should accept a sentence string as an arg
#     should return the sentence with words alternating between uppercase and lowercase



def average(num1, num2)
  (num1 + num2) / 2.0
end



def average_array(nums)
  nums.sum / (nums.length * 1.0)
end

def repeat(str, num)
  str * num
  # new_str = ""
  # num.times { new_str += str }
  # new_str
end

def yell(str)
  str.upcase + "!"
end

def alternating_case(str)

 words = str.split(" ").map.with_index do |w, i|
    if i.even?
      w.upcase
    else
      w.downcase
    end
  end
  words.join(" ")
end

p alternating_case("code never lies, comments sometimes do.")


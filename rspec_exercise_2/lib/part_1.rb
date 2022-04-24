# Part 1:
#   partition
#     should accept an array and a number as args
#     should return a 2D array of length 2 where the first subarray contains 
#     elements less than the number arg and the second subarray contains elements greater 
#     than or equal to the number arg
#     should not use the built-in Array#partition

#   merge
#     should accept two hashes as args
#     should return a new hash representing containing key-value from both hashes
#     should take the value from the second hash if the two hashes have duplicate keys
#     should not mutate the two input hashes
#     should not use the built-in Hash#merge method

#   censor
#     should accept a sentence and an array of curse words as args
#     should return the sentence where every curse word has it's vowels replaced with '*'

#   power_of_two?
#     should accept a number as an arg
#     should not use the built-in Math#log methods
#     when the number is a power of two
#       should return true
#     when the number is not a power of two
#       should return false





def partition(arr, n)
  
  small_nums = []
  big_nums = []
  partition = [small_nums, big_nums]

  arr.map do |l|
    if l < n
      small_nums << l
    else
      big_nums << l 
    end
  end
  partition
end

p partition([11, 5, 13, 2, 3], 7)




def merge(hash1, hash2)

end

def censor(str, arr)

end

def power_of_two?(n)

end


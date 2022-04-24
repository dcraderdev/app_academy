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
  new_hash = Hash.new(0)
  hash1.each { |k, v| new_hash[k] = v }
  hash2.each { |k, v| new_hash[k] = v }
  new_hash
end



def censor(str, bad_word)
  words = str.split(" ")
  vowels = "aeiou"
  new_sentence = ""

  new_words = words.map do |w|
    if bad_word.include?(w.downcase)
      star_vowels(w)
    else
      w
    end
  end
  new_words.join(" ")
end

def star_vowels(word)
  vowels = 'aeiouAEIOU'
  new_word = ""
  word.each_char do |l|
    if vowels.include?(l.downcase)
      new_word << "*"
    else
      new_word << l
    end
  end
  new_word
end  



def power_of_two?(number)
  product = 1
  
  while product < number
    product *= 2
  end

  product == number
end


p power_of_two?(16)
p power_of_two?(4)
p power_of_two?(32)
p power_of_two?(81)

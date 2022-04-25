# Part 2:
#   palindrome?
#     should accept a string as an arg
#     should not use String#reverse
#     when the string is the same forwards and backwards
#       should return true
#     when the string is not the same forwards and backwards
#       should return false
#   substrings
#     should accept a string as an arg
#     should return an array containing all substrings of the given string
#   palindrome_substrings
#     should accept a string as an arg
#     should return an array containing all substrings that are palindromes and longer than 1 character
#     should call your previous 'palindrome?' method
#     should call your previous 'substrings' method





def palindrome?(str)
  str.each_char.with_index do |char, i|
    if str[i] != str[-i - 1]
      return false
    end
  end
  true
end


p palindrome?("tot")







def substrings(str)

end


def palindrome_substrings(str)

end

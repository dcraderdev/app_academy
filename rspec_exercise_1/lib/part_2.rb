# Part 2:
#   hipsterfy
#     should accept a word as an arg
#     should return the word with it's last vowel (a, e, i, o, u) removed
#     should return the original word if it contains no vowels
#   vowel_counts
#     should accept string as an arg
#     should return a hash where each key is a vowel of string and it's value is the number of times it appears
#   caesar_cipher
#     should accept a message and a number (n) as an arg
#     should return a new string where every letter of the message is shifted n positions in the alphabet
#     should not modify non-alphabetic characters


def hipsterfy(word)
  vowels = "aeiouAEIOU"

  i = word.length - 1
  while i >= 0
    if vowels.include?(word[i])
      return word[0...i] + word[i+1..-1]
    end

    i -= 1
  end
  return word
end



def vowel_counts(str)
  count = Hash.new(0)
  vowels = "aeiou"

  str.downcase.each_char do |l| 
    if vowels.include?(l)
      count[l] += 1
    end
  end
  count
end





def caesar_cipher(str, n)
  alphabet = ("a".."z").to_a
  new_word = ""

  str.each_char do |l|
  if alphabet.include?(l)
    old_i = alphabet.index(l)
    new_i = old_i + n
    new_word += alphabet[new_i % 26]
  else
    new_word += l
  end
end
  new_word
end

p caesar_cipher("help", 2)





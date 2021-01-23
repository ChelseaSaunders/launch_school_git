# Write a method that takes a string, and returns a new string in which every
# consonant character is doubled. Vowels (a,e,i,o,u), digits, punctuation, and
# whitespace should not be doubled.

# PROBLEM:
#   Input: string
#   Output: string
#   Rules:
#     Explicit: every character other than vowels, digits, punctuation, and
#               whitespace must be repeated
#               return must be new string, not modified input string
#     Implicit: duplicate character must immediately follow original character
#               (not be added to end of string)

# EXAMPLES/TEST CASES:

# DATA:

# ALOGORITHM:

# CODE:

def double_consonants(string)
  doubles = ''
  vowels = %w(a e i o u)
  alphabet = ('a'..'z')

  string.each_char do |char|
    if alphabet.include?(char.downcase) && vowels.include?(char.downcase) == false
      doubles << char << char
    else
      doubles << char
    end
  end

  doubles
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""

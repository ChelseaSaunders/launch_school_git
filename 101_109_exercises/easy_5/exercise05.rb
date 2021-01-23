# Given a string that consists of some words (all lowercased) and an assortment
# of non-alphabetic characters, write a method that returns that string with
# all of the non-alphabetic characters replaced by spaces. If one or more
# non-alphabetic characters occur in a row, you should only have one space in
# the result (the result should never have consecutive spaces).

# PROBLEM:
#   Input: string with lower-case alphabetic characters, spaces, and
#     non-alphabetic characters
#   Output: string with only alphabetic characters and spaces
#   Rules:
#     Explicit:
#     - Must replace all non-alphabetic characters with a space
#     - If there is more than one non-alphabetic character in a row, there
#       must only be a space to replace the character
#     - All alphabatic characters will be lower case
#     - There should be no consecutive spaces

#     Implicit:
#     - Unclear if return value should be new object or original string

# EXAMPLES/TEST CASES:
# Provided.  Test case has non-alphabetic characters spaced randomly thruoghout
# the string.  I will add a single character string with an alphabetic
# chracter, a single character string with a non-alphabetic character, a single
# character string with only a space,  a string with numeric characters, a
# string with two non-alphabetic characters, a string with two alphabetic
# characters, and a string with two spaces, as the provided test case does not
# supply these possible edge cases.

# DATA:

# ALOGORITHM:
# I will create a constant ALPHABET and fill it with an array of the characters
# from a to z.

# I will create the cleanup method that takes one string as an argument.
# I will create an empty array cleaned_up.
# I will iterate thruogh the string and push the character into the cleaned_up
# array if it is in the ALPHABET array, otherwise I will push a space into the
# cleaned_up array, unless the prior character in the array was also a space.
# I will join the cleaned_up array and return that value.

# CODE:

ALPHABET = ('a'..'z').to_a

def cleanup(string)
  cleaned_up = []
  string.each do |char|
    if ALPHABET.include?(char)
      cleaned_up << char
    else
      cleaned_up << ' ' unless cleaned_up.last == ' '
    end
  end

  cleaned_up.join
end

p cleanup("---what's my +*& line?") == ' what s my line '
p cleanup('a') == 'a'
p cleanup('aa') == 'aa'
p cleanup('-') == ' '
p cleanup('--') == ' '
p cleanup(' ') == ' '
p cleanup('  ') == ' '
p cleanup('12') == ' '

#
#
# my way before looking at solution:

def remove_non_alphabetic_chars(array)
  array.map! do |char|
    if ('a'..'z').include?(char)
      char
    else
      ' '
    end
  end
  array
end

def remove_extra_spaces(ary)
  string = ary.join.split(' ').join(' ')
  string.prepend(' ') if ary[0] == ' '
  string << (' ') if ary[-1] == ' '
  string
end

def clean_up(string)
  characters = string.split('')
  remove_non_alphabetic_chars(characters)
  cleaned_up = remove_extra_spaces(characters)
  cleaned_up
end

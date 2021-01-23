# Given a string of words separated by spaces, write a method that takes this
# string of words and returns a string in which the first and last letters of
# every word are swapped.

# You may assume that every word contains at least one letter, and that the
# string will always contain at least one word. You may also assume that each
# string contains nothing but words and spaces.

# PROBLEM:
#   Input: String of words separated by spaces
#   Output: String of words separated by spaces
#   Rules:
#     Explicit:
#       - Must alter string such that the order of each set of characters is
#         intact, but each set of charachters within the larger string is
#         reversed.
#     Implicit:
#       - Case sensitive, based on example/test cases provided
#       - Not clear whether return value should be permenantly altered input
#         value or new value; for the context of this problem I will do what is
#         easiest

# EXAMPLES/TEST CASES:
# Provided; they include multi-word, single-word, and single-character strings,
# which I believe cover all of the edge cases. Given the context of the exercise
# I don't believe we have to validate that input is string.

# DATA:
#   The input and output are both strings, but the array class provides the
#   easiest way to sort individual sub-strings separated by spaces, so I will
#   use an array as well.

# ALOGORITHM:
#   I will cteate a method, swap, that takes one string as an argument.
#   I will create an array and assign it the value of the string, with each
#   word as an element.
#
#   Outside and above the swap method, I will create a method, swap_characters
#   which takes one array as an argument.
#   In this method, I will iterate thruogh the array, and break each element
#   into a sub-array of individual characters
#   I will create two variables, first_char and last_char and assign them to
#   the first and last character in each original array element (so they will)
#   stay fixed even as I mutate the sub-arrays.
#   I will then assign the last_char variable to the first element of the
#   subarray, and the first_char variable to the first element in hte subarray.
#   I will then rejoin the subarray so that at the conclusion of iterating
#   through the original array, it retutns an array of strings with the first
#   and last characters reversed.
#
#   Back in the swap method, I will call the swap_characters method on the new
#   array.
#   I will then join the modified array with spaces between each element, and
#   return it.

# CODE:

def swap_charachters(array)
  array.map! do |word|
    chars = word.split('')
    last_char = word[-1]
    first_char = word[0]
    chars[0] = last_char
    chars[-1] = first_char
    chars.join
  end
  array
end

def swap(string)
  array_of_words = string.split(' ')
  swap_charachters(array_of_words)
  array_of_words.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'

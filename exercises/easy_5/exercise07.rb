# Modify the word_sizes method from the previous exercise to exclude non-letters
# when determining word size. For instance, the length of "it's" is 3, not 4.

# PROBLEM:
#   Input: String of words separated by spaces
#   Output: Hash with length of word as key, number of words that length as
#           value
#   Rules:
#     Explicit:
#     Must return a hash with word length as key, the number of words with that
#     length as a value
#     Word length counts only alphabetic characters, no other characters
#
#     Implicit:
#     Empty string will produce empty hash
#     Keys should only exist for word lengths that exist in the string (e.g if
#     a string has no words with 5 characters, there should not be a key with
#     the value of 5)

# EXAMPLES/TEST CASES:
# Provided. Includes strings with several words of the same length and different
# lengths, and one empty string.  Does not contain any single-word strings; I
# will add one to account for possible edge cases. Given the context of the
# problem, I do not think we need to validate input.

# DATA:
# The input is a string and the output is a hash. I will use an array to
# generate the data about the length of each word. Additionally, the keys and
# values are both integers, and math will be performed on the values, which
# can be done in the integer class.

# ALOGORITHM:
# I will create a method word_sizes that takes one string as an argument.
# I will create a variable alphabet_string and assign it to the value of the
# input string with the nonalphabetic or space characters removed
# I will create an empty hash total_word_sizes with a default value of 0.
# I will convert the alphabet_string into an array and iterate through the array
# to determine the length of each word and pass that length as a key in the
# total_word_sizes value, and add 1 to the key for that value.
# I will return the total_word_sizes hash

# CODE:

def word_sizes(string)
  alphabet_string = string.delete('^A-Z^a-z^ ')

  total_word_sizes = Hash.new(0)

  alphabet_string.split.each { |word| total_word_sizes[word.length] += 1 }

  total_word_sizes
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}
p p word_sizes('one') == { 3 => 1 }

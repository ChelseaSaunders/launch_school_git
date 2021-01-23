# Write a method that takes a string with one or more space separated words and
# returns a hash that shows the number of words of different sizes.

# Words consist of any string of characters that do not include a space.

# PROBLEM:
#   Input: String of words separated by spaces
#   Output: Hash with length of word as key, number of words that length as
#           value
#   Rules:
#     Explicit:
#     Must return a hash with word length as key, the number of words with that
#     length as a value
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
# The input is a string and the output is a hash.  I will use an array to
# generate the data about the length of each word.  Additionally, the keys and
# values are both integers, and math will be performed on the values, which
# can be done in the integer class.

# ALOGORITHM:
# I will create a method word_sizes that takes one string as an argument.
# I will create an empty hash total_word_sizes with a default value of 0.
# I will convert the input string into an array and iterate through the array
# to determine the length of each word and pass that length as a key in the
# total_word_sizes value, and add 1 to the key for that value.
# I will return the total_word_sizes hash

# CODE:

ALPHABET = ('a'..'z').to_a

def letters_only(text)

end

def word_sizes(string)
  total_word_sizes = Hash.new(0)
  string.split.each { |word| total_word_sizes[word.length] += 1 }
  total_word_sizes
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}
p word_sizes('one') == { 3 => 1 }

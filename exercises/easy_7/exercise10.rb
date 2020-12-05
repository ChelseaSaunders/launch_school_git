# Write a method that returns the next to last word in the String passed to it
# as an argument.

# Words are any sequence of non-blank characters.

# You may assume that the input String will always contain at least two words.

# PROBLEM:
#   Input: String of non-blank characters with at least two words
#   Output: single string with no spaces, containing second-to last word
#   Rules:
#     Explicit:
#
#     Implicit:

# EXAMPLES/TEST CASES:  Provided.  Include both single string and multiple
#   string tests; given the narrow scope of this problem I believe this covers
#   all edge cases, however other edge cases worth considering would be strings
#   with multiple consecutive spaces and

# DATA:

# ALOGORITHM:

# CODE:

def penultimate(string)
  word_array = string.split
  word_array[-2]
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'

# Further Exploration
# Our solution ignored a couple of edge cases because we explicitly stated that
# you didn't have to handle them: strings that contain just one word, and
# strings that contain no words.

# Suppose we need a method that retrieves the middle word of a phrase/sentence.
# What edge cases need to be considered? How would you handle those edge cases
# without ignoring them? Write a method that returns the middle word of a phrase
# or sentence. It should handle all of the edge cases you thought of.

# edge cases: empty string, one word string, strings with even numbers. for
# even numbers i will go one number farther than the middle

def middle(string)
  array = string.split
  middle_word = ''
  if array.length == 1
    middle_word = array[0]
  elsif array.length > 1
    half = array.length / 2
    middle_word = array[half]
  end

  middle_word
end

p middle('oh hi mark')
p middle('hi')
p middle('')
p middle('hi doggy')

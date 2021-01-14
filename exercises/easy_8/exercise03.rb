# Write a method that returns a list of all substrings of a string that start at
# the beginning of the original string. The return value should be arranged in
# order from shortest to longest substring.

# PROBLEM:
#   Input: string
#   Output: array
#   Rules:
#     Explicit: must return array with series of strings based on original
#               string input.  First element array will be first char in string
#               second will be first and second, third will be 1-3, etc.
#     Implicit:

# EXAMPLES/TEST CASES:
# provided
# Given context of problem, assuming we do not have to validate input

# DATA:

# ALOGORITHM:
# Create an array with each element as a character from the string
# Create an empty array
# Iterate through original array and add each element, plus the previous
# elements to the new array
# return the new array

# CODE:

def leading_substrings(string)
  substring_array = []
  string.length.times do |index|
    substring_array << string[0..index]
  end

  substring_array
end

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

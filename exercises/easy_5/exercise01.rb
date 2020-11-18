# Write a method that determines and returns the ASCII string value of a string
# that is passed in as an argument. The ASCII string value is the sum of the
# ASCII values of every character in the string. (You may use String#ord to
# determine the ASCII value of a character.)

# PROBLEM:
#   Input: string
#   Output: integer (ASCII string value)
#   Rules:
#     Explicit: The return value should be the sum of each character's ASCII
#       value
#       The method string.ord may be used to determine the ASCII value of each
#       character
#     Implicit: The method will only take one string as an argument; the input
#       will always be a string

# EXAMPLES/TEST CASES:
# Several test cases are provided, including multi-word strings, strings with
# capital and lower-case letters, a single-letter string, and an empty string.
# There are no strings of numbers or special charachters so those would be
# worthwhile additions to the test cases. For the purposes of this exercise, it
# seems reasonable to assume we don't have to validate for non-string inputs.

# DATA:
# The input is a string and the output will be integers, an array will allow
# for the addition of the integers

# ALOGORITHM:
# Create a method that takes one string as an argument.  Within the definition,
# create an empty array, iterate thruogh the input string and call the .ord
# method on each character of the string, then input that value into the array.
# Return the sum total of the contents of the array.

# CODE:

def ascii_value(string)
  total = []
  string.each_char { |char| total << char.ord }
  total.sum
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0
p ascii_value('1')
p ascii_value('123')
p ascii_value('.!?')

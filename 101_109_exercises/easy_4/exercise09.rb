# In the previous two exercises, you developed methods that convert simple
# numeric strings to signed Integers. In this exercise and the next, you're
# going to reverse those methods.

# Write a method that takes a positive integer or zero, and converts it to a
# string representation.

# You may not use any of the standard conversion methods available in Ruby,
# such as Integer#to_s, String(), Kernel#format, etc. Your method should do
# this the old-fashioned way and construct the string by analyzing and
# manipulating the number.

# PROBLEM:
# Input: Potitive integer or zero
# Output: String representation of input
# Rules:
#   Explicit:
#     - Must convert integer into string that contains the string symbols
#     corresponding to the input integer
#     - May not use any of the standard conversion method

#   Implicit:
#     - Output must be single string, not series of strings for each numeral

# EXAMPLES/TEST CASES:
#   Provided.  Examples provided include zero, which seems to be the only edge
#   case, given that the rules for input are only either positive number or
#   integer, and given the context of this particluar problem, I am inferring
#   that we do not need to validate input.

# DATA:
#   The input is an integer, which will be turned to an array.  The elements in
#   the array will be altered based on key/value pairs in a hash, and an array
#   of strings will be returned.  This array of strings will then be joined to
#   return a single string that represents the input integer value.

# ALOGORITHM:
#   Create hash with key/value pairs assigning the keys to each integer, and the
#   values to the corresponding string representation of the integer.
#   Convert the input integer into an array and iterate thruogh the array
#   using the hash key to replace each element with it's corresponding value in
#   the hash.
#   Join each element in the array so that it returns a single string.

# CODE:

NUMBERS_CONVERSION = { 0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4',
                       5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9' }

def integer_to_string(integer)
  array = integer.digits.reverse
  array.map! { |n| NUMBERS_CONVERSION[n] }
  array.join
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'

# In the previous exercise, you developed a method that converts non-negative
# numbers to strings. In this exercise, you're going to extend that method by
# adding the ability to represent negative numbers as well.

# Write a method that takes an integer, and converts it to a string
# representation.

# You may not use any of the standard conversion methods available in Ruby,
# such as Integer#to_s, String(), Kernel#format, etc. You may, however, use
# integer_to_string from the previous exercise.

# PROBLEM:
#   Input: Integer (positive, negative)
#   Output: string representation of input integer
#   Rules:
#     Explicit:
#     Implicit:

# EXAMPLES/TEST CASES:
# Provided; include both positive, negative, and zero values.  Does not include
# value beginning with +, should be added to test cases.

# DATA STRUCTURE: Input is an integer, an array will be used to modify the data,
# A hash will be used to store key/value pairs that are used to modify the data,
# and a string will be returned.

# ALOGORITHM:
# Create a constant that is assigned to a hash with key/value pairs of
# corresponding numerals and string symbols.
# Create a method that accpets one integer as an argument. In that method,
# create an array with each digit from the absolute value of the input integer.
# Iterate through the array and reassign each integer element to its
# corresponding string value from the constant hash.
# Join the elements of the array to create a single string
# Test if the original input was negative and if so, add "-" to the beginning of
# the string.
# Return the string.

# CODE:

NUMBERS_CONVERSION = { 0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4',
                       5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9' }

def integer_to_string(integer)
  array = integer.abs.digits.reverse
  array.map! { |n| NUMBERS_CONVERSION[n] }
  result = array.join
  result.prepend('-') if integer < 0
  result
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(-123) == '-123'
p integer_to_string(+5) == '5'

# The String#to_i method converts a string of numeric characters (including an
# optional plus or minus sign) to an Integer. String#to_i and the Integer
# constructor (Integer()) behave similarly. In this exercise, you will create a
# method that does the same thing.

# Write a method that takes a String of digits, and returns the appropriate
# number as an integer. You may not use any of the methods mentioned above.

# For now, do not worry about leading + or - signs, nor should you worry about
# invalid characters; assume all characters will be numeric.

# You may not use any of the standard conversion methods available in Ruby,
# such as String#to_i, Integer(), etc. Your method should do this the
# old-fashioned way and calculate the result by analyzing the characters in the
# string.

# PROBLEM:
# - input: string containing integers
# - output: integers
# - rules:
#   - explicit: convert integers in string into actual integers, do not use pre-
#     existing methods. Assume all input are strings of integers.
#   - implicit:

# EXAMPLES:
# Provided:
# string_to_integer('4321') == 4321
# string_to_integer('570') == 570
# The problem explicitly assumes only valid input, these test cases should be
# adequate; the only outlier not include is '0', so I will add that to the test.

# DATA:
# Convert string into array. Convert array elements using a hash, which has
# numeral characters as keys and their corresponding integers as values.
# Convert array of individual single-digit integers into single integer that
# corresponds to input string representation.

# Alogorithm:
# Convert the string to an array with each character as an element; iterate
# thruogh the array to replace each string character with an integer using the
# key/value pairs in the hash, iterate thruogh the transformed array with a
# method that converts each digit into its respective multiple of 10 (435 would
# be 400, 30, and 5, for example), and adds them together.

NUMBERS_CONVERSION = { '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
                       '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9 }

def string_to_integer(string_of_integers)
  array = string_of_integers.chars.map! { |num| NUMBERS_CONVERSION[num] }

  total = 0
  array.each { |digit| total = 10 * total + digit }
  total
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570
p string_to_integer('0') == 0

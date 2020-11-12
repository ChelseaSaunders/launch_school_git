# In the previous exercise, you developed a method that converts simple numeric
# strings to Integers. In this exercise, you're going to extend that method to
# work with signed numbers.

# Write a method that takes a String of digits, and returns the appropriate
# number as an integer. The String may have a leading + or - sign; if the first
# character is a +, your method should return a positive number; if it is a -,
# your method should return a negative number. If no sign is given, you should
# return a positive number.

# You may assume the string will always contain a valid number.

# You may not use any of the standard conversion methods available in Ruby,
# such as String#to_i, Integer(), etc. You may, however, use the
# string_to_integer method from the previous lesson.

# PROBLEM:
# - input: string containing positive, negative, and unsigned integers
# - output: integers, negative or unsinged, as appropriate
# - rules:
#   - explicit: convert integers in string into actual integers, do not use pre-
#     existing methods.
#   - Assume all input are valid strings of integers.
#   - implicit:
#     - if an input string begins with "-", the output must be a negative
#       integer
#     - if an input string begins with "+", the output must be a positive
#       integer, not preceded with "+"
#     - if input string is not signed, output must remain that way

# EXAMPLES:
# Provided
# string_to_signed_integer('4321') == 4321
# string_to_signed_integer('-570') == -570
# string_to_signed_integer('+100') == 100
# Since provided test cases include "+", "-", and unsigned strings of integers
# and we were told to assume only valid input, these test cases should be
# adequate; the only outlier not include is '0', so I will add that to the test.

# DATA:
# Convert string into array, convert array back to string after transforming
# characters.

# ALOGORITHM:
# Convert the string to an array with each character as an element; iterate
# thruogh the array to replace each string character with an integer, + or -.
# Create an if/else statement that iterate thruogh the transformed array with a
# method that converts each digit into its respective multiple of 10 (435 would
# be 400, 30, and 5, for example), and adds them together.

# CODE:

NUMBERS_CONVERSION = { '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
                       '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9 }

def string_to_integer(string_of_integers)
  array = string_of_integers.chars.map! { |num| NUMBERS_CONVERSION[num] }

  total = 0
  array.each { |digit| total = 10 * total + digit }
  total
end

def string_to_signed_integer(int_string)
  if int_string[0] == '-'
    positive = false
    int_string.slice!(0)
  elsif int_string[0] == '+'
    int_string.slice!(0)
  end

  num = string_to_integer(int_string)

  num = 0 - num if positive == false
  num
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100
p string_to_signed_integer('0') == 0

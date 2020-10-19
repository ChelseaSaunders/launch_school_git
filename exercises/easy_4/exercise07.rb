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
#     existing methods.
#   - implicit:

# EXAMPLES:
# Provided:
# string_to_integer('4321') == 4321
# string_to_integer('570') == 570

# DATA:
# Convert string into array, convert array back to string after transforming
# characters.

# Alogorithm:
# Convert the string to an array with each character as an element; iterate
# thruogh the array to replace each string character with an integer, iterate
# thruogh the transformed array with a method that converts each digit into its
# respective multiple of 10 (435 would be 400, 30, and 5, for example), and adds
# them together.

def string_to_integer(string_of_integers)
  array = string_of_integers.chars

  array.map! do |num|
    case num
    when '0'
      num = 0
    when '1'
      num = 1
    when '2'
      num = 2
    when '3'
      num = 3
    when '4'
      num = 4
    when '5'
      num = 5
    when '6'
      num = 6
    when '7'
      num = 7
    when '8'
      num = 8
    else
     num = 9
    end
  end

  total = 0
  counter = 1

  array.length.times do
    number = array.pop * counter
    total = total + number
    counter *= 10
  end
  total
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570

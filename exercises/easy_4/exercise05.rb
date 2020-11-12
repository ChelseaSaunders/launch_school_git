# Write a method that searches for all multiples of 3 or 5 that lie between 1
# and some other number, and then computes the sum of those multiples. For
# instance, if the supplied number is 20, the result should be 98
# (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

# You may assume that the number passed in is an integer greater than 1.

# PROBLEM:
#   Input: Integer greater than 1
#   Output: Integer
#   Rules:
#     Explicit: Add values between 1 and the input number that are divisible
#     by 3 and 5
#     Implicit: Only values that are divisible by 3 and 5 should be added

# EXAMPLES/TEST CASES:
# The problem provides some test cases, including both 3 and 5 and greater
# numbers.  A number less than 3 might be worth considering, as well.  The
# problem stipulates that the input will be a positive integer so there is no
# need for considerations for invalid input.

# DATA STRUCTURE:
# The input will be a positive integer and the output will be a positive
# integer.  Arrays will be used for the collections of numbers divisible by 3
# and 5.

# ALOGORITHM:
# Create an empty array, then create a loop that starts at 0, adds 3, and pushes
# that number into the array, until the total number is greater than the input
# number.
# Create a second array and a loop that does the same thing, but with 5's.
# Merge the arrays and eliminate all dupicate values.
# Return the sum of the values in the final array.

def threes(number)
  threes_array = []
  new_number = 0
  loop do
    threes_array << new_number
    new_number = new_number += 3
    break if new_number > number
  end

  threes_array
end

def fives(num)
  fives_array = []
  new_num = 0
  loop do
    fives_array << new_num
    new_num = new_num += 5
    break if new_num > num
  end

  fives_array
end

def multisum(n)
  threes_and_fives = fives(n) | threes(n)
  threes_and_fives.sum
end

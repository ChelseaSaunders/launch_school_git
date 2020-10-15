# Problem:

# Write a method that searches for all multiples of 3 or 5 that lie between 1
# and some other number, and then computes the sum of those multiples. For
# instance, if the supplied number is 20, the result should be 98
# (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

# You may assume that the number passed in is an integer greater than 1.

# Examples/test cases:
# The problem provides some test cases, including both 3 and 5 and greater
# numbers.  A number less than 3 might be worth considering, as well.  The
# problem stipulates that the input will be a positive integer so there is no
# need for considerations for invalid input.

# Data structure:
# The input will be a positive integer and the output will be a positive
# integer.

# Alogorithm:
#

def sum_of_threes(number)
  threes_array = []
  new_number = 0
  loop do
    threes_array << new_number
    new_number = new_number += 3
    break if new_number > number
  end

  threes_array
end

def sum_of_fives(num)
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
  threes_and_fives = sum_of_fives(n) | sum_of_threes(n)
  threes_and_fives.sum
end

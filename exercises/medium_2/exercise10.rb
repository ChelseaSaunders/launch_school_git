# Write a method that computes the difference between the square of the sum of
# the first n positive integers and the sum of the squares of the first n
# positive integers.

# PROBLEM:
#   Input:
#   Output:
#   Rules:
#     Explicit:
#     Implicit:

# EXAMPLES/TEST CASES:

# DATA:

# ALOGORITHM:
# - create method sum_square_difference that takes one integer as argument
# -create an array with a range of the numbers from 1 to input number
# - perform a sum of the array and square that number
# - iterate through the array and square each number, then add each of those
# numbers together
# - subtract the second number from the first

# CODE:

def sum_square_difference(num)
  array = (1..num).to_a
  (array.sum**2) - (array.map { |n| n**2 }.sum)
end

p sum_square_difference(3) == 22
# -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150

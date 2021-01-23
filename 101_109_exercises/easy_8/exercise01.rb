# Write a method that takes an Array of numbers and then returns the sum of the
# sums of each leading subsequence for that Array. You may assume that the Array
# always contains at least one number.

# PROBLEM:
#   Input: one array of integers
#   Output: sum of a is a series of sums of each element plus previous elements
#           *note* output is NOT an array, but a mathematical equasion
#   Rules:
#     Explicit: -
#               - Array will not be empty
#     Implicit: - Given the context of the problem I think it is safe to assume
#                 the array will only contain integers and we doo not need to
#                 validate input

# EXAMPLES/TEST CASES:
# Provided.  Examples include arrays of differing lengths but do not include
# arrays with zero or negative integers; while those should not impact the
# output, I will add test cases with them in case they create any unusual edge
# case response.

# DATA:
# Input is array, out put is sum of numbers

# ALOGORITHM:
# I will create a value _sum_ that is equal to the

# CODE:

def sum_of_sums(num_array)
  new_array = []
  counter = 0

  num_array.length.times do
    new_array[counter] = num_array[0..counter].sum
    counter += 1
  end

  new_array.sum
end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35
p sum_of_sums([1, 5, -10, 8]) == (1) + (1 + 5) + (1 + 5 + -10) + (1 + 5 + -10 + 8)
p sum_of_sums([3, 0, 9]) == (3) + (3 + 0) + (3 + 0 + 9)
p sum_of_sums([5, 0, -17]) == (5) + (5 + 0) + (5 + 0 + -17)

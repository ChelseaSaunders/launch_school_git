# Write a method that takes two Array arguments in which each Array contains a
# list of numbers, and returns a new Array that contains the product of every
# pair of numbers that can be formed between the elements of the two Arrays.
# The results should be sorted by increasing value.

# You may assume that neither argument is an empty Array.

# PROBLEM:
#   Input: two arrays of number lists
#   Output: single array that is the product of each element in one array
#           multiplied by each element in the other array
#   Rules:
#     Explicit: - multiply each element from first input array with each
#                 element from the second input array
#
#               - assume no arrays are empty
#     Implicit: - given the context of the problem, I think it is safe to assume
#                 input arrays will only contain integers

# EXAMPLES/TEST CASES:
# Provided.

# DATA:

# ALOGORITHM:

# CODE:

def multiply_all_pairs(arr1, arr2)
  multiplied_array = []


  multiplied_array.compact.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) # == [2, 4, 4, 6, 8, 8, 12, 16]
p multiply_all_pairs([4, 3, 1, 2], [2, 4]) # == [2, 4, 4, 6, 8, 8, 12, 16]

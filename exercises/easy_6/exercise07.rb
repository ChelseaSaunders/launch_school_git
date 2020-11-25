# Write a method that takes an Array as an argument, and returns two Arrays
# (as a pair of nested Arrays) that contain the first half and second half of
# the original Array, respectively. If the original array contains an odd
# number of elements, the middle element should be placed in the first half
# Array.

# PROBLEM:
#   Input: array
#   Output: array of 2 arrays; first array is first half or half + 1 of input
#           array; second array is second half of input array
#   Rules:
#     Explicit:
#     Implicit:
#       Not specified whether output should be modified original array or new
#       array; going to return new array

# EXAMPLES/TEST CASES:
#   Provided.  Includes empty array, array with one element, array with even
#   number of elements and an array with an odd number of elements.

# DATA:
# Input is array and output is array of arrays.

# ALOGORITHM:
# - I will create a method, halvsies that takes one array as an argument.
# - I will create a variable first_half and assign it to the value of the length
#   of the array divided by float 2, and add one if the value has a remainder/
#   decimals
# - I will then assign a variable second_half to the value of the length of the
#   array divided by the integer two
# - I will create an array, ary1 and assign it to the value of the input
#   array's first_half number of values
# - I will create an array ary2 and assign it to the value of the input
#   array's second_half number of values, beginning where ary1 left off
# - I will create a new array split_array and assign it two elements, ary1 and
#   ary 2
# - I will return split_array

# CODE:

def halvsies(array)
  first_half = (array.length / 2.0).ceil

  second_half = array.length / 2

  arr1 = array.slice(0, first_half)
  arr2 = array.slice(first_half, second_half)

  split_array = [arr1, arr2]
  split_array
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]

# Write a method that takes an Array of numbers, and returns an Array with the
# same number of elements, and each element has the running total from the
# original Array.

# PROBLEM:
#   Input: Array of numbers
#   Output: Array of numbers
#   Rules:
#     Explicit: Each element of the array should be modified to be the sum of
#     the original element and all previous elements.
#     Implicit: It is not clear whether the original array must be modified or
#     whether a new array with the new values should be returned, would need to
#     clarify in interview.

# EXAMPLES/TEST CASES:
# Examples provided, include only positive numbers, as well as an empty array,
# and an array with only one number.
# Given the context of this assignment, I am assuming we only need to account
# for positive integers, but in an intervew it would be worth asking whether we
# need too account for floats and/or negative numbers. If we only need to
# account for positive numbers, the provided test cases seem adequate.

# DATA:
# Array of integers

# ALOGORITHM:
# I will create a method that takes an array of integers as an argument, then
# iterate through the array to replace each value with the sum of the original
# element with the newly-created element positioned before it, and return the
# modified array.

# CODE:

def running_total(array)
  total = 0
  array.map! { |element| total += element }
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []

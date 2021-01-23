# Given an unordered array and the information that exactly one value in the
# array occurs twice (every other value occurs exactly once), how would you
# determine which value occurs twice? Write a method that will find and return
# the duplicate value that is known to be in the array.

# PROBLEM:
#   Input: array with exactly one dupicate value it its collection of elements
#   Output: the value that occurs twice
#   Rules:
#     Explicit:
#     Implicit:

# EXAMPLES/TEST CASES:
#   Provided.  Given costraints I believe it is safe to assume valid input. Test
#   samples provided only include arrays of integers so I will create a test
#   case with an array of strings to ensure there is no integer-specific method
#   at play in my solution

# DATA:
#   Input is integer, output is element from integer (could be any object that
#   could be found in an array)

# ALOGORITHM:
# - I will create a method find_dup that takes one array as an argument
# - I will sort the array (so that any duplicate values will be consecutive) and
#   assign it to the value sorted_array
# - I will create an empty variable unique
# - I will iterate through the sorted_array using elements and indexes and
#   assign the element value to the unique variable if the element value matches
#   the subsequent value in the sorted array.
# - I will return the unique value

# CODE:

def find_dup(array)
  sorted_array = array.sort
  unique = nil
  sorted_array.each_with_index do |element, index|
    unique = element if element == sorted_array[index + 1]
  end

  unique
end

p find_dup([1, 5, 3, 1]) == 1
p find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
          38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
          14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
          78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
          89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
          41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
          55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
          85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
          40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
          7,  34, 57, 74, 45, 11, 88, 67,  5, 58]) == 73

p find_dup(%w(a b a)) == 'a'

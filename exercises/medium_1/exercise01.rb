# Write a method that rotates an array by moving the first element to the end
# of the array. The original array should not be modified.

# Do not use the method Array#rotate or Array#rotate! for your implementation.

# PROBLEM:
#   Input: array
#   Output: new array with same elements input array except first element in
#           input array is last element in new array
#   Rules:
#     Explicit:
#     Implicit:

# EXAMPLES/TEST CASES:

# DATA:

# ALOGORITHM:
# create method, rotate_array that takes one array as input
# create new empty array, rotated_array
# push all elements but the first from the input array intorotated_array
# push the first element from the input array rotated_array
# return rotated_array

# CODE:

def rotate_array(array)
  rotated_array = []
  if array.length == 1
    rotated_array << array[0]
  else
    rotated_array << array[1..-1]
    rotated_array << array[0]
  end

  rotated_array.flatten
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true
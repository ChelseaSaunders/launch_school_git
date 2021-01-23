# Write a method that takes an Array, and returns a new Array with the elements
# of the original list in reverse order. Do not modify the original list.

# You may not use Array#reverse or Array#reverse!, nor may you use the method
# you wrote in the previous exercise.

# PROBLEM:
#   Input: Array
#   Output: New array with same elements from original array but in reverse
#           order
#   Rules:
#     Explicit:
#     - Cannot use .reverse or .reverse!
#     - Return array must be new object
#     - Original/input array must not be modified
#     - Return array must contain all of the same elements as input array but
#       in reverse order
#     Implicit:

# EXAMPLES/TEST CASES:
#   Provided. Include tests to determine whether return is new object and
#   whether original object has been modified, in addition to determining that
#   the contents of the returned array meets the problem rules.

# DATA:
#   The input is an array and the output is an array. The tools necessary to
#   solve the problem are available in the array class so there is no need for
#   additional classes.

# ALOGORITHM:
# - I will create method, reverse, that takes one array as an argument.
# - I will create an empty array, reversed_array, and set a counter to -1.
# - I will create a loop that executes as many times as the array is long and
#   pushes the value of the original array with the counter index position into
#   the reversed_array and then subtracts one from the counter value
# - I will return the reversed_array

# CODE:

def reverse(array)
  reversed_array = []
  counter = -1

  array.length.times do
    reversed_array << array[counter]
    counter -= 1
  end

  reversed_array
end

p reverse([1, 2, 3, 4]) == [4, 3, 2, 1]    # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

p list = [1, 3, 2]                      # => [1, 3, 2]
p new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true

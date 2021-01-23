# Write a method that takes an Array as an argument, and reverses its elements
# in place; that is, mutate the Array passed into this method. The return value
# should be the same Array object.

# You may not use Array#reverse or Array#reverse!.

# PROBLEM:
#   Input: array
#   Output: same array object but items reversed
#   Rules:
#     Explicit:
#       - Must return the same array object
#       - Order of elements must be reversed
#       - May not use reverse method
#     Implicit:

# EXAMPLES/TEST CASES:
#   Provided, includes arrays of strings and arrays of integers, arrays of
#   different lengths, and an empty array.  I do not see any edge cases not
#   included in the test set and do not believe we need to validate input.

# DATA:
#   Input is array, output is array, modifications can be done within array
#   class

# ALOGORITHM:
# I will create a method reverse! that takes one array as an argument.
# I will create an empty array reversed_array.
# I will create a loop that removes the last element of the input array and
# pushes it into the reversed_array.
# I will then iterate through the reversed array and push the elements, in order
# back into the original input array
# I will return the input array

# CODE:

def reverse!(array)
  array.object_id
  reverse_array = []
  array.length.times do
    last = array.pop
    reverse_array << last
  end

  reverse_array.length.times do
    first = reverse_array.shift
    array << first
  end

  array
end

list = [1, 2, 3, 4]
result = reverse!(list)
p result == [4, 3, 2, 1]
p list == [4, 3, 2, 1]
p list.object_id == result.object_id

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"]
p list == ["c", "d", "e", "b", "a"]

list = ['abc']
p reverse!(list) == ["abc"]
p list == ["abc"]

list = []
p reverse!(list) == []
p list == []

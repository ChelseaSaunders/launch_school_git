# Write a method that takes two Array arguments in which each Array contains a
# list of numbers, and returns a new Array that contains the product of each
# pair of numbers from the arguments that have the same index. You may assume
# that the arguments contain the same number of elements.

# PROBLEM:
#   Input:
#   Output:
#   Rules:
#     Explicit:
#     Implicit:

# EXAMPLES/TEST CASES:

# DATA:

# ALOGORITHM:

# CODE:

def multiply_list(arr1, arr2)
  multiplied_array = []
  arr1.each_with_index do |num, index|
    multiplied_array << num * arr2[index]
  end

  multiplied_array
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

def multiply_list_2(arr1, arr2)
  arr1.zip(arr2).map { |arr| arr.reduce(:*) }
end

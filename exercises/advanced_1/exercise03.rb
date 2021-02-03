# A 3 x 3 matrix can be represented by an Array of Arrays in which the main
# Array and all of the sub-Arrays has 3 elements. For example:

# 1  5  8
# 4  7  2
# 3  9  6

# can be described by the Array of Arrays:

# matrix = [
#   [1, 5, 8],
#   [4, 7, 2],
#   [3, 9, 6]
# ]

# The transpose of a 3 x 3 matrix is the matrix that results from exchanging the
# columns and rows of the original matrix. For example, the transposition of the
# array shown above is:

# 1  4  3
# 5  7  9
# 8  2  6

# Write a method that takes a 3 x 3 matrix in Array of Arrays format and returns
# the transpose of the original matrix. Note that there is a Array#transpose
# method that does this -- you may not use it for this exercise. You also are
# not allowed to use the Matrix class from the standard library. Your task is to
# do this yourself.

# Take care not to modify the original matrix: you must produce a new matrix and
# leave the original matrix unchanged.

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

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

def transpose(array)
  new_array = [[], [], []]
  array.each do |subarr|
    subarr.each_with_index { |num, index| new_array[index] << num }
  end

  new_array
end

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]

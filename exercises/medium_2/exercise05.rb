# A triangle is classified as follows:

# equilateral All 3 sides are of equal length
# isosceles 2 sides are of equal length, while the 3rd is different
# scalene All 3 sides are of different length
# To be a valid triangle, the sum of the lengths of the two shortest sides must
# be greater than the length of the longest side, and all sides must have
# lengths greater than 0: if either of these conditions is not satisfied, the
# triangle is invalid.

# Write a method that takes the lengths of the 3 sides of a triangle as
# arguments, and returns a symbol :equilateral, :isosceles, :scalene, or
# :invalid depending on whether the triangle is equilateral, isosceles, scalene,
# or invalid.

# PROBLEM:
#   Input: three numbers
#   Output: symbol (:equilateral, :isosceles, :scalene, or :invalid)
#   Rules:
#     Explicit:
#       - If input <= 0, return :invalid
#       - If two shortest sides added together <= longest side, return
#         :invalid
#       - If all input integers are the same return :equilateral
#       - If 2 input integers are the same and one is differet, return
#         :isosceles
#       - If all three input integers are different, return :scalene
#     Implicit:

# EXAMPLES/TEST CASES:

# DATA:
# Input is number, could be integer or float, output is symbol.

# ALOGORITHM:
# - create method _triangle_ that takes 3 numbers as arguments
# - create array with each argument as an element; sort array so lowest
#   valyes are first elements
# - determine if first element in array (shortest length) is <= 0 and
#   return invalid if it is
# - determine the sum of the first two elements in the array; if the sum
#   is <= the last element in the array, return invalid
# - determine if all 3 sides are equal, if so return :equliateral
# - determine if only 2 sides are equal, if so return :iscoles
# - determine if none of the 3 sides are equal, if so, return :scalene

# CODE:

# rubocop:disable Metrics/CyclomaticComplexity, Metrics/PerceivedComplexity
def triangle(num1, num2, num3)
  num_array = [num1, num2, num3].sort

  return :invalid if num_array[0] <= 0

  return :invalid if num_array[0] + num_array[1] <= num_array[2]

  if num1 == num2 && num2 == num3
    :equilateral
  elsif num1 == num2 || num2 == num3 || num3 == num1
    :isosceles
  else
    :scalene
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid

# rubocop:enable Metrics/CyclomaticComplexity, Metrics/PerceivedComplexity

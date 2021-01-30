# A triangle is classified as follows:

# right One angle of the triangle is a right angle (90 degrees)
# acute All 3 angles of the triangle are less than 90 degrees
# obtuse One angle is greater than 90 degrees.
# To be a valid triangle, the sum of the angles must be exactly 180 degrees,
# and all angles must be greater than 0: if either of these conditions is not
# satisfied, the triangle is invalid.

# Write a method that takes the 3 angles of a triangle as arguments, and returns
# a symbol :right, :acute, :obtuse, or :invalid depending on whether the
# triangle is a right, acute, obtuse, or invalid triangle.

# You may assume integer valued angles so you don't have to worry about floating
# point errors. You may also assume that the arguments are specified in degrees.

# PROBLEM:
#   Input: 3 integers (angles)
#   Output: :right, :acute, :obtuse
#   Rules:
#     Explicit:
#     - Sum of all angles == 180 (if not return :invalid)
#     - all angles must be > 0 (if not, return :invalid)
#     - if one angle is 90 degrees, reurn :right
#     - if one angle is > 90 degrees, return :obtuse
#     - if all angles are less than 90 degrees, return :acute

#     Implicit:

# EXAMPLES/TEST CASES:

# DATA:
# - Input is integer, output are symbols, will use array to sort and
#   iterate through data

# ALOGORITHM:
# - Create method triangle, which takes 3 intgers are arguments
# - create array _angles_ with each input integer as an element
# - sort array
# - determine if first element (lowest value) in array is > 0; if not,
#   return :invalid
# - obtain the sum of all elements in the array and return invalid if != 180
# - determine if the last (largest) element == 90; if so return :right
# - determine if the last(largest) element is > 90; if so, return :obtuse
# - determine if the last (largest) element is <90; if so return :acute

# CODE:
def triangle(num1, num2, num3)
  angles = [num1, num2, num3].sort
  return :invalid if angles.sum != 180 || angles[0] <= 0

  if angles[2] == 90
    :right
  elsif angles[2] > 90
    :obtuse
  else
    :acute
  end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid

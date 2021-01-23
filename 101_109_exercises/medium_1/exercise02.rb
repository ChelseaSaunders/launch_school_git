# Write a method that can rotate the last n digits of a number.

# PROBLEM:
#   Input: integer, integer representing number of digits to rotate(rotations)
#   Output: integer with number of digits rotated corresponding to second inuput
#   Rules:
#     Explicit:
#     Implicit:

# EXAMPLES/TEST CASES:
# Worth asking whether we have to validate input, particuluarly if we have to
# validate whether rotations number is shorter than length of number

# DATA:

# ALOGORITHM:


# CODE:

def rotate_rightmost_digits(num, rotations)
  number_array = num.to_s.split("")
  rotation_num = number_array.delete_at(-rotations)
  number_array << rotation_num
  number_array.join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917

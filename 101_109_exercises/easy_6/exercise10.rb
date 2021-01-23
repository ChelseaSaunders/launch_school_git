# Write a method that takes a positive integer, n, as an argument, and displays
# a right triangle whose sides each have n stars. The hypotenuse of the
# triangle (the diagonal side in the images below) should have one end at the
# lower-left of the triangle, and the other end at the upper-right.

# PROBLEM:
#   Input: integer
#   Output:* triangle (see example)
#   Rules:
#     Explicit:
#     Implicit:

# EXAMPLES/TEST CASES:
# Provided. I will create an even-number variable since both test cases are odd
# I do not believe we need to validate input given the context of the problem.

# DATA:

# ALOGORITHM:

# CODE

def triangle(value)
  star_value = 1
  space_value = value - 1

  value.times do
    puts "#{' ' * space_value}#{'*' * star_value}"
    star_value += 1
    space_value -= 1
  end
end

triangle(2)

triangle(5)

#     *
#    **
#   ***
#  ****
# *****

triangle(9)

#         *
#        **
#       ***
#      ****
#     *****
#    ******
#   *******
#  ********
# *********

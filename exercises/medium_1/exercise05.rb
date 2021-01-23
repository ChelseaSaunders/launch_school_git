# Write a method that displays a 4-pointed diamond in an n x n grid, where n is
# an odd integer that is supplied as an argument to the method. You may assume
# that the argument will always be an odd integer.

# PROBLEM:
#   Input: odd integer
#   Output: display of 4 pointed diamond
#   Rules:
#     Explicit:
#     Implicit:
# =>  n chars long
#     n many rows
# =>  center row has n stars
# =>  first and last rows have 1 star


# EXAMPLES/TEST CASES:

# DATA:

# ALOGORITHM:
# create method diamond that takes one odd integer, num as input
# execute a pattern num times
# pattern is

# CODE:

def diamond(num)
  counter = 1
  loop do
    spaces = (num - counter)/2
    puts "#{' ' * spaces}#{'*' * counter}"
    counter += 2
    break if counter > num
  end

  counter2 = num.clone - 2
  loop do
    break if counter2 < 1
    spaces = (num - counter2)/2
    puts "#{' ' * spaces}#{'*' * counter2}"
    counter2 -= 2
  end
end


diamond(1)

# *

diamond(3)

#  *
# ***
#  *

diamond(9)

#     *
#    ***
#   *****
#  *******
# *********
#  *******
#   *****
#    ***
#     *



def print_row(grid_size, distance_from_center)
  number_of_stars = grid_size - 2 * distance_from_center
  stars = '*' * number_of_stars
  puts stars.center(grid_size)
end

def diamond(grid_size)
  max_distance = (grid_size - 1) / 2
  max_distance.downto(0) { |distance| print_row(grid_size, distance) }
  1.upto(max_distance)   { |distance| print_row(grid_size, distance) }
end

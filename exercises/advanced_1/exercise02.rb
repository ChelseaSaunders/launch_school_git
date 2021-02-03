# Write a method that displays an 8-pointed star in an nxn grid, where n is an
# odd integer that is supplied as an argument to the method. The smallest such
# star you need to handle is a 7x7 grid.

# PROBLEM:
#   Input: integer >= 7
#   Output: printed star
#   Rules:
#     Explicit:
#     Implicit: odd numbers only ?
#               3 sections: descending 3 * getting closer together
#               num, num length *
#               icreasing 3 * gettin farther apart

# EXAMPLES/TEST CASES:

# DATA:

# ALOGORITHM:
# - create method, star which takes one odd integer, n, as Input
# - create loop which prints 3 stars n / 2 times, with spaces
# intersperced evenly such that each time the stars are closer
# together until they are perfectly centered and next to each other
# - print row with n stars, no spaces
# - create loop that executes n / times and does the reverse of what
# the first loop did

# CODE:

def star(n)
  beginning = 0
  middle = n / 3

  (n / 2).times do
    puts "#{' ' * beginning}*#{' ' * middle}*#{' ' * middle}*"
    beginning += 1
    middle -= 1
  end
  puts '*' * n

  (n / 2).times do
    beginning -= 1
    middle += 1
    puts "#{' ' * beginning}*#{' ' * middle}*#{' ' * middle}*"
  end
end

star(7)

# *  *  *
#  * * *
#   ***
# *******
#   ***
#  * * *
# *  *  *

star(9)

# *   *   *
#  *  *  *
#   * * *
#    ***
# *********
#    ***
#   * * *
#  *  *  *
# *   *   *

# Write a method that takes an integer argument, and returns an Array of all
# integers, in sequence, between 1 and the argument.

# You may assume that the argument will always be a valid integer that is
# greater than 0.

# PROBLEM:
#   Input: integer > 0
#   Output: array of all integers between 1 and input integer

#   Rules:
#     Explicit:
#     Implicit: integers is the numbers will appear in order

# EXAMPLES/TEST CASES:

# DATA:

# ALOGORITHM:

# create a method sequence that takes one positive integer as an argument
# set counter to 1
# create empty array called numbers
# create a loop that executes input times
# push counter into array
# add one to counter
# end loop
# return the numbers array

# CODE:

def sequence(num)
  num < 1 ? (num..1).to_a : (1..num).to_a
  # array = []
  # if num < 1
  #   array = (num..1).to_a
  # else
  #   array = (1..num).to_a
  # end
  # array
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]
p sequence(-3) == [-3, -2, -1, 0, 1]
p sequence(0) == [0, 1]
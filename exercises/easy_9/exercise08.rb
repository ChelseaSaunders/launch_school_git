# Create a method that takes two integers as arguments. The first argument is a
# count, and the second is the first number of a sequence that your method will
# create. The method should return an Array that contains the same number of
# elements as the count argument, while the values of each element will be
# multiples of the starting number.

# You may assume that the count argument will always have a value of 0 or
# greater, while the starting number can be any integer value. If the count is
# 0, an empty list should be returned.

# PROBLEM:
#   Input: two intgers (firts is count) (second is first number in sequence)
#   Output: array (total num of elements == count/first input number, values =
#   multiples of starting number/second input number)

#   Rules:
#     Explicit:
#     Implicit: *1 * 2 * 3

# EXAMPLES/TEST CASES:

# DATA:

# # ALOGORITHM:
# create a method, sequence, that takes two integers as argument (first integer
# will always be 0 greater)
# create an empty array, numbers
# create counter, set to 1
# create a loop that executes the count(first input) times
# each iteration of the loop, i will multiply the second input by by counter and
# push that value to the numbers array
# add one to the counter
# return the numbers array

# CODE:

def sequence(count, first_num)
  numbers = []
  counter = 1
  count.times do
    numbers << first_num * counter
    counter += 1
  end

  numbers
end

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []

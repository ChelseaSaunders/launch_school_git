# Write a method that takes one argument, a positive integer, and returns the
# sum of its digits.

# Test cases:
# The problem provides the following test cases: 23, 496, and 123_456_789.
# Other edge cases could include how to handle arguments that are not positive
# integers, however given the context of this problem I suspect that is not
# part of the expected solution.

# Data structure:
# The input and output must both be positive integers.  However, in order to
# manipulate the input so as to separate each digit/charachter, a string would
# be most helpful, and an array would be most useful for generating a sum of
# all digits.

# Alogorithm:
# I must convert the input integer to a string, using the .to_s method, then
# use the .split method, with '' as an argument, to create an array with each
# isolated character/digit.  I will place this array in a variable called
# "array" then I will iterate thruogh the array using the .map! method and
# invoke the a block with the .to_i method, to permenantly change each element
# in the array back into an integer.  Then I will use the .reduce method with
# :+ as an argument to add each element of the array together, and I will
# assign this to the new variable "total". I will then return "total" so that
# the method returns the total. 

def sum(num)
  array = num.to_s.split('')
  array.map! { |n| n.to_i }
  total = array.reduce(:+)
  total
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

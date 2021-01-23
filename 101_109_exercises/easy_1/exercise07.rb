# Write a method that takes one argument, a positive integer, and returns a
# string of alternating 1s and 0s, always starting with 1. The length of the
# string should match the given integer.

# Examples/test cases:
# The problem supplied test cases which seem adequate to test the method. The
# only edge cases I could see would be instances where the argument is not a
# positive integer and coding for that seems outside of the intended scope of
# the problem.

# Data structure:
# The input is an integer and the output is a string.

# Alogorithm:
# I will create a method with one argument.  I will create a variable called
# "string" and leave a string with no content (''). Then I will set a counter
# that alternatively addss '1' and '0' to the variable "string", while
# increasing the counter value by 1 with each block.  Following each addition
# to the counter, I will put a break in for if the counter equals the integer
# that was given as an argument to the method.  Outside of the loop, I will
# return the variable "string" which will include the full string of integers
# created in the loop.

def stringy(num)
  counter = 0
  string = ''
  loop do
    string << '1'
    counter += 1
    break if counter == num
    string << '0'
    counter += 1
    break if counter == num
  end
  string
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

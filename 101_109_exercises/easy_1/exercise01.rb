# Write a method that takes two arguments, a string and a positive integer,
# and prints the string as many times as the integer indicates.

# Examples/test cases:
# Problem gives 'Hello', 3 as a test case.  A future test case would be to
# consider what would happen if a negative intger was used, or something other
# than a string and integer were entered in those two positions, however given
# the current level of this problem, I suspect that accounting for that isn't
# expected.

# Data structure:
# A method that takes two arguments, a string and an integer.

# Alogorithm:
# Create a loop with a counter that prints the string until the counter reaches
# the number in the second argument.

def repeat(string, integer)
  counter = 0
  loop do
    puts string
    counter += 1
    break if counter == integer
  end
end

repeat('hello', 3)

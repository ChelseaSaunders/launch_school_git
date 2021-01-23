# Print all odd numbers from 1 to 99, inclusive. All numbers should be printed
# on separate lines.

# Test cases/examples:
# The data set is limited within the context of the question to 1-99.

# Data structure:
# The input is integers, which must be assigned to an array (as integers) in
# order to iterate through the data.

# Alogorithm:
# I will create an array with the range of 1-99 and assign it to the varaible
# numbers. I will then use .each to iterate through the array with a block
# containing an if/else statement that puts each number if n % 2 is 1, which
# means it is an odd number.

numbers = (1..99).to_a

numbers.each do |n|
  puts n if n % 2 == 1
end

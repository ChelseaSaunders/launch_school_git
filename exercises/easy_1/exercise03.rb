# Write a method that takes one argument, a positive integer, and returns a list 
# of the digits in the number.

# Examples/test cases:
# The problem provides the following test cases: 12345, 7, 375290, 444.  In a 
# more complicated program, it would be useful to create an exception for arguments
# other than positive integers.

# Data structure
# The input is an integer, but converting to a string will be helpful since the 
# the .split method can be applied to a string, which will create an array for
# each character.

# Alogrythm
# Since both the input and output must be integers, but the method I want to use
# applies only to strings, I must convert the integer to a string, perform the 
# split method, and then convert the strings back into integers. However the 
# output of the .split method is an array, rather than a single string, so I must
# invoke the .map! method to apply the .to_i block to permenantly alter each 
# element into the array back into an integer.


def digit_lists(num)
  string = num.to_s
  array = string.split(//)
  array.map!{ |num| num.to_i }
end

puts digit_lists(12345) == [1, 2, 3, 4, 5]
puts digit_lists(7) == [7]
puts digit_lists(375290) == [3, 7, 5, 2, 9, 0]
puts digit_lists(444) == [4, 4, 4]
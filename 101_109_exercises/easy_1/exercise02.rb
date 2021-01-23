# Write a method that takes one integer argument, which may be positive,
# negative, or zero. This method returns true if the number's absolute value is
# odd. You may assume that the argument is a valid integer value.

# Edge/test cases:
# 2, 5, -17, -8, 0, and 7 are supplied. In a more complicated program, it would
# be worth creating an exception for cases where there was input other than an
# integer.

# Data structure:
# A method that takes one argument, an integer

# Alogorithm:
# Create a method with one argument and use mudalo 2 to determine whether the
# the result is 1, since a negative number divided by two will always have a
# remainder of 1.  If the result is 1, the alogrithm should return true.

def is_odd?(num)
  num % 2 == 1
end

puts is_odd?(2)
puts is_odd?(5)
puts is_odd?(-17)
puts is_odd?(-8)
puts is_odd?(0)
puts is_odd?(7)

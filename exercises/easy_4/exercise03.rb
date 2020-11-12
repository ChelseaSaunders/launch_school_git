# In the modern era under the Gregorian Calendar, leap years occur in every
# year that is evenly divisible by 4, unless the year is also divisible by 100.
# If the year is evenly divisible by 100, then it is not a leap year unless the
# year is evenly divisible by 400.

# Assume this rule is good for any year greater than year 0. Write a method
# that takes any year greater than 0 as input, and returns true if the year is
# a leap year, or false if it is not a leap year.

# PROBLEM:
#   Input: integer
#   Output: true or false
#   Rules:
#     Explicit: Test must determine whether input integer is divisible by 4,
#       but not by 100, with no remainders, and return true for those cases,
#       false for all other cases.
#       Input will be an integer greater than zero
#       Must return true or false

# EXAMPLES/TEST CASES:
# Given the context of the program, I think I can assume valid input (positive
# integers), but if not I would want to account for invalid input.

# Test cases are supplied (see end of problem), and include numbers divisible
# by 4, numbers not divisible by 4, numbers divisible by 100 but not 400, and
# ad numbers divisible by 100 and 400, which are all the edge cases I can think
# of.

# Data structure:
# The input is an integer and the output is true or false. The operations
# necessary to determine the result are % and != and ==, all accessible to
# integers so there is no reason to convert the integer into another data type.

# Alogorithm
# I will create one method that checks if the number is divisible by 4 but not
# 100 and anoher method that checks if the number is divisible by both 100 and
# 400, and the final method that checks if both the previous methods return
# true.

# Code:

def divisible_by_4_and_not_100?(number)
  number % 4 == 0 && number % 100 != 0
end

def divisible_by_100_and_400?(num)
  (num % 100 == 0) && (num % 400 == 0)
end

def leap_year?(year)
  divisible_by_4_and_not_100?(year) || divisible_by_100_and_400?(year)
end

puts leap_year?(2016) == true
puts leap_year?(2015) == false
puts leap_year?(2100) == false
puts leap_year?(2400) == true
puts leap_year?(240000) == true
puts leap_year?(240001) == false
puts leap_year?(2000) == true
puts leap_year?(1900) == false
puts leap_year?(1752) == true
puts leap_year?(1700) == false
puts leap_year?(1) == false
puts leap_year?(100) == false
puts leap_year?(400) == true

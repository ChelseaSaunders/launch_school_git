# A continuation of the previous exercise.

# The British Empire adopted the Gregorian Calendar in 1752, which was a leap
# year. Prior to 1752, the Julian Calendar was used. Under the Julian
# Calendar, leap years occur in any year that is evenly divisible by 4.

# Using this information, update the method from the previous exercise to
# determine leap years both before and after 1752.

# PROBLEM:
#   Input: Integer greater than zero
#   Output: True or false
#   Rules:
#     Explicit: Prior to 1752, test must determine whether input integer is
#     divisible by 4, but not by 100, with no remainders, and return true for
#     those cases, false for all other cases.After 1752, test must determine
#     only whether a number is divisible by 4 and return true for those cases,
#     false for all other cases.
#     Input will be an integer greater than zero
#     Must return true or false

# EXAMPLES/TEST CASES:
# We are provided with test cases, and they include cases before 1752 that are
# divisible by 100 and not 400, which is the change exemplified from the
# previous problem. I do not see any additional edge cases not accounted for
# in the provided test cases.

# ALOGORITHM:
# I will use the method from the previous exercise, and create a new method with
# an if/else statement that has one parameter set to the original method
# for years >= 1752 and one branch that is set to years < 1752 that returns true
# simply if the year is divisible by 4.

def divisible_by_4_and_not_100?(number)
  number % 4 == 0 && number % 100 != 0
end

def divisible_by_100_and_400?(num)
  (num % 100 == 0) && (num % 400 == 0)
end

def leap_year?(year)
  if year < 1752
    year % 4 == 0
  else
    divisible_by_4_and_not_100?(year) || divisible_by_100_and_400?(year)
  end
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
puts leap_year?(1700) == true
puts leap_year?(1) == false
puts leap_year?(100) == true
puts leap_year?(400) == true

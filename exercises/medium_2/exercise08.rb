# A featured number (something unique to this exercise) is an odd number that is
# a multiple of 7, and whose digits occur exactly once each. So, for example, 49
# is a featured number, but 98 is not (it is not odd), 97 is not (it is not a
# multiple of 7), and 133 is not (the digit 3 appears twice).

# Write a method that takes a single integer as an argument, and returns the
# next featured number that is greater than the argument. Return an error
# message if there is no next featured number.

# PROBLEM:
#   Input: integer
#   Output: integer
#   Rules:
#     Explicit:
#     Implicit:

# EXAMPLES/TEST CASES:

# DATA:

# ALOGORITHM:

# - create method featured that takes one integer as an argument.
# - in method create loop
# - in loop, test if next number is divisible by 7--if not, add one to number
#   and go to next iteration, if so, continue through loop conditions
# - then check if number is odd, if not, add one to number and, go to next
#   iteration, if so, continue through loop conditions
# - then convert number to string and see if any numbers repeat, (might need
#   sub-method) if not, add one to number and go to next iteration, if so,
#   break from loop
#
# - return number

def unique_digits(num)
  array = []
  string_num = num.to_s
  string_num.each_char do |char|
    return false if array.include? char
    array << char
  end
  true
end

def featured(num)
  next_num = num.clone

  loop do
    break if next_num >= 9876543210

    next_num += 1
    break if next_num.odd? && next_num % 7 == 0 && unique_digits(next_num)
  end

  # rubocop:disable Layout/LineLength

  next_num >= 9876543210 ? "There is no possible number that fulfills those requirements" : next_num

  # rubocop:enable Layout/LineLength
end

# CODE:

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

p featured(9_999_999_999)
# -> There is no possible number that fulfills those requirements

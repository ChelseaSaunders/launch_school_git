# Write a method that returns the number of Friday the 13ths in the year given
# by an argument. You may assume that the year is greater than 1752 (when the
# United Kingdom adopted the modern Gregorian Calendar) and that it will remain
# in use for the foreseeable future.

# PROBLEM:
#   Input: year
#   Output: integer; number of friday the 13ths
#   Rules:
#     Explicit:
#     - uses gregorian calandar
#     - must return the number of fridays that fall on the 13th in that year
#     Implicit:

# EXAMPLES/TEST CASES:

# DATA:
# input is integer; will use date class for calculations and integers for output

# ALOGORITHM:
# - create method friday_13th that takes one integer (matching a gorgeon year)
#   as an argument
# - create variable total_friday_13ths and assign it to zero
# - create a month variable, assign it to 1
# - create a loop and iterate through dates with the input integer as the year,
#   the month variable as the month, and 13 as the day
# - on each iteration, check if the day is Friday; if so add one to the
#  total_friday_13th variable, if not go to the next iteration
# - at the end of each iteration add one to the month, and check a break
#   condition if month > 12
# - return the total_friday_13th value

# CODE:
require "date"

def friday_13th(year)
  total_friday_13ths = 0
  month = 1

  loop do
    total_friday_13ths += 1 if Date.new(year, month, 13).friday?
    month += 1
    break if month > 12
  end

  total_friday_13thsrrubo
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2

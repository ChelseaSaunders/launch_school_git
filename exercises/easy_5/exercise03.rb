# As seen in the previous exercise, the time of day can be represented as the
# number of minutes before or after midnight. If the number of minutes is
# positive, the time is after midnight. If the number of minutes is negative,
# the time is before midnight.

# Write two methods that each take a time of day in 24 hour format, and return
# the number of minutes before and after midnight, respectively. Both methods
# should return a value in the range 0..1439.

# You may not use ruby's Date and Time methods.

# PROBLEM:
#   Input: string representation of 24 hour clock
#   Output: integers represnting minutes before and after midnight
#   Rules:
#     Explicit:
#       - Must create two methods
#       - One method must take the input and calculate how many minutes the
#         input time was before midnight
#       - The other much take the input and calculate how many minutes the input
#         time was after midnight
#       - Resulting return value from both methods should be between 0 and 1439
#         (total number of minutes in a 24 hour period)
#       - May not use Date and Time methods established in Ruby
#     Implicit:
#       - Midnight is 00:00 or 24:00

# EXAMPLES/TEST CASES:
# Provided.  Sample cases include a random time, as well as the two types of
# time values that shoudl produce 0  (00:00 and 24:00).  Given the context of
# the problem, I don't believe we need to validate input.  I believe this
# example set catches all edge cases.

# DATA:
# The input is a string and the output is an integer.  The necessary
# mathematical calculations can be done with integers so I do not see a need
# for additional data types.

# ALOGORITHM:
# Set constants for minutes per hour, hours per day, and minutes per day.
# Create method after_midnight that takes one argment, a string representation
# of a 24 hour clock.
# in the method, I will create a variable, hours, and set it to the first two
# characters in the input string converted to integers.  I will then create a
# conditional that sets the hours variable to zero if the first two charachters
# in the string are "24".
# I will then set a variable, minutes, to the last two characters in the string
# converted to integers.
# I will return the value of the hours variable multiplied by the minutes per
# hour constant, and then adding the minutes variable.

# I will then create a second method, before_midnight thattakes one argment, a
# string representation of a 24 hour clock.
# I will set a variable, total_minutes, to the value of the after_midnight
# method called on the input string.
# I will then set a minutes_before_midnight variable to the minutes per day
# constant, minus the total_minutes variable.
# I will create a conditional that assigns minutes_before_midnight to 0 it the
# total minutes is equal to zero.
# I will then return minutes_before_midnight.

# CODE:

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def after_midnight(string_clock)
  hours = string_clock[0, 2].to_i
  hours = 0 if string_clock[0, 2].to_i == 24
  minutes = string_clock[3, 2].to_i
  (hours * MINUTES_PER_HOUR) + minutes
end

def before_midnight(string)
  total_minutes = after_midnight(string)
  minutes_before_midnight = MINUTES_PER_DAY - total_minutes
  minutes_before_midnight = 0 if total_minutes == 0
  minutes_before_midnight
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0

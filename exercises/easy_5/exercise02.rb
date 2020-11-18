# The time of day can be represented as the number of minutes before or after
# midnight. If the number of minutes is positive, the time is after midnight.
# If the number of minutes is negative, the time is before midnight.

# Write a method that takes a time using this minute-based format and returns
# the time of day in 24 hour format (hh:mm). Your method should work with any
# integer input.

# You may not use ruby's Date and Time classes.

# PROBLEM:
#   Input: integer (positive, negative or zero)
#   Output: string representation of a 24 hour clock with minutes
#   Rules:
#     Explicit:
#       - Must have two digits on either side of the colon in the string
#       representation
#       - Must work with any integer input
#       - May not use Date and Time classes
#       - Integer value represents total number of minutes
#       - Positive integers are calculated as minutes afer midnight
#     Implicit:
#       - Midnight == 00:00
#       - If minutes exceed 24 hour period in either direction, must restart
#       (in other words 23:59 is max, 00:00 is min)
#       - 60 minutes in an hour

# EXAMPLES/TEST CASES:
#   Provided.  They include positive, negative, and zero input, as well as
#   inputs that exceed a 24 hour window.  Given the context of this exercise
#   I do not think we need to validate the input, so this provided test set
#   seems to include all edge cases.

# DATA:
# The input is an integer and the output is a string. Mathematical calculations
# can be done using operands and methods accessible to integers and the "0" can
# be prepended to strings when necessary for the two-digit output, so there is
# no need to use additional data types in this problem.

# ALOGORITHM:
# Create a method minutes that takes one integer as an argument. Return the
# remainder of the input integer divided by 60, as a positive number.

# Create a method hours that takes one integer as an input. Set a variable
# _hour_ to the input / 60. Create an if/else statement that re-assigns the
# hour variable to hour % 24 if the original value is greater than 23 or less
# than -23, and re-assigns the hour variable to 24 + hour if the original value
# is less than 0 and larger than -23--this is to account for negative values
# working backwards in the clock.  Return the hour variable.

# Create a method time_of_day that takes one integer as an argument. Call the
# minutes method on the input value, convert it to a string, and assign it the
# variable _mins_. Call the hours method on the input variable, convert it to
# a string, and assign it to the variable _hrs_.
# Add '0' to the beginnig of the mins string if the value is less than 10.
# Add '0' to the beginnng of the hrs string if the value is less than 10.
# Join the strings hrs, ":", and mins and return that string.

# CODE:

def minutes(number)
  number % 60
end

def hours(num)
  hour = num / 60

  if hour > 23 || hour < -23
    hour = hour % 2
  elsif hour < 0 && hour > -23
    hour = 24 + hour
  end

  hour
end

def time_of_day(integer)
  mins = minutes(integer).to_s
  hrs = hours(integer).to_s

  mins.prepend('0') if minutes(integer) < 10
  hrs.prepend('0') if hours(integer) < 10

  hrs + ':' + mins
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"
p time_of_day(3) == "00:03"
p time_of_day(-61) == "22:59"

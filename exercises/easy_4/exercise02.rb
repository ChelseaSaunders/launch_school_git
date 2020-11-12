# Write a method that takes a year as input and returns the century. The return
# value should be a string that begins with the century number, and ends with
# st, nd, rd, or th as appropriate for that number.

# New centuries begin in years that end with 01. So, the years 1901-2000
# comprise the 20th century.

# PROBLEM:
# - input: integer
# - output: string
# - rules:
#   - explicit:
#       must convert integer into string
#       output string must begin with century number
#       output string must end with appropriate suffix
#       centuries begin with 01 and end with 00
#   - implicit
# =     must have way to assign appropriate suffixes to different century values

# Examples/test cases:
# Provided, see end of code. If interview qestion should ask about validation
# for input as integers and also whether to accept negative integers.  For the
# purposes of this assignment, I am going to assume we do not need to code for
# negative ingegers or non-integer inputs.

# Data Structure
# The input will be an integer; the output will be a string.

# Alogorithm
# I will create a method that determines the appropriate string suffix (st, nd,
# etc.) based on the last digit of the century. Then I will create a method
# that takes one argument--an integer--and determines the numerical value of the
# century, by dividing the input value by 100, and adding 1, unless the input
# value is divisible by 100 (without a remainder). Inside that method, I will
# call the first method to determine the appropriate suffix, and then I will
# combine the suffix with the century number and return that value.

# CODE

def century_suffix(century)
  return 'th' if [11, 12, 13].include?(century % 100)
  last_digit = century % 10

  case last_digit
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
end

def century(year)
  century = year / 100
  century += 1 if year % 100 != 0
  century.to_s + century_suffix(century)
end

puts century(2000) == '20th'
puts century(2001) == '21st'
puts century(1965) == '20th'
puts century(256) == '3rd'
puts century(5) == '1st'
puts century(10103) == '102nd'
puts century(1052) == '11th'
puts century(1127) == '12th'
puts century(11201) == '113th'

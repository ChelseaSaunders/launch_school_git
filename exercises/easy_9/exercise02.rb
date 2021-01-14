# A double number is a number with an even number of digits whose left-side
# digits are exactly the same as its right-side digits. For example, 44, 3333,
# 103103, 7676 are all double numbers. 444, 334433, and 107 are not.

# Write a method that returns 2 times the number provided as an argument, unless
# the argument is a double number; double numbers should be returned as-is.

# PROBLEM:
#   Input: integer
#   Output: integer

#   Rules:
#     Explicit: if input is double number, return input, else return input * 2
#     Implicit:

# EXAMPLES/TEST CASES:

# DATA:

# ALOGORITHM:
# create method double_number? that takes one integer as input, returns true or
# false
# test if dn
# => convert to string
# => determine string length
# => if string length is odd return false
# => if string length is even, divide string length by two use value to compare
#     first and second half of string.
# =>    if they are equal return true, else return false

# create method twice that takes one integer as argument

# if dn retrurn input
# else retrurn input * 2


# CODE:

def double_number?(number)
  string = number.to_s
  length = number.to_s.length
  string_half = length / 2

  if length.odd?
    return false
  elsif string.slice(0, string_half) == string.slice(string_half..-1)
    return true
  end
end

def twice(num)
  if double_number?(num)
    num
  else
    num * 2
  end
end

p twice(37) == 74 #not dn
p twice(44) == 44 #dn
p twice(334433) == 668866 # not dn
p twice(444) == 888 # #not dn
p twice(107) == 214 #not dn
p twice(103103) == 103103 #dn
p twice(3333) == 3333 #dn
p twice(7676) == 7676 #dn
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789 #dn *tricky
p twice(5) == 10 #not dn

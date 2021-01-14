# Write a method that takes a number as an argument. If the argument is a
# positive number, return the negative of that number. If the number is 0 or
# negative, return the original number.

# PROBLEM:
#   Input: integer (pos, neg, or 0)
#   Output: neg (same digits) or 0

#   Rules:
#     Explicit:
#     Implicit:

# EXAMPLES/TEST CASES:

# DATA:

# ALOGORITHM:

# create method negative that takes one integer as argument
# return input intger if number is <= 0
# if input number is > 0
#   return 0 - number


# CODE:

def negative(num)
  if num <= 0
    num
  else
    0 - num
  end
end
p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby
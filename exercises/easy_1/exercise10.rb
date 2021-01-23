# Write a method that takes two arguments, a positive integer and a boolean,
# and calculates the bonus for a given salary. If the boolean is true, the
# bonus should be half of the salary. If the boolean is false, the bonus should
# be 0.

# Test cases:
# The problem supplied several test cases: (2800, true) == 1400;
# (1000, false) == 0; (50000, true) == 25000.  These cover both cases with true
# and false boolean values.  Other test cases could include instances when the
# input was sometihng other than a positive integer and boolean as the first
# and second arguments, respectively, however for the purposes of this exercise
# I assume we can solve for only the desired input types.

# Data structure:
# The inputs are an integer and a boolean respectively, and the output is an
# integer.  The operater (division), needs only to be performed on the integer,
# and the operator works on the integer, and provides an output of an integer--
# the desired output--so there is no need to alter the data structure.

# Alogorithm:
# I will create a variable "bonus" and assign it the value nil.  I will then
# create an if/else statement that divides the integer by two and assigns the
# result to the variable "bonus" if the boolean is true, and assigns 0 to the
# "bonus" variable if the boolean is not true.  Outside of the if/else
# statement, I will return "bonus" so that the method returns the result of
# the if/else.

def calculate_bonus(num, bool)
  bonus = nil
  if bool == true
    bonus = num / 2
  else
    bonus = 0
  end
  bonus
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000

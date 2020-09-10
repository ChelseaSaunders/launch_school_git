# Build a program that asks a user for the length and width of a room in meters
# and then displays the area of the room in both square meters and square feet.

# Note: 1 square meter == 10.7639 square feet

# Do not worry about validating the input at this time.

# Examples/test cases:
# Negative integers, integers with decimal points.  Given the simplicity of the
# problem I suspect we are not expected to account for negative inputs, but it
# is worth including some numbers with decimal points in the test cases.

# Data structure:
# The input will be a string, which must be converted to a float to allow for
# multiplication and decimal points. The output will be a float.

# Alogorithm:

# START

# PRINT "Enter the length of the room in meters:"

# GET length in meters.  Convert to float. SET to length.

# PRINT "Enter the width of the room in meters:"

# GET width in meters set.  Convert to float. SET to WIDTH

# Multiply length and width, SET to square_meters

# Multiply square_meters by 10.7639 SET to square_feet

# PRINT "The area of the room is square_meters square meters (square_feet square
# feet)"

# END

puts "Enter the length of the room in meters:"

length = gets.chomp.to_f

puts "Enter the width of the room in meters:"

width = gets.chomp.to_f

square_meters = length * width

square_feet = square_meters * 10.7639

puts "The are of the room is #{square_meters} square meters (#{square_feet}
 square feet)."

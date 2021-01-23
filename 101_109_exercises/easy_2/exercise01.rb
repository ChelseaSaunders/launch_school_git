# Build a program that randomly generates and prints Teddy's age. To get the
# age, you should generate a random number between 20 and 200.

# Examples/test cases:
# I can't really think of any given the strict parameters of this program. If an
# age outside of the range is returned or more than one number is returned, or
# nothing is returned, it would be problematic.

# Data structure:
# A range would be the most useful, as it can be written to include each number
# in the problem set without typing each onet, and is able to return random 
# numbers using the rand method.

# Alogrithm:
# START

# SET age = (20...200).to_a

# PRINT Teddy is age.sample years old!

# END

age = rand(20..200)

puts "Teddy is #{age} years old!"

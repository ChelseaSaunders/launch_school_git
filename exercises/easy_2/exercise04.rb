# Build a program that displays when the user will retire and how many years she
# has to work till retirement.

# Examples / test cases:
# Given the context of the current example, I don't anticipicate that it is
# necessary to solve for these, but in a real world example, one would want to
# consider non-integer input, and input where the second age is lower than or
# equal to the first age.

# Data structure:
# The user input will be a string; the date range is an integer. Since addition
# and subtraction must be performed, integers are the desired output.

# Alogorithm:
# I will prompt users for their current age and retirement age and assign each
# to a variable and use the .to_i method to change their input from a string to
# integers. I will use the Time class to call the current year and save it to a
# variable.  Then I will subtract the user's current age from their retirement
# age and assign that a variable, years_left. I will add years_left to the
# current year to get their retirement year, then generate a string calling
# the variables as instructed in the assignment.

puts "What is your age?"
age = gets.chomp.to_i

puts "At what age would you like to retire?"
retirement_age = gets.chomp.to_i

current_year = Time.new.year

years_left = retirement_age - age

retirement_year = current_year + years_left

puts "It's #{current_year}. You will retire in #{retirement_year}.
You only have #{years_left} years of work to go!"

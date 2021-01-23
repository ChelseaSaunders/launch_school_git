# Write a program that will ask for user's name. The program will then greet
# the user. If the user writes "name!" then the computer yells back to the
# user.

# Test cases: I would want to be sure to include cases with and without '!'s at
# the end of the name, as well as cases where '!' appeared elsewhere in the
# name.

# Data structure:
# The input is a string, the output is a string, and the methods available to
# strings are sufficient to perform the desired tasks.
https://launchschool.com/exercises/e7a26cab
# Alogorithm:
# I will use puts to ask the user for their name. I will use gets.chomp to
# assign that input to the variable name. I will create an if/else statement,
# and use the .end_with? method to determine whether the name variable ends
# with an "!".  If it does, I will perform the .delete_suffix method to remove
# the "!" and use puts to print out the desired "why are we screaming" method.
# Else I will print the generic hello message.

puts "What is your name?"
name = gets.chomp

if name.end_with?('!')
  name.delete_suffix!('!')
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end

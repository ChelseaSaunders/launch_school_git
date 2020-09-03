# Write a method that takes one argument, a string, and returns a new string 
# with the words in reverse order.

# Test cases:
# The problem supplies the following test cases:
# '', 'Hello World', 'Reverse these words'

# Data structure
# The input data is a string, howver there is no method in the string class that
# would isolate words and reverse them.  Thefore, the string must be converted
# to an array.  However the output must be a string, so the array must be 
# converted back to a string at the conclusion of the program.

# Alogrithm:
# First I will create a definition that takes one argument, a string.  Then I 
# will create a variable "array," and use the .split function on the string 
# argument to populate an array where each word from the string is an element in
# the array.  Then I will use the .reverse! method on the array to reverse the 
# order of each element in the array.  Finally, I will convert the array back to 
# a string using the .join method, including a space as an argumnt, to separate 
# each word with a space in the final string.

def reverse_sentence(string)
  string.split.reverse.join(' ')
end

puts reverse_sentence('oh hi mark')

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
# Write a method that takes one argument, a string containing one or more words,
# and returns the given string with words that contain five or more characters
# reversed. Each string will consist of only letters and spaces. Spaces should
# be included only when more than one word is present.

# Test cases:
# The problem supplies the following test cases. 'Professional', 'Walk around
# the block', and 'Launch School'. An important test case would be a word with
# five characters, and a word with four characters, to ensure that the reverse
# happens at precisely 5, and fortunately both of those lengths are included in
# the supplied test cases.

# Data structure:
# In this instance, we must isolate individual words separated by spaces, which
# cannot be done within a single string, so we must convert the string argument
# into an array.  However the final output is required to be a string, so we
# must convert the array back into a string by the conclusion of the program.

# Alogorithm:
# First I create a method taking one argument. I create a variable "array", and
# use the split function on the argumnt, and assign that to the variable
# "array".  I then iterate through the array using the .each method, and use
# an if/else block that uses the .length method on each element in the array
# and returns only elements that have five or more characters, and reverses
# them I then use the .join method with a space as an argument to convert the
# array back into a string.

def reverse_words(string)
  array = string.split
  array.each do |word|
    if word.length >= 5
      word.reverse!
    end
  end
  array.join(' ')
end

puts reverse_words('Professional')
puts reverse_words('Walk around the block')
puts reverse_words('Launch School')

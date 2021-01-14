# Write a method that takes a non-empty string argument, and returns the middle
# character or characters of the argument. If the argument has an odd length,
# you should return exactly one character. If the argument has an even length,
# you should return exactly two characters.

# PROBLEM:
#   Input: string
#   Output: string of character or two characters that are in the middle of the
#           input string
#   Rules:
#     Explicit:
#     Implicit:

# EXAMPLES/TEST CASES:

# DATA:

# ALOGORITHM:
# create method called center_of that takes one string as an argument
# inside method create variable center and assign it the value empty string ('')
# determine the length of the input string, and assign that value to middle_char
# create if/else statement
# if the input string length is odd, I will add string[middle] to center
# else i will add string[middle -1] and string[middle] to center

# return center

# CODE:

def center_of(string)
  center = ''
  middle = (string.length / 2)

  if string.length.odd?
    center << string[middle]
  else
    center << string[middle - 1] << string[middle]
  end
  center
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'

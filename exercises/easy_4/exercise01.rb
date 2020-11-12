# Write a method that takes two strings as arguments, determines the longest of
# the two strings, and then returns the result of concatenating the shorter
# string, the longer string, and the shorter string once again. You may assume
# that the strings are of different lengths.

# PROBLEM:
#   Input: two strings of different lengths
#   Output: single string
#   Rules:
#     Explicit: output must be a single string that contais the shorter of the
#     two input strings, the longer of the two input strings, and then the
#     shorter string
#     Implicit: no additional charachters or spaces added

# EXAMPLES/TEST CASES:

# DATA:
#   Input, output, and internal structure will all be string

# ALOGORITHM:
#   I will create a method that takes two strings as arguments, then create an
#   if/else statement that determines which string is longer, and concats the
#   strings in the order required.  Finally I will return the new single string.

# CODE:

def short_long_short(string1, string2)
  if string1.length < string2.length
    new_string = string1 + string2 + string1
  else
    new_string = string2 + string1 + string2
  end

  new_string
end

# Examples:

puts short_long_short('abc', 'defgh') == "abcdefghabc"
puts short_long_short('abcde', 'fgh') == "fghabcdefgh"
puts short_long_short('', 'xyz') == "xyz"

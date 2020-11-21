# Write a method that takes a string argument and returns a new string that
# contains the value of the original string with all consecutive duplicate
# characters collapsed into a single character. You may not use String#squeeze
# or String#squeeze!.

# PROBLEM:
#   Input: string
#   Output: string with no characters immediately repeating
#   Rules:
#     Explicit:
#     - must return new string, not modify original string
#     - new string must not have any repeating characters in a row
#     - may not use squeeze or squeeze! methods
#     Implicit:
#     - new string must also not remove any characters that aren't duplicates in
#       a row
#     - not clear whether output should be case-sensitive; since this was not
#       specified and the default way of processing characters is case-sensitive
#       I will assume case sensitivity is preferred

# EXAMPLES/TEST CASES:
# provided. I do not see any edge cases not included in the example set and
# given the context of the question i do not think we need to validate the
# input.

# DATA:
# Input and output are both strings; operation can be performed within string
# class so no additional data structures are needed

# ALOGORITHM:
# Create a method crunch that takes a string as an argument
# Create an empty string, shortened_string
# iterate thruogh input string pushing each character to shortened_string
# unless the previous character already in shortened_string is the same as
# the current character
# return shortened_string

# CODE:

def crunch(string)
  shortened_string = ''
  string.each_char do |char|
    shortened_string << char unless char == shortened_string[-1]
  end
  shortened_string
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''

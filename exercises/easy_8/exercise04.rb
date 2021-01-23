# Write a method that returns a list of all substrings of a string. The returned
# list should be ordered by where in the string the substring begins. This means
# that all substrings that start at position 0 should come first, then all
# substrings that start at position 1, and so on. Since multiple substrings will
# occur at each position, the substrings at a given position should be returned
# in order from shortest to longest.

# You may (and should) use the leading_substrings method you wrote in the
# previous exercise.

# PROBLEM:
#   Input: string
#   Output: array of strings
#   Rules:
#     Explicit:
#     Implicit:

# EXAMPLES/TEST CASES:

# DATA:

# ALOGORITHM:

# CODE:

def leading_substrings(string, start)
  substring_array = []
  string.length.times do |index|
    substring_array << string[start..index]
  end

  substring_array
end

def substrings(string)
  substring_array = []
  start_index = 0
  string.length.times do
    start_index.upto(string.length - 1) do |index|
      substring_array << string[start_index..index]
    end
    start_index += 1
  end
  substring_array
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
 ]

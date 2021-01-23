# Write a method that takes a string, and returns a new string in which every
# character is doubled.

# PROBLEM:
#   Input:
#   Output:
#   Rules:
#     Explicit:
#     Implicit:

# EXAMPLES/TEST CASES:

# DATA:

# ALOGORITHM:

# CODE:

def repeater(string)
  doubles = ''
  string.each_char { |char| doubles << char << char }
  doubles
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''

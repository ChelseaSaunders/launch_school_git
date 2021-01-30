# Write a method that takes a string as argument, and returns true if all
# parentheses in the string are properly balanced, false otherwise. To be
# properly balanced, parentheses must occur in matching '(' and ')' pairs.

# PROBLEM:
#   Input: string
#   Output: boolean
#   Rules:
#     Explicit: - in order to return true, each "(" must be followed by a
#     subsequent ")" later in the string
#     - in order to return true, ")" must not precede "(" in the pairs.
#     - In order to return true, there must be an equal number of "(" and
#     ")"
#     Implicit:

# EXAMPLES/TEST CASES:

# DATA:

# ALOGORITHM:
# - create method, balanced? which takes one string as an argument
# - test whether "(" and ")" occur equal times; return false if not
# - test whether each "(" is followed by a ')' somewhere in code

# CODE:

def balanced?(string)
  parentheses = 0

  string.each_char do |char|
    return false if parentheses < 0
    parentheses += 1 if char == "("
    parentheses -= 1 if char == ")"
  end

  parentheses == 0
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false

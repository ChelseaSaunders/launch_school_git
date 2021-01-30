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
  return false if string.count('(') != string.count(')')
  
  counter = 0
  loop do string.length.times 
    if string[counter] != '('
      counter += 1
    else
      reverse_counter = string.length - 1
      loop do 
        if string[reverse counter] == 
end

balanced?('What (is) this?') == true
balanced?('What is) this?') == false
balanced?('What (is this?') == false
balanced?('((What) (is this))?') == true
balanced?('((What)) (is this))?') == false
balanced?('Hey!') == true
balanced?(')Hey!(') == false
balanced?('What ((is))) up(') == false
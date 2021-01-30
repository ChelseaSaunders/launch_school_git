# In the easy exercises, we worked on a problem where we had to count the number
# of uppercase and lowercase characters, as well as characters that were neither
# of those two. Now we want to go one step further.

# Write a method that takes a string, and then returns a hash that contains 3
# entries: one represents the percentage of characters in the string that are
# lowercase letters, one the percentage of characters that are uppercase
# letters, and one the percentage of characters that are neither.

# You may assume that the string will always contain at least one character.

# PROBLEM:
#   Input: string
#   Output: hash with three entries: percentage of chars that are lowercase
#   percentage of characters that are uppercase letters, and percentage of
#   characters that are neither
#   Rules:
#     Explicit: string will have at least one character
#     Implicit: input will be string

# EXAMPLES/TEST CASES:

# DATA:
# Create method, letter_percentages that takes one string as an argument
# count instances of uppercase, lowercase, and neither type of character,
# divide that count by the number of characters in the string, and
# multiply that total by 100--assign each of these a variable
# create a hash with keys corresponding to test case keys, and
# appropriate variables from previous equations

# create hash with three key/value pairs: uppercase =>

# ALOGORITHM:

# CODE:

def letter_percentages(string)
  total = string.length.to_f
  upcase_percent = (string.count("A-Z").to_f / total) * 100
  downcase_percent = (string.count("a-z").to_f / total) * 100
  neither_percent = 100 - (upcase_percent + downcase_percent)

  percentages = { lowercase: downcase_percent,
                  uppercase: upcase_percent,
                  neither: neither_percent }
end

p letter_percentages('abCdef 123')
#== { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef')
#== { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123')
#== { lowercase: 0, uppercase: 0, neither: 100 }

# Write a method that takes a String as an argument, and returns a new String
# that contains the original value using a staggered capitalization scheme in
# which every other character is capitalized, and the remaining characters are
# lowercase. Characters that are not letters should not be changed, but count as
# characters when switching between upper and lowercase.

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

def staggered_case(string)
  staggered_string = ''
  counter = 0

  string.each_char do |char|
    if counter.even?
      staggered_string << char.upcase
    else
      staggered_string << char.downcase
    end

    counter += 1
  end

  staggered_string
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

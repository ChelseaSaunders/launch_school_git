# Modify the method from the previous exercise so it ignores non-alphabetic
# characters when determining whether it should uppercase or lowercase each
# letter. The non-alphabetic characters should still be included in the return
# value; they just don't count when toggling the desired case.

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

LOWERCASE_LETTERS = ('a'..'z').to_a
UPPERCASE_LETTERS = ('A'..'Z').to_a

LETTERS = UPPERCASE_LETTERS.concat(LOWERCASE_LETTERS)

def staggered_case(string)
  staggered_string = ''
  counter = 0

  string.each_char do |char|
    if LETTERS.include?(char) == false
      staggered_string << char
    elsif counter.even?
      staggered_string << char.upcase
      counter += 1
    elsif counter.odd?
      staggered_string << char.downcase
      counter += 1
    end
  end

  staggered_string
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

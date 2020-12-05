# Write a method that takes a string as an argument and returns a new string in
# which every uppercase letter is replaced by its lowercase version, and every
# lowercase letter by its uppercase version. All other characters should be
# unchanged.

# You may not use String#swapcase; write your own version of this method.

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

def swapcase(string)
  new_string = ''
  string.each_char do |char|
    if ('A'..'Z').include?(char)
      new_string << char.downcase
    elsif ('a'..'z').include?(char)
      new_string << char.upcase
    else
      new_string << char
    end
  end

  new_string
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

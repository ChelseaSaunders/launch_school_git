# Write a method that takes a sentence string as input, and returns the same
# string with any sequence of the words 'zero', 'one', 'two', 'three', 'four',
# 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.

# PROBLEM:
#   Input: string with characters representing numbers
#   Output: string with numeral characters representing numbers
#   Rules:
#     Explicit:
#     Implicit:

# EXAMPLES/TEST CASES:

# DATA:

# ALOGORITHM:
# create constant hash with key words representing numerals as keys and string numeral
# characters as values
# create method word_to_digit that takes one string as argument
# convert input string into an array
# iterate thruogh that array and replace

# CODE:
require "pry"

NUMBER_CONVERSION = { 'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3',
                      'four' => '4', 'five' => '5', 'six' => '6',
                      'seven' => '7', 'eight' => '8', 'nine' => '9' }

LETTERS = ('A'..'Z').to_a + ('a'..'z').to_a

def lowercase_letters_only(string)
  word = ''
  string.downcase.each_char do |char|
    if LETTERS.include?(char)
      word << char
    else
      next
    end
  end
  word
end

def word_to_digit(string)
  array = string.split(' ')
  array.map! do |word|
    letters_only = lowercase_letters_only(word)

    if NUMBER_CONVERSION.has_key?(lowercase_letters_only(word))
      word.gsub(letters_only, NUMBER_CONVERSION[letters_only])
    else
      word
    end
  end

  array.join(' ')
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') ==
'Please call me at 5 5 5 1 2 3 4. Thanks.'

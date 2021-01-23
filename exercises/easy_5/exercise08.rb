# Write a method that takes an Array of Integers between 0 and 19, and returns
# an Array of those Integers sorted based on the English words for each number:

# zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven,
# twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen

# PROBLEM:
#   Input: array of integers between 0 and 19
#   Output: array of integers alphebetized by English words
#   Rules:
#     Explicit: Must organize numbers alphabetically based on their English
#     spelling
#     Implicit:
#     Unclear whether a new array should be retured, or a modification of the
#     original array. For the purposes of this exercise I will modify the
#     original array.

# EXAMPLES/TEST CASES:
# Provided.  Given that the test case includes the full range, and the range is
# set/closed/finite, I don't feel there are any unaccounted for edge cases, and
# based on the context of this exercise, I don't believe we need to validate
# input.

# DATA:
# The input and output are integers. The value being used to sort is a string.
# A hash will store the integer/string pairs.

# ALOGORITHM:
# First I will create a constant NUMBERS_TO_WORDS and assign it to a hash with
# 20 keys, 0..19, and assign each key's value as the English word for that
# number
# I will create a method alphabetic_number_sort that takes an array of integers
# between 0 and 19 as input.
# I will iterate through the array using the NUMBERS_TO_WORDS hash and reassign
# each element to it's value from the hash.
# I will alphabetize this list.
# I will iterate through the alphabetized array using the NUMBERS_TO_WORDS hash
# values to reassign each element to it's key from hash; this line will be the
# return value of the code.

# CODE:

NUMBERS_TO_WORDS = { 0 => 'zero', 1 => 'one', 2 => 'two', 3 => 'three',
                     4 => 'four', 5 => 'five', 6 => 'six', 7 => 'seven',
                     8 => 'eight', 9 => 'nine', 10 => 'ten', 11 => 'eleven',
                     12 => 'twelve', 13 => 'thirteen', 14 => 'fourteen',
                     15 => 'fifteen', 16 => 'sixteen', 17 => 'seventeen',
                     18 => 'eighteen', 19 => 'nineteen' }

def alphabetic_number_sort(num_ary)
  num_ary.map! { |num| NUMBERS_TO_WORDS[num] }
  num_ary.sort!
  num_ary.map! { |number| NUMBERS_TO_WORDS.key(number) }
end



# OFFICIAL SOLUTION:

# NUMBER_WORDS = %w(zero one two three four
#                   five six seven eight nine
#                   ten eleven twelve thirteen fourteen
#                   fifteen sixteen seventeen eighteen nineteen)

# def alphabetic_number_sort(numbers)
#   numbers.sort { |a, b| NUMBER_WORDS[a] <=> NUMBER_WORDS[b] }
# end

# p alphabetic_number_sort((0..19).to_a) == [
#   8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
#   6, 16, 10, 13, 3, 12, 2, 0
# ]
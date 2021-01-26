# A collection of spelling blocks has two letters per block, as shown in this
# list:

# B:O   X:K   D:Q   C:P   N:A
# G:T   R:E   F:S   J:W   H:U
# # V:I   L:Y   Z:M

# This limits the words you can spell with the blocks to just those words that
# do not use both letters from any given block. Each block can only be used
# once.

# Write a method that returns true if the word passed in as an argument can be
# spelled from this set of blocks, false otherwise.

# PROBLEM:
#   Input: string word
#   Output: boolean true or false
#   Rules:
#     Explicit:
#     Implicit:

# EXAMPLES/TEST CASES:

# DATA:

# ALOGORITHM:

# CODE:

BLOCKS = [["B", "O"], ["X", "K"], ["D", "Q"], ["C", "P"], ["N", "A"],
          ["G", "T"], ["R", "E"], ["F", "S"], ["J", "W"], ["H", "U"],
          ["V", "I"], ["L", "Y"], ["Z", "M"]]

def block_word?(word)
  chars = word.upcase.split('')
  BLOCKS.each do |letters|
    if chars.include?(letters[0]) && chars.include?(letters[1])
      return false
    elsif (chars.count(letters[0]) + chars.count(letters[1])) >= 2
      return false
    else
      next
    end
  end

  true
end

p block_word?('BATCH') == true
p block_word?('BAATCH') == false
p block_word?('BUTCH') == false
p block_word?('jest') == true

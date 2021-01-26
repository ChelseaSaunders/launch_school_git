# Write a program that reads the content of a text file and then prints the
# longest sentence in the file based on number of words. Sentences may end with
# periods (.), exclamation points (!), or question marks (?). Any sequence of
# characters that are not spaces or sentence-ending characters should be
# treated as a word. You should also print the number of words in the longest
# sentence.

# PROBLEM:
#   Input: text file
#   Output: printed string with single longest sentence from input string,
#   based on number of words, alsi print the number of words in that sentence.
#   Rules:
#     Explicit: sentences are separated by ".", "!", "?"; words are separated by
#     spaces
#     Implicit:

# EXAMPLES/TEST CASES:

# DATA:

# ALOGORITHM:

# CODE:

def longest_sentence(text_file)
  array = File.read(text_file).split(/\.|\?|!/)
  array.map! { |sentence| sentence.split(' ') }
  array.sort_by!(&:length)
  puts "The longest sentence is #{array.last.join(' ')}. It is #{array.last.length} words long."
end

longest_sentence("pg84.txt")

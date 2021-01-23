# Mad libs are a simple game where you create a story template with blanks for
# words. You, or another player, then construct a list of words and place them
# into the story, creating an often silly or funny story as a result.

# Create a simple mad-lib program that prompts for a noun, a verb, an adverb,
# and an adjective and injects those into a story that you create.

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

puts 'Welcome to madlibs! Please follow the following prompts.'
puts 'Please enter a noun:'
noun = gets.chomp

puts 'Please enter a verb:'
verb = gets.chomp

puts 'Please enter an adverb:'
adverb = gets.chomp

puts 'Please enter an adjective:'
adjective = gets.chomp

puts "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"

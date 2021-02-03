# Let's build another program using madlibs. We made a program like this in the
# easy exercises. This time, the requirements are a bit different.

# Make a madlibs program that reads in some text from a text file that you have
# created, and then plugs in a selection of randomized nouns, verbs, adjectives,
# and adverbs into that text and prints it. You can build your lists of nouns,
# verbs, adjectives, and adverbs directly into your program, but the text data
# should come from a file or other external source. Your program should read
# this text, and for each line, it should place random words of the appropriate
# types into the text, and print the result.

# The challenge of this program isn't about writing your program; it's about
# choosing how to represent your data. Choose the right way to structure your
# data, and this problem becomes a whole lot easier. This is why we don't show
# you what the input data looks like; the input representation is your
# responsibility.

# PROBLEM:
#   Input: hash with parts of speech for keys and arrays of string words as
#   vales, text file
#   Output: text file altered with words from the input hash value arrays
#   Rules:
#     Explicit:
#     Implicit:

# EXAMPLES/TEST CASES:

# The sleepy brown cat noisily
# licks the sleepy yellow
# dog, who lazily licks his
# tail and looks around.

# example text data:

# The %{adjective} brown %{noun} %{adverb}
# %{verb} the %{adjective} yellow
# %{noun}, who %{adverb} %{verb} his
# %{noun} and looks around.

# DATA:

# ALOGORITHM:

# - create exteral file with included example text, mad_libs.txt
#   (outside of program)
# - create hash with key symbols for each POS and corresponding array
#   of strings with words from each POS
# - create method, advanced_mad_libs that takes two arguments, a hash
#   and a .txt file
# - create adjective

# CODE:

words = { adjective: %w(quick lazy sleepy ugly),
          noun: %w(fox dog head leg),
          verb: %w(jumps lifts bites licks),
          adverb: %w(easily lazily noisily excitedly) }

def advanced_mad_libs(text, hash)
  array = File.read(text).split(' ')

  array.map! do |word|
    if word.start_with?('%{adjective}')
      word.gsub!('%{adjective}', hash[:adjective].sample)
    elsif word.start_with?('%{noun}')
      word.gsub!('%{noun}', hash[:noun].sample)
    elsif word.start_with?('%{verb}')
      word.gsub!('%{verb}', hash[:verb].sample)
    elsif word.start_with?('%{adverb}')
      word.gsub!('%{adverb}', hash[:adverb].sample)
    else
      word
    end
  end

  puts array.join(' ')
end

advanced_mad_libs("mad_libs.txt", words)

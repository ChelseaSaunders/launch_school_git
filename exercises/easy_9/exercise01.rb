# Create a method that takes 2 arguments, an array and a hash. The array will
# contain 2 or more elements that, when combined with adjoining spaces, will
# produce a person's name. The hash will contain two keys, :title and
# :occupation, and the appropriate values. Your method should return a greeting
# that uses the person's full name, and mentions the person's title and
# occupation.

# PROBLEM:
#   Input: array of strings (will be a name when spaces are inbetween), a
# =>        hash that contains keys title and occupation, and corresponding
# =>        string values
#   Output: puts string

#   Rules:
#     Explicit:
#     Implicit: follow the greeting format in examples

# EXAMPLES/TEST CASES:

# DATA:

# # ALOGORITHM:
# create method greetings that takes two arguments, a array and a hash
# create a puts statement that calls via interpollation, the joined arra (with
# spaces) and the values of the hash.


# CODE:

def greetings(name_array, job_hash)
  puts "Hello #{name_array.join(' ')}! Nice to have a #{job_hash[:title]} #{job_hash[:occupation]} around."
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => Hello, John Q Doe! Nice to have a Master Plumber around.

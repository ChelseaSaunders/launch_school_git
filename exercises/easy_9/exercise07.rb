# Write a method that takes a first name, a space, and a last name passed as a
# single String argument, and returns a string that contains the last name, a
# comma, a space, and the first name.

# PROBLEM:
#   Input: string (first and last names separated by space)
#   Output: string (last name and first name seprated by comma and space)

#   Rules:
#     Explicit:
#     Implicit:

# EXAMPLES/TEST CASES:

# DATA:

# ALOGORITHM:

# create a method swap_name that takes one string as argument
# assign an array with each name (firts and last) as elements in the array
# reverse the elements in the array
# join the array elements with a ", "

# CODE:

def swap_name(name)
  name.split(' ').reverse.join(", ")
end

p swap_name('Joe Roberts') == 'Roberts, Joe'

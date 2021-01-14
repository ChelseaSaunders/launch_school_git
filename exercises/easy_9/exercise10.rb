# Write a method which takes a grocery list (array) of fruits with quantities
# and converts it into an array of the correct number of each fruit.

# PROBLEM:
#   Input: array of arrays (subarrays are first element string, second element
# =>      integer)
#   Output: array of strings

#   Rules:
#     Explicit: replace each elelment in the array with the first element of
# =>            the subarray repeated the number of times equal to the second
# =>            element same subarray
# =>            must modify original input arrray, not return new array
#     Implicit:

# EXAMPLES/TEST CASES:

# DATA:

# ALOGORITHM:

# create a method, buy_fruit that takes one array of arrays as an argument
# iterate through the subarray elements

# replace each element with the first element, fruit in that subarray repeated
# the number of times equal to the second element, number in that subarray

# haveto use [fruit] fruit order to have the correct number of strings,
# otherwise a single string is returned with "fruit" repeated.

# CODE:

def buy_fruit(list_array)
  list_array.map { |fruit, number| [fruit] * number }.flatten
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
["apples", "apples", "apples", "orange", "bananas","bananas"]

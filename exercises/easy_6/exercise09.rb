# Write a method named include? that takes an Array and a search value as
# arguments. This method should return true if the search value is in the
# array, false if it is not. You may not use the Array#include? method in your
# solution.

# PROBLEM:
#   Input: array and search value
#   Output: true/false
#   Rules:
#     Explicit:
#       - Should return true if value is in array, false if vale is not in array
#       - May not use .include? method
#     Implicit:

# EXAMPLES/TEST CASES:
#   Provided,  I do not see edge cases not accounted for in provided examples.

# DATA:
# Input is array and some value--could be integer, string, etc.
# Output is boolean true/false
# Will use array and boolean true/false to solve

# ALOGORITHM:
# - I will create a method .include? that takes two arguments, an array and a
#   search value.
# - I will set a return value variable to false
# - I will iterate through the array and change the reurn value variable to true
#   if any element in the array equals the search value.
# - I will rerurn the return value variable

# CODE:

def include?(array, search_value)
  value = false
  array.each { |element| value = true if element == search_value }
  value
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false

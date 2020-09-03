# Write a method that counts the number of occurrences of each element in a 
# given array.

# Examples/test cases:
# The example presented includes only strings as elements of the array, and 
# specifies that strings are to be treated as case-sensitive.  From the example
# it is not clear whether we are to only address strings as elements, but if we
# are to address elements of any class, then we would want test cases where 
# some elements are integers, symbols, sub-arrays, and hashes.

# Data structure
# The data structures as presented are strings within an array. However the 
# output requires a value associated with each string, so converting the data
# into a hash would be the most efficient way of storing a value with each key.

# Alorgrythm
# First I create an empty hash to populate later.  Then I will create an array 
# that contains each unique element of the original array, using the .uniq 
# method.  Then I will create a loop that will execute once for each element in 
# the unique array.  The loop will use the .pop method to isolate an element,
# then assign that element to the variable "key".  The loop will then create a 
# new array using the .select method to iterate through the original array and 
# select all elements that match the new variable "key".  Then I will create a 
# new variable, "value", and .length method on this new array, so that te 
# "value" equals the number of occurrences of the "key" variable. Then I will
# create a new hash and assign "key" to the key position, and "value" to the 
# value position. Finally, I will merge the new hash into the empty hash I 
# cretated earlier, using the .merge! function.  When the loop has finished, 
# each element of the original array will appear as a key in the new hash, 
# and the number of occurrences will appear as the value. 

def count_occurrences(array)
  occurrences = Hash.new
  unique = array.uniq
  unique.length.times do
    key = unique.pop
    value = array.select { |element| element == key }
    value = value.length
    hash = { key => value }
    occurrences.merge!(hash)
  end
  puts occurrences
end 

vehicles = [ 'car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

count_occurrences(vehicles)
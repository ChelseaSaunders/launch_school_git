# Write a method that takes one argument, an array containing integers, and 
# returns the average of all numbers in the array. The array will never be empty 
# and the numbers will always be positive integers. Your result should also be 
# an integer.

# Examples/test cases:
# THree test cases are provided: 1, 6; 1, 5, 87, 45, 8, 8; and 9, 47, 23,95,16, 
# 52.  Given that the problem specifics eliminate the possibility of negative 
# integers and input that isn't an integer, I don't see any unsual edge cases 
# that the provided test cases wouldn't account for. 

# Data structure:
# The input is an array of intergers, and the output is an integer.  
# Additionally, to perform mathematics the the data must stay integers, and to 
# iterate through the numbers, an array is best suited, so the existing data
# structure seems appropriate.

# Alogrithm:
# I will assign a variable, "divider" to the number of elements in the array 
# using the array.length method. Then I will assign zero to the variable "sum" 
# so that the variable is available outside of the loop.  Then I will create a
# loop using the .times method for the number of elements in the array, again
# using the .each method.  I will create a new variable, new_num and assign it
# the last element in the array, using the .pop method. I will then create a new
# variable "answer" and assign it to the new_num plus the sum--thus.  I will 
# then redefine "sum" as "answer", making "sum" the total sum of each of the 
# elements I have looped through so far. I will end the loop, and outside the 
# loop, I will create a new variable, "average", and assign it the total of
# sum (generated from the completed loop), and "divider", (the variable assigned
# to the number of elements in the array). I will then call "average" so that 
# method returns the "average" variable.

def average(array)
  sum = 0
  divider = array.length
  array.length.times do
    new_num = array.pop
    answer = new_num + sum
    sum = answer
  end
  average = sum / divider
  average
end

puts average([1, 6])
puts average([1, 5, 87, 45, 8, 8])
puts average([9, 47, 23, 95, 16, 52])
# Write a method that takes an Array of integers as input, multiplies all the
# numbers together, divides the result by the number of entries in the Array,
# and then prints the result rounded to 3 decimal places. Assume the array is
# non-empty.

# PROBLEM:
#   Input: array of integers
#   Output: float representing the average of the elements in the array rounded
#           to three decimal places
#   Rules:
#     Explicit:
#     Implicit:

# EXAMPLES/TEST CASES:
# Provided and contains arrays with one, two, and larger multiples of elements,
# no empty arrays but the problem specifies that we can assume the aray is not
# empty.  None of the arrays conain zero or negative numbers, or non-integers.
# Given the context of the program I believe we do not need to account for non-
# integers however it is not clear whether 0 and negative integers could be part
# of a valid input array.  I don't believe negative integers would change the
# effectiveness of the problem, but a zero input would result in a zero division
# error based on my program design and would require a workaround. Given that
# it was not specified in the problem, and these are simple problems, I will not
# pursue it in this iteration of the problem.

# DATA:
# The input is an array containing integers and the output is a float; all of
# the operations needed can be done in the context of floats so I will convert
# the integers to floats and keep them that way throughout the rest of the code.

# ALOGORITHM:
#

# CODE:

def multiplied(num_arr)
  multiplied_total = num_arr[0]

  if num_arr.length > 1
    counter = 1
    loop do
      multiplied_total = multiplied_total *= num_arr[counter]
      counter += 1
      break if counter == num_arr.length
    end
  end

  multiplied_total.to_f
end

def average(array, num)
  num / array.length.to_f
end

def show_multiplicative_average(arr)
  total = multiplied(arr)
  result = average(arr, total)

  puts "The result is #{format('%.03f', result)}"
end

show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667

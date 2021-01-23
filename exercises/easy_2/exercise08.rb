# Write a program that asks the user to enter an integer greater than 0, then
# asks if the user wants to determine the sum or product of all numbers between
# 1 and the entered integer.

# Examples / test cases:
# Negative numbers, non-integer inputs, but given the scope of this problem, I
# suspect we aren't expected to build for that.

# Data structure:
# The input will be a string, since it is user-generated. In order to perform
# addition or multiplication, the data will have to be converted to integers or
# floats. The output will be an integer. 

# Alogorithm:
# I will print a message asking the user for a positive integer. I will use
# .gets.chomp to

n = ''

loop do
  puts ">> Please enter an integer greater than zero:"
  n = gets.chomp.to_i
  if n > 0
    break
  else
    puts ">> Oops! Looks like that wasn't an integer greater than zero."
  end
end

answer = ''

loop do
  puts ">> Enter 's' to compute the sum, 'p' to compute the product."
  answer = gets.chomp.downcase
  if answer == 's' || answer == 'p'
    break
  else
    puts ">> Oops! Looks like you entered something other than 's' or 'p'!"
  end
end

sum_total = 0

if answer == 's'
  sum_total = (1..n).inject { |sum, num| sum + num }
  puts ">> The sum of the integers between 1 and #{n} is #{sum_total}."
end

product_total = 1

if answer == 'p'
  product_total = (1..n).inject { |product, num| product * num }
  puts ">> The product of the integers between 1 and #{n} is #{product_total}."
end

# Create a simple tip calculator. The program should prompt for a bill amount
# and a tip rate. The program must compute the tip and then display both the tip
# and the total amount of the bill.

# Examples/Test cases:
# Input with decimal points, inputs that cannot be converted to integers, inputs
# that are converted into negative integers, zero.

# Data structure:
# The input will be a string, it should be converted to a float so that
# multiplication and addition can be applied.  The output will be a float.

# Alogorithm:

# I will create an empty variable "bill" and then create a loop that asks the
# user to enter the bill amount, then  converts that amount to a float and
# assigns it to bill. I will then test whether the input is a positive integer.
# If it is then I will break the loop, if not, I will ask the user to input the
# a positive integer for the bill amount, and end the loop.  I will then create
# an empty variable "tip" and create the same loop as the bill loop, only I will
# pass it to the variable "tip".

# Then I will divide the tip amount by 100 and assign it to the variable
# tip_percentage. I will then multiply tip_percentage with bill and assign it
# the variable tip_total I will use the round method to round that amount to
# two places and then print it.  Then I will add tip_total to bill and assign
# it the variable bill_plus_tip.  I will then print the bill_plus_tip amount
# with the round function, rounding to two places.

bill = ''

loop do
  puts "Please enter bill amount:"
  bill = gets.chomp.to_f
  if bill == 0 || bill.negative?
    puts "Bill amount must be a positive integer."
  else
    break
  end
end

tip = ''

loop do
  puts "Please enter tip amount:"
  tip = gets.chomp.to_f
  if tip == 0 || tip.negative?
    puts "Tip amount must be a positive integer."
  else
    break
  end
end

tip_percentage = tip / 100

tip_total = tip_percentage * bill

puts "The tip is #{tip_total.round(2)}."

bill_plus_tip = tip_total + bill

puts "The total is #{bill_plus_tip.round(2)}"

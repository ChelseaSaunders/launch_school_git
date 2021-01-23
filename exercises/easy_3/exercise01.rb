# Write a program that solicits 6 numbers from the user, then prints a message
# that describes whether or not the 6th number appears amongst the first 5
# numbers.

numbers = []

prompt_numbers = %w(first second third fourth fifth last)

prompt_numbers.each do |times|
  puts "==> Enter the #{times} number:"
  answer = gets.chomp.to_i
  numbers << answer
end

last_number = numbers.pop

if numbers.include?(last_number)
  puts "The number #{last_number} appears in #{numbers}."
else
  puts "The number #{last_number} does not appear in #{numbers}."
end

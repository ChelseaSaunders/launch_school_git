# Write a program that will ask a user for an input of a word or multiple words
# and give back the number of characters. Spaces should not be counted as a
# character.

puts "Please type a word or multple words:"
words = gets.chomp
num = words.delete(' ').size
puts "There are #{num} characters in #{words}."

puts "What is your name?"
name = gets.chomp

if name.end_with?('!')
  name.delete_suffix!('!')
  puts "HELLO #{name.upcase}. WHY ARE YOU SCREAMING?"
else
  puts "Hello #{name}."
end
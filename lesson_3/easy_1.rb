# 1. What would you expect the code below to print out?

numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

# My answer: [1, 2, 2, 3] becauese .uniq does not mutate the object.
# Correct answer:
# 1
# 2
# 2
# 3
# Because .uniq does not mutate the object, and puts calls to_s so the output
# is a string rather than an array.

################

# 2. Describe the difference between ! and ? in Ruby. And explain what would
# happen in the following scenarios:
# My answer: ? evaluates truthiness, ! modfies the object.

# what is != and where should you use it?
# My answer : does not equal; should be used in statements evaluating truthiness

# put ! before something, like !user_name
# Turns object into boolean equivelent (true/false)

# put ! after something, like words.uniq!
# Part of method name; meaning varies with method.

# put ? before something
# Ternary operator for if/else

# put ? after something
# Part of method name; meaning varies with method

# put !! before something, like !!user_name
# Turns object into oopposite of boolean equivelent, true or false

################

# 3. Replace the word "important" with "urgent" in this string:

advice = "Few things in life are as important as house training your pet dinosaur."
advice.gsub!('important', 'urgent')

################

# 4. The Ruby Array class has several methods for removing items from the
# array. Two of them have very similar names. Let's see how they differ:

numbers = [1, 2, 3, 4, 5]

# What do the following method calls do (assume we reset numbers to the original
# array between method calls)?

numbers.delete_at(1) # Deletes the element in the array position 1 (the intger
# 2 in this case)
numbers.delete(1) # Deletes the integer 1 from the array (whichi s in position 0)

################

# 5. Programmatically determine if 42 lies between 10 and 100.

(10..100).include?(42)
# official answer (10..100).cover?(42)

################

# 6. Starting with the following string, show two different ways to put the
# expected "Four score and " in front of it.

famous_words = "seven years ago..."

# Method 1
famous_words = "seven years ago..."
famous_words.insert(0, 'Four score and ')

# Method 2
famous_words = "seven years ago..."
famous_words.prepend('Four score and ')

# Other solutions:
"Four score and " + famous_words

"Four score and " << famous_words

################

# 7. If we build an array like this:

flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]

# We will end up with this "nested" array:

["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]

# Make this into an un-nested array.

flintstones.flatten!

################

# 8. Given the hash below:

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

# Turn this into an array containing only two elements: Barney's name and
# Barney's number:

flintstones.assoc("Barney")
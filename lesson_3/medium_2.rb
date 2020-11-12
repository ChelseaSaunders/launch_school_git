# 1. lots of code/text for this space; see assignment

############

# 2. lots of code/text for this space; see assignment

############

# 3. Let's call a method, and pass both a string and an array as arguments and
# see how even though they are treated in the same way by Ruby, the results can
# be different.

# Study the following code and state what will be displayed...and why:

def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}" # "pumpkins"
puts "My array looks like this now: #{my_array}"  #["pumpkins", "rutabaga"]


############

# 4. To drive that last one home...let's turn the tables and have the string
# show a modified output, while the array thwarts the method's efforts to
# modify the caller's version of it.

def tricky_method_two(a_string_param, an_array_param)
  a_string_param << 'rutabaga'
  an_array_param = ['pumpkins', 'rutabaga']
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method_two(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# As before, the explanation is all about what Ruby does with local variables
# when we change the object it points to. Does it create a new local variable?
# Or is it able to just modify the existing object?

# With the Array#= assignment, our literal ['pumpkins', 'rutabaga'] array is a
# new object, and we are assigning it to the local variable an_array_param.


############

# 5 Depending on a method to modify its arguments can be tricky:

def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# Whether the above "coincidentally" does what we think we wanted "depends"
# upon what is going on inside the method.

# How can we refactor this practice problem to make the result easier to
# predict and easier for the next programmer to maintain?

def less_tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param += "rutabaga"
  return a_string_param, an_array_param
end

my_string = "pumpkins"
my_array = ["pumpkins"]
less_tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"


############

# 6. How could the unnecessary duplication in this method be removed?

def color_valid(color)
  color == "blue" || color == "green"
end
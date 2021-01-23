# You are given a method named spin_me that takes a string as an argument and
# returns a string that contains the same words, but with each word's characters
# reversed. Given the method's implementation, will the returned string be the
# same object as the one passed in as an argument or a different object?

def spin_me(str)
  p str.object_id
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

p spin_me("hello world").object_id # "olleh dlrow"

# The inital input and output have different object id's so the method returns
# a different object.

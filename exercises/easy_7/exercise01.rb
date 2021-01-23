# Write a method that combines two Arrays passed in as arguments, and returns a
# new Array that contains all elements from both Array arguments, with the
# elements taken in alternation.

# You may assume that both input Arrays are non-empty, and that they have the
# same number of elements.

# PROBLEM:
#   Input: two non-empty arrays with the same number of elements
#   Output: one array with new elements
#   Rules:
#     Explicit:
#     Implicit:

# EXAMPLES/TEST CASES:

# DATA:

# ALOGORITHM:

# CODE:

def interleave(ary1, ary2)
  combined_ary = []
  counter = 0

  ary1.length.times do
    combined_ary << ary1[counter]
    combined_ary << ary2[counter]
    counter += 1
  end

  combined_ary
end

# Further Exploration
# Take a few minutes to read about Array#zip. #zip doesn't do the same thing as
# interleave, but it is very close, and more flexible. In fact, interleave can
# be implemented in terms of zip and one other method from the Array class. See
# if you can rewrite interleave to use zip.

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

def zip_interleave(array1, array2)
  array1.zip(array2).flatten
end

p zip_interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

# Examples 1, 2, 7, 8, and 9 are explained in lesson rather than posed as
# problems.

# Example 3

[[1, 2], [3, 4]].map do |arr|
  puts arr.first
  arr.first
end

# 1
# 3
# => [1, 3]

# The .map is called to the outer array. It will return the modified array
# and display the puts command. The puts command displays the first element of
# each sub array.  The array.first is the return value for the problem, which
# is a new array of the first element of each subarray. The output will be the
# two puts expressions and the new array.

# Example 4:

my_arr = [[18, 7], [3, 12]].each do |arr|
  arr.each do |num|
    if num > 5
      puts num
    end
  end
end

# 18
# 7
# 12
# => [[18, 7], [3, 12]]

# The first each calls each sub array, the second each works within the
# subarrays to compre the integers in the subarrays with 5 and print those
# greater than 5. .each in both instances returns the original array so
# the array and subarrays are preserved and returned.


# Example 5:

[[1, 2], [3, 4]].map do |arr|
  arr.map do |num|
    num * 2
  end
end

# [[2, 4], [6, 8]]

# The first .map is called to the outer array, the second .map is called to the
# inner array. .map is destructive so it will change the arrays permenantly. The
# *2 is called on each element in the inner array so it will mutate each value.


# Example 6:

[{ a: 'ant', b: 'elephant' }, { c: 'cat' }].select do |hash|
  hash.all? do |key, value|
    value[0] == key.to_s
  end
end

# => [{ :c => "cat" }]

# select iterates through each element in the array.  Each element in the array
# is a hash, so .all? iterates through each hash in the subarray and returns
# the values for which the statement returns true.  The value of the first
# character in the vaue of the hash must equal the symbol when converted to
# a string.  This is only true of the first k/v set in the second element of the
# array, so that is what is returned.  It is returned within the array because
# the .select function was called on the outer array.


# Example 10:

[[[1, 2], [3, 4]], [5, 6]].map do |arr|
  arr.map do |el|
    if el.to_s.size == 1    # it's an integer
      el + 1
    else                    # it's an array
      el.map do |n|
        n + 1
      end
    end
  end
end

# Should return [[[2, 3], [4, 5]], [6, 7]]

# The first map is working on a nested array and an an array, respectively.  The
# Second map is a conditional that works on the subarray; so the first is still
# an array, the second are two integers.  This map uses a conditional which
# calls + 1 on the integers if they are only one charachter (they both are) and
# anotehr map on the array.  The map called on the inner-most array also
# performs the + 1 on each element, and maps are destructive so the final return
# is the same structure of nested arrays, but with each element having added +1.
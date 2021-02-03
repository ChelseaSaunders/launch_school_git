# Write a method that takes two sorted Arrays as arguments, and returns a new
# Array that contains all elements from both arguments in sorted order.

# You may not provide any solution that requires you to sort the result array.
# You must build the result array one element at a time in the proper order.

# Your solution should not mutate the input arrays.

# PROBLEM:
#   Input: 2 sorted array
#   Output: one sorted array with the full contents of both input arrays
#   Rules:
#     Explicit: do not mutate imput array
#     Implicit:

# EXAMPLES/TEST CASES:

# DATA:

# ALOGORITHM:
# - create method, merge, that takes two sorted arrays as arguments
# - create new empty array, sorted.
# - create two variables to use as counters: arr1_index, arr2_index and set
#   both values to 0
# - create loop that executes as many times as the sum of the length of the
#   two input arrays
# - create if/else statement that determines which ele

# CODE:

# rubocop:disable Metrics/AbcSize
# rubocop:disable Metrics/MethodLength

def merge(arr1, arr2)
  sorted = []
  arr1_index = 0
  arr2_index = 0

  (arr1.length + arr2.length).times do
    if arr2[arr2_index].nil?
      sorted << arr1[arr1_index]
      arr1_index += 1
    elsif arr1[arr1_index].nil?
      sorted << arr2[arr2_index]
      arr2_index += 1
    elsif arr1[arr1_index] < arr2[arr2_index]
      sorted << arr1[arr1_index]
      arr1_index += 1
    elsif arr2[arr2_index] < arr1[arr1_index]
      sorted << arr2[arr2_index]
      arr2_index += 1
    else
      sorted << arr1[arr1_index] << arr2[arr2_index]
      arr1_index += 1
      arr2_index += 1
    end
  end

  sorted
end

# rubocop:enable Metrics/AbcSize
# rubocop:enable Metrics/MethodLength

p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]

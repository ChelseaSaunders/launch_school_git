# PROBLEM:

# Given a string, write a method `palindrome_substrings` which returns
# all the substrings from a given string which are palindromes. Consider
# palindrome words case sensitive.

# Test cases:

# palindrome_substrings("supercalifragilisticexpialidocious") == ["ili"]
# palindrome_substrings("abcddcbA") == ["bcddcb", "cddc", "dd"]
# palindrome_substrings("palindrome") == []
# palindrome_substrings("") == []

# Input: string
# Output: array of strings
# Rules:
#     Explicit Requirements:
#       - Palindromes are case sensitive
#       - should only return palindromes

#     Implicit Requirements:
#       - Each palindrome should be its own element in the new array
#       - Should return empty array for empty string or if string does not
#         contain any palindromes
#       - Palindromes can overlap (so like palindromes within a palindrome
#         should appear as separate elements within the array)
#
# Data structure:
#
#
# Alogorithm:
#
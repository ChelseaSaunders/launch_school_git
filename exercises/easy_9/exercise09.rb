# Write a method that determines the mean (average) of the three scores passed
# to it, and returns the letter value associated with that grade.

# Numerical Score Letter	Grade
# 90 <= score <= 100	'A'
# 80 <= score < 90	'B'
# 70 <= score < 80	'C'
# 60 <= score < 70	'D'
# 0 <= score < 60	'F'
# Tested values are all between 0 and 100. There is no need to check for
# negative values or values greater than 100.

# PROBLEM:
#   Input: 3 integers (all between 0 and 100)
#   Output: string which will be a letter corresponding to an integer value per
#           table provided

#   Rules:
#     Explicit:
#     Implicit:

# EXAMPLES/TEST CASES:

# DATA:

# ALOGORITHM:
# create a method get_grade which will take 3 inteters (between 0 and 100) as
# arguments
# create varialbe average_score and set it to the sum of the three integers
# divided by 3
# determine which score range the average_score belongs to based on the
# provided chart and return the string output that corresponds to that range

# CODE:

def get_grade(score1, score2, score3)
  average_score = (score1 + score2 + score3) / 3
  case average_score
  when 90..100
    'A'
  when 80..89
    'B'
  when 70..79
    'C'
  when 60..69
    'D'
  else
    'F'
  end
end


p get_grade(95, 90, 93) == "A"
# add test case with 0
p get_grade(50, 50, 95) == "D"

# Write a method that takes a year as input and returns the century. The return
# value should be a string that begins with the century number, and ends with
# st, nd, rd, or th as appropriate for that number.

# New centuries begin in years that end with 01. So, the years 1901-2000
# comprise the 20th century.

# Examples/test cases:


# Data Structure
# The input will be an integer; the output will be a string.

# Alogorithm

def century(year)
  if year % 100 != 0
    century_number = year + 100
  else
    century_number = year
  end
   prefix = century_number.to_s.chop.chop

  if prefix.end_with?('01', '21', '31', '41', '51', '61', '71', '81', '91')
    century_number = prefix.concat('st')
  elsif prefix == '1'
    century_number = prefix.concat('st')
  elsif prefix.end_with?('02', '22', '32', '42', '52', '62', '72', '82', '92')
    century_number = prefix.concat('nd')
  elsif prefix.end_with?('03', '23', '33', '43', '53', '63', '73', '83', '93')
    century_number = prefix.concat('nd')
  elsif prefix == '2'
    century_number = prefix.concat('nd')
  elsif prefix == '3'
    century_number = prefix.concat('rd')
  else
    century_number = prefix.concat('th')
  end

  century_number
end


puts century(2000) == '20th'
puts century(2001) == '21st'
puts century(1965) == '20th'
puts century(256) == '3rd'
puts century(5) == '1st'
puts century(10103) == '102nd'
puts century(1052) == '11th'
puts century(1127) == '12th'
puts century(11201) == '113th'

# print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+

# print_in_box('')
# +--+
# |  |
# |  |
# |  |
# +--+

# CODE:

def print_in_box(string)
  dashes = "+#{'-' * (string.length + 2)}+"
  spaces = "|#{' ' * (string.length + 2)}|"

  puts dashes
  puts spaces
  puts "| #{string} |"
  puts spaces
  puts dashes
end

print_in_box('oh hi mark')

# Further Exploration
# Modify this method so it will truncate the message if it will be too wide to
# fit inside a standard terminal window (80 columns, including the sides of the
# box).

def print_in_box_truncated(string)
  short_string = ''
  if string.length > 76
    short_string = string.slice(0..75)
  else
    short_string = string
  end

  dashes = "+#{'-' * (short_string.length + 2)}+"
  spaces = "|#{' ' * (short_string.length + 2)}|"

  puts dashes
  puts spaces
  puts "| #{short_string} |"
  puts spaces
  puts dashes
end

print_in_box_truncated('11111111111111111111111111111111111111111111111111111111111111111111111111111111111253434242')

# For a real challenge, try word wrapping very long messages so they appear on
# multiple lines, but still within a box.

def print_in_box_extra_lines(string)
  array = []
  dashes = ''
  spaces = ''

  if string.length > 76
    loop do
      array << string.slice!(0..75)
      if string.length < 77
        array << string
        break
      end
    end
    dashes = "+#{'-' * 78}+"
    spaces = "|#{' ' * 78}|"
  else
    array << string
    dashes = "+#{'-' * (string.length + 2)}+"
    spaces = "|#{' ' * (string.length + 2)}|"
  end

  if array.last.length < 76
    short_line = array.last
    extra_chars = (76 - array.last.length) / 2
    extra_spaces = "#{' ' * extra_chars}"
    array[-1] = extra_spaces + short_line + extra_spaces
  end

  puts dashes
  puts spaces
  counter = 0
  array.length.times do
    puts "| #{array[counter]} |"
    counter += 1
  end
  puts spaces
  puts dashes
end

print_in_box_extra_lines('11111111111111111111111111111111111111111111111111111111111111111111111111111111111253434242')

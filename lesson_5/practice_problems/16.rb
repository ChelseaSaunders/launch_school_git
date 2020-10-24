# A UUID is a type of identifier often used as a way to uniquely identify
# items...which may not all be created by the same system. That is, without any
# form of synchronization, two or more separate computer systems can create new
# items and label them with a UUID with no significant chance of stepping on
# each other's toes.

# It accomplishes this feat through massive randomization. The number of
# possible UUID values is approximately 3.4 X 10E38.

# Each UUID consists of 32 hexadecimal characters, and is typically broken into
# 5 sections like this 8-4-4-4-12 and represented as a string.

# It looks like this: "f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91"

# Write a method that returns one UUID when called with no parameters.

#Method 1

def create_uuid
  hex_char = []
  (0..9).each { |num| hex_char << num.to_s }
  ('a'..'f').each { |let| hex_char << let }

  str1 =''
  str2 = ''
  str3 = ''
  str4 = ''
  str5 = ''

  uuid_array = [str1, str2, str3, str4, str5]

  8.times { str1 << hex_char.sample }
  4.times { str2 << hex_char.sample }
  4.times { str3 << hex_char.sample }
  4.times { str4 << hex_char.sample }
  12.times { str5 << hex_char.sample }

  uuid = uuid_array.join('-')
  uuid

end

# Method 2

def create_uuid
  hex_char = []
  (0..9).each { |num| hex_char << num.to_s }
  ('a'..'f').each { |let| hex_char << let }

  uuid = ''

  uuid_structure = [8, 4, 4, 4, 12]
  uuid_structure.each_with_index do |num, index|
    num.times do
      uuid << hex_char.sample
    end
    uuid << '-' if index < uuid_structure.size - 1
  end
  uuid
end

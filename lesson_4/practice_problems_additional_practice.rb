# 1. Turn this array into a hash where the names are the keys and the values
# are the positions in the array.

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

flintstones_hash = {}

flintstones.each_with_index do |element, index|
  flintstones_hash[element] = index
end


#####

# 2. Add up all of the ages from the Munster family hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

group_age = 0

ages.each { |_, value| group_age += value }

group_age


#####

# 3. In the age hash, remove people with age 100 and greater.

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.delete_if { |_, age| age >= 100 }


#####

# 4. Pick out the minimum age from our current Munster family hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

ages.value.min


#####

# 5. Find the index of the first name that starts with "Be"

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.index { |name| name[0, 2] =='Be' }

#####

# 6. Amend this array so that the names are all shortened to just the first
# three characters:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.map! { |name| name.byteslice(0..2) }


#####

# 7. Create a hash that expresses the frequency with which each letter occurs
# in this string:

statement = "The Flintstones Rock"

result = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a
letters.each do |letter|
  letter_frequency = statement.scan(letter).count
  result[letter] = letter_frequency if letter_frequency > 0
end


#####

# 8. See assignment


#####

# 9. As we have seen previously we can use some built-in string methods to
# change the case of a string. A notably missing method is something provided
# in Rails, but not in Ruby itself...titleize. This method in Ruby on Rails
# creates a string that has each word capitalized as it would be in a title.

def titleize(phrase)
  phrase.split(' ').map { |word| word.capitalize! }.join(' ')
end


#####

# 10. Modify the hash such that each member of the Munster family has an
# additional "age_group" key that has one of three values describing the age
# group the family member is in (kid, adult, or senior).

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# The solution should produce the hash below:

{ "Herman" => { "age" => 32, "gender" => "male", "age_group" => "adult" },
  "Lily" => {"age" => 30, "gender" => "female", "age_group" => "adult" },
  "Grandpa" => { "age" => 402, "gender" => "male", "age_group" => "senior" },
  "Eddie" => { "age" => 10, "gender" => "male", "age_group" => "kid" },
  "Marilyn" => { "age" => 23, "gender" => "female", "age_group" => "adult" } }

munsters.each do |name, description|
  if description["age"] < 18
    description["age_group"] = 'kid'
  elsif description["age"] >= 18 && description["age"] < 65
    description["age_group"] = 'adult'
  else
    description["age group"] = 'senior'
  end
end

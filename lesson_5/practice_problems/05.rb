# Given this nested Hash, figure out the total age of just the male members of
# the family.

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

total_age_of_males = 0

munsters.each do |_, data|
  if data['gender'] == 'male'
    total_age_of_males += data['age']
  end
end

total_age_of_males

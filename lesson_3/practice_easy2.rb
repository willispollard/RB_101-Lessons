# Question 1
=begin
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

puts ages.include?("Spot")
=end

# Question 2
=begin
munsters_description = "The Munsters are creepy in a good way."

puts munsters_description.swapcase!
puts munsters_description.capitalize!
puts munsters_description.downcase!
puts munsters_description.upcase!
=end

# Question 3
=begin
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }

additional_ages = { "Marilyn" => 22, "Spot" => 237 }

ages.merge!(additional_ages)

puts ages
=end

# Question 4
=begin
advice = "Few things in life are as important as house training your pet dinosaur."

p advice.match?("Dino")
=end

# Question 5
=begin
flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
=end

# Question 6 & 7
=begin
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# flintstones << "Dino"

flintstones.insert(-1, "Dino", "Hoppy")

puts flintstones
=end

# Question 8
=begin
advice = "Few things in life are as important as house training your pet dinosaur."

pretext = advice.slice!(0..38)

puts pretext
puts advice
=end

# Question 9

statement = "The Flintstones Rock!"

puts statement.count('t')



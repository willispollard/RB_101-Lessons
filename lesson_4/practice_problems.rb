# Problem 1

# flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
# flintstones_hash = {}

# flintstones.each_with_index do |name, index|
#   flintstones_hash[name] = index
# end

# puts flintstones_hash


# Problem 2

# ages = { "Herman" => 32, 
#         "Lily" => 30, 
#         "Grandpa" => 5843, 
#         "Eddie" => 10, 
#         "Marilyn" => 22, 
#         "Spot" => 237 
#       }

# # puts ages.values.sum

# total = 0

# ages.each do |name, age|
#   total += age
# end

# puts total


# Problem 3

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# # ages.delete_if do |name, age|
# #   age >= 100
# # end

# ages.select! do |name, age|
#   age < 100
# end

# puts ages


# Problem 4

# ages = { "Herman" => 32, 
#         "Lily" => 30, 
#         "Grandpa" => 5843, 
#         "Eddie" => 10, 
#         "Marilyn" => 22, 
#         "Spot" => 237 
#       }

# puts ages.values.min


# Problem 5

# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# flintstones.each_with_index do |name, index|
#   if name[0..1] == 'Be'
#     puts index
#   end
# end

# Problem 6

# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# flintstones.each do |name|
#   name.chop! until name.length == 3
# end

# puts flintstones


# Problem 7

# statement = "The Flintstones Rock"

# result = {}
# letters = ('A'..'Z').to_a + ('a'..'z').to_a 

# letters.each do |letter|
#   letter_freq = statement.count(letter)
#   result[letter] = letter_freq if letter_freq > 0
# end

# puts result


# Problem 9

# words = "the flintstones rock"

# def titleize(string)
#   words = string.split

#   words.each do |word|
#     word.capitalize!
#   end
#   words.join(' ')
# end

# puts titleize(words)


# Problem 10

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |name, details|
  case details["age"]
  when 0...18
    details["age_group"] = "kid"
  when 18...65
    details["age_group"] = "adult"
  else
    details["age_group"] = "senior"
  end
end

puts munsters






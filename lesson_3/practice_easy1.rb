# Question 1
=begin
numbers = [1,2,2,3]
numbers.uniq

puts numbers
=end

# Question 6
=begin
famous_words = "seven years ago..."

complete_famous_words = "Four score and " + famous_words

puts complete_famous_words

puts famous_words.prepend("Four score and ")
=end

# Question 7
=begin
flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]

p flintstones.flatten!
=end


# Question 8

flintstones = { 
  "Fred" => 0,
  "Wilma" => 1,
  "Barney" => 2,
  "Betty" => 3,
  "BamBam" => 4,
  "Pebbles" => 5 
}

p flintstones.to_a[2]
p flintstones.assoc('Barney')

# Question 1
=begin
a = "forty two"
b = "forty two"
c = a

puts a.object_id
puts b.object_id
puts c.object_id
=end

# Question 2
=begin
a = 42
b = 42
c = a

puts a.object_id
puts b.object_id
puts c.object_id
=end

# Question 3 & 4 & 5
=begin
def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param += ["rutabaga"]

  return a_string_param, an_array_param
end

my_string = "pumpkins"
my_array = ["pumpkins"]
my_string, my_array = tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"
=end

# Question 6

def color_valid(color)
  if color == "blue" || color == "green"
    true
  else
    false
  end
end


def color_valid(color)
  color == "blue" || color == "green"
end







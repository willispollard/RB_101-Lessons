hsh = {first: ['the', 'quick'], 
       second: ['brown', 'fox'], 
       third: ['jumped'], 
       fourth: ['over', 'the', 'lazy', 'dog']
     }

vowels = []
hsh.each do |key, array|
  array.each do |string|
    string.chars.select do |char|
      if ['a','e','i','o','u'].include?(char)
        vowels << char
      end
    end
  end
end

puts vowels


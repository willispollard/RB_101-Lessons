hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}
arr = []

hsh.map do |_, details|
  if details[:type] == 'fruit'
    arr << details[:colors].each { |color| color.capitalize }
  elsif details[:type] == 'vegetable'
    arr << details[:size].upcase
  end
end

puts arr

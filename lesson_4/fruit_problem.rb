def select_fruit(produce)
  produce_keys = produce.keys
  counter = 0
  fruits = {}

  loop do
    break if counter == produce_keys.size

    current_key = produce_keys[counter]
    current_value = produce[current_key]

    if current_value == 'Fruit'
      fruits[current_key] = current_value
    end

    counter += 1
  end

  fruits
end

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

puts select_fruit(produce)
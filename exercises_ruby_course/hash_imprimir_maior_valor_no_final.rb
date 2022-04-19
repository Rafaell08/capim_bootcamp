
numbers = {A: 10, B: 30, C: 20, D: 25, E: 15}

puts "Selecionando o maior valor para imprimir junto com a chave."

greather_value = numbers.select do |key, value|
    puts "Key: #{key}"
    puts "Value: #{value}"
    value == numbers.values.max
end

puts "O maior valor em conjunto com a chave é: #{greather_value}"

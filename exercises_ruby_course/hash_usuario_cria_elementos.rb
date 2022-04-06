puts "Insira os elementos que você deseja sendo o primeiro a chave e o segundo o valor: "

print "Primeira chave: "
key1 = "#{gets.chomp}"
print "Primeiro valor: "
value1 = "#{gets.chomp}"

print "Segunda chave: "
key2 = "#{gets.chomp}"
print "Segundo valor: "
value2 = "#{gets.chomp}"

print "Terceira chave: "
key3 = "#{gets.chomp}"
print "Terceiro valor: "
value3 = "#{gets.chomp}"

hash = {key1 => value1, key2 => value2, key3 => value3}

puts "Aqui sera informado todos os elementos a partir do primeiro:"

hash.each do |key, value|
    puts "Essa é a primeira chave #{key} e o seu valor #{value}"
end

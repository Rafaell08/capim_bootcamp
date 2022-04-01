# Aqui foi criado um programa que recebe dois números inteiros e no final imprime a soma, subtração, adição, divisão, valor exponencial e resto entre eles.

puts "Aqui iremos fazer a soma, subtração, adição, divisão, exponencial(**) e resto de uma divisão(%) dos números escolhidos."

print "Insira o primeiro número: "
a = gets.chomp.to_i

print "Insira o segundo número: "
b = gets.chomp.to_i

puts "A soma entre a e b é: #{a + b}"
puts "A subtração entre a e b é: #{a - b}"
puts "A divisão entre a e b é: #{a / b}"
puts "A multiplicação entre a e b é: #{a * b}"
puts "O resultado exponencial de a^b é: #{a ** b}"
puts "O resto da divisão de a por b é #{a % b}"
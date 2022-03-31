s = "\n----------------"

# Aqui foi criado um programa que recebe o nome, sobrenome e idade de uma pessoa e imprime no final.

insert = "Por favor, insira o seu"

print "#{insert} nome: "
name = gets.chomp

print "#{insert} sobrenome: "
lastname = gets.chomp

cname = "#{name} #{lastname}"
puts "Olá #{cname}, tudo bem?"

puts "Qual a sua idade?"
age = gets.chomp

print "Esse é o seu nome: #{cname}. Essa é a sua idade: #{age}."

puts s

require "cpf_cnpj"

def valid_cpf
  print "Insira CPF: "
  cpf = gets.chomp

  if CPF.valid?(cpf, strict: true)
    puts "O CPF é verdadeiro!"
  else
    puts "O CPF é falso!"
  end
end

def valid_cnpj
  print "Insira CNPJ: "
  cnpj = gets.chomp

  if CNPJ.valid?(cnpj, strict: true)
    puts "O CNPJ é verdadeiro!"
  else
    puts "O CNPJ é falso!"
  end
end

puts "Deseja consultar CPF ou CNPJ?"
puts "1 - CPF"
puts "2 - CNPJ"
print "Opção: "

option = gets.chomp.to_i

case option
when 1
  valid_cpf
when 2
  valid_cnpj
else
  puts "Opção inválida!"
end

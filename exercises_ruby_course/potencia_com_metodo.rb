
def potency(base, exponent)
  result = base ** exponent

  puts "O resultado da potência é: #{result}"
end

puts "Digite a base e o expoente desejado:"

print "Base: "
base = gets.chomp.to_f
print "Expoente: "
exponent = gets.chomp.to_f

potency(base, exponent)

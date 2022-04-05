s = "\n----------------"
# Array

# Array vazio
estados = []
puts s
# Adicionando no array
# push adiciona no final do array

estados.push('Maranhão')
puts "Aqui adicionamos um dado no array com push #{estados}"
puts s

# insert adiciona um elemento na posição que você informar
# Ex: estados.insert(<posição>, 'dado')
# Lembrando que sempre se inicia a contagem pelo 0, 1, 2, 3,...

estados.insert(0, 'São Paulo', 'Acre')
puts "Aqui adicionamos dados no array com insert #{estados}"
puts s

estados.insert(1, 'Rio de Janeiro')
puts "Incluindo o Rio de Janeiro na posição do Acre: #{estados}"
puts s

# Acessar um dos elementos no array estados

estados[2]
puts estados[2]
puts s 
puts estados[0..2]
puts s

# Acessar caso estiver em um local muito longe -1, -2, -3,...

estados[-1]
puts estados[-1]
puts s

# Pegando o primeiro elemento do array

estados.first
puts "Puxando o primeiro array com first: #{estados.first}"
puts s

estados.last
puts "Puxando o último array com last: #{estados.last}"
puts s

# Como saber quantos elementos tem no array

estados.count
puts "Usando o count para ver quantos elementos tem no array: #{estados.count}"
puts s

# Como saber se o array esta vazio

array = []
puts "Usando o empty para saber se o array está vazio ou não: #{estados.empty?}"
puts "Testando em um array vazio: #{array.empty?}"
puts s

# Como saber se o elemento que procuramos está incluso no array

puts "Aqui iremos ver se o elemento que procuramos esta incluso: #{estados.include?('São Paulo')}"
puts "Testando um elemento que não temos no array: #{estados.include?('Amapá')}"
puts s

# Para deletar um elemento do array

puts estados
puts "Tiramos um dos estados usando o delete_at: #{estados.delete_at(2)}"
puts estados
puts s

# Usando o pop iremos deletar o último elemento e usando o shift iremos deletar o primeiro elemento
# Ex: estados.pop
# Ex: estados.shift





s = "\n----------------"
# Array, hash e iterações em collections

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

# Hash

# Duas formas de criar hash

capitais = Hash.new
capitais = {}

# Adicionando valores a hash

capitais = {maranhao: 'São Luís', sao_paulo: 'São Paulo'}
puts "Adicionando dois elementos a hash: #{capitais}"
puts s

# Inserindo um novo valor na hash

capitais[:minas_gerais] = "Belo Horizonte"
puts "Elemento adicionado na hash : #{capitais}"
puts s

# Para ver todas as chaves do hash e todos os valores

capitais.keys
puts "#{capitais.keys}"
puts s

capitais.values
puts "#{capitais.values}"
puts s

# Para deletar um iremos usar o delete

capitais.delete(:minas_gerais)
puts "#{capitais}"
puts s

# Obtendo algumas informações do hash

puts "Para obter o tamanho da hash: #{capitais.size}"
puts s

puts "Para saber se esta vazia ou não: #{capitais.empty?}"
puts s

# Iterações em collections: each, map e select.

# each com array

names = ['Joãozinho', 'Manoel', 'Juca']

name = 'Rafael'

names.each do |name|
    puts name
end

# puts name <<<<< teste
puts s

# each com hash

aulas = {'Aula 1' => 'liberada', 'Aula 2' => 'liberada', 'Aula 3' => 'liberada', 'Aula 4' => 'em progresso'}

aulas.each do |key, value|
    puts "#{key} #{value}"
end

puts s

# map

array = [1, 2, 3, 4]

puts "\n Executando .map multiplicando cada item por 2"
# .map não altera o conteúdo do array original
new_array = array.map do |a|
    a * 2
end

puts "\n Array Original"
puts " #{array}"

puts "\n Novo Array"
puts " #{new_array}"

puts s

puts "\n Executando .map! multiplicando cada item por 2"
# .map! força que o conteúdo do array original seja alterado
array.map! do |a|
    a * 2
end

puts "\n Array original"
puts " #{new_array}"

puts s

# select com array

array = [1, 2, 3, 4, 5, 6]

selection = array.select do |a|
    a >= 4
end

puts selection
puts s

# select com hash

hash = {0 => 'zero', 1 => 'um', 2 => 'dois', 3 => 'três'}

puts "Selecionando keys com valor maior que 0"
selection_key = hash.select do |key, value|
    key > 0
end

puts selection_key
puts s

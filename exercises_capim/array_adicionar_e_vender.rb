
books = ["Livro 1", "Livro 2", "Livro 3", "Livro 4", "Livro 5"]
orders = []

puts "Temos cinco livros: #{books}"
puts "O que você deseja fazer?"
puts "1 - Adicionar livro."
puts "2 - Vender livro."
print "Opção: "

option = gets.chomp.to_i

print "Insira o livro que será adicionado ou vendido: "
get = gets.chomp

case option
when 1
    books.push(get)
    puts "Livros atualizados: #{books}"
when 2
    puts "Temos esses livros à venda: #{books}"
    orders.push(get)
    books.delete_at(books.find_index(get))

    puts "O livro vendido foi: #{orders}"
    puts "Livros restantes: #{books}"
end

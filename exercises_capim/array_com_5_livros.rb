
books = ["Livro 1", "Livro 2", "Livro 3", "Livro 4", "Livro 5"]

puts "Temos esses livros: #{books}"

# Adicionar mais livros

puts "Caso queira adicionar mais livros, fique à vontade."

add = gets.chomp

books.push(add)

puts "#{books}"

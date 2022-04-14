=begin

a = 29.90
book1 = a - (a * 0.45)
book2 = a - (a * 0.3)
book3 = a

books = ["Livro 1", "Livro 2", "Livro 3"]
orders = []

puts "Aqui temos três livros a venda: #{books}"

books.each do |venda|
    
    puts "#{book1_sold}"
end
=end

books = ["Odisséia - Homero", "Hamlet – William Shakespeare", "Guerra e Paz – Leon Tolstoi", "Morte e Vida Severina - João Cabral de Melo Neto"]
orders = []

puts "Temos quatro livros: #{books}"
puts "Qual dos livros acima você deseja vender?"
puts "Insira os livros que serão vendidos: "
get1 = gets.chomp
get2 = gets.chomp
get3 = gets.chomp

# a = 29.90
# x = 29.90 - ( a * 0.45 )
# y = 29.90 - ( a * 0.30 )

orders.push(get1, get2, get3)
books.delete_if { |books| books.to_s.start_with?(get1, get2, get3) }
# books.delete_if { |books| books.to_s.include?(get) }
    
puts "O livro vendido foi: #{orders}"
puts "Livros restantes: #{books}"

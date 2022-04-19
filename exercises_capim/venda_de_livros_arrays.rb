
books = ['Odisséia - Homero', 'Hamlet – William Shakespeare', 'Guerra e Paz – Leon Tolstoi', 'Morte e Vida Severina - João Cabral de Melo Neto']
orders = []

puts "Temos quatro livros: #{books}"
puts "Qual dos livros acima você deseja vender?"
print "Livro 1: "
get0 = gets.chomp
print "Livro 2: "
get1 = gets.chomp
print "Livro 3: "
get2 = gets.chomp

puts "\n--------------"

price = 29.90
first_sale_price = 29.90 - ( price * 0.45 )
second_sale_price = 29.90 - ( price * 0.30 )

orders.push(get0, get1, get2)
books.delete_if { |books| books.start_with?(get0, get1, get2) }

puts "O primeiro livro foi: #{orders.to_s[get0]}, seu valor original é R$#{price} o desconto foi de 45% e o valor final foi R$#{first_sale_price.round(2)}."
puts "O segundo livro foi: #{orders.to_s[get1]}, seu valor original é R$#{price} o desconto foi de 30% e o valor final foi R$#{second_sale_price.round(2)}."
puts "O terceiro livro foi: #{orders.to_s[get2]}, seu valor original é R$#{price} mas o teceiro não tem desconto. =("

puts "\n--------------"

puts "Aqui temos os livros vendidos: #{orders}\nAqui temos os livros restantes: #{books}"


books = ['Odisséia - Homero', 'Hamlet – William Shakespeare', 'Guerra e Paz – Leon Tolstoi', 'Morte e Vida Severina - João Cabral de Melo Neto']
orders = []

puts "Temos quatro livros: #{books}"
puts "Qual dos livros acima você deseja vender?"
puts "Insira os livros que serão vendidos: "
get0 = gets.chomp
get1 = gets.chomp
get2 = gets.chomp

a = 29.90
x = 29.90 - ( a * 0.45 )
y = 29.90 - ( a * 0.30 )

orders.push(get0, get1, get2)
books.delete_if { |books| books.to_s.start_with?(get0, get1, get2) }

puts "O primeiro livro foi: #{orders.to_s[get0]}, seu valor original é R$#{a} o desconto foi de 45% e o valor final foi R$#{x.round(2)}."
puts "O segundo livro foi: #{orders.to_s[get1]}, seu valor original é R$#{a} o desconto foi de 30% e o valor final foi R$#{y.round(2)}."
puts "O terceiro livro foi: #{orders.to_s[get2]}, seu valor original é R$#{a} mas o teceiro não tem desconto. =("

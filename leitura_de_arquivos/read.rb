puts "--Lista de compras--"

file = File.open('shopping-list')

file.each do |line|
    puts line
end
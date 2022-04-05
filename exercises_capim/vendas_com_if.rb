=begin
    Venda de Livros: Tenho 1 livro de 29.90, quero saber o valor se eu vender com desconto de 50% ou 25% ou 5%.
=end

# if

loop do
    puts "Escolha o desconto: "
    puts "1 - Desconto de 50%"
    puts "2 - Desconto de 25%"
    puts "3 - Desconto de 5%"
    puts "0 - Sair."
    
    option = gets.chomp.to_i
    
    if option == 0
        break
    end
    
    vfinal = "O valor com desconto é: "
    
    puts "O valor do livro é 29,90"
    a = 29.90
    x = (a * 0.5)
    y = (a * 0.25)
    z = (a * 0.05)
    
    result = 0
    
    result = if option == 1
        result = a - x
        puts "#{vfinal} #{result}"
    elsif option == 2
        result = a - y
        puts "#{vfinal} #{result}"
    elsif option == 3
        result = a - z
        puts "#{vfinal} #{result}"
    else
        puts 'Opção inválida.'
    end
end

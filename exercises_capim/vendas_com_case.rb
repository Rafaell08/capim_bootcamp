=begin
    Venda de Livros: Tenho 1 livro de 29.90, quero saber o valor se eu vender com desconto de 50% ou 25% ou 5%. Fazer duas versões, uma usando o if e outra o case.
=end

# case

    puts 'Escolhe uma das opções de desconto: '
    puts '1 - Desconto de 50%'
    puts '2 - Desconto de 25%'
    puts '3 - Desconto de 5%'

    calc = gets.chomp.to_i

    vfinal = 'O valor com desconto é: '

    a = 29.90
    x = (a * 0.5) 
    y = (a * 0.25)
    z = (a * 0.05)

case calc
when 1
    result = a - x
    puts "#{vfinal} #{result}"
when 2
    result = a - y
    puts "#{vfinal} #{result}"
when 3
    result = a - z
    puts "#{vfinal} #{result}"
else
    puts 'Opção inválida.'
end

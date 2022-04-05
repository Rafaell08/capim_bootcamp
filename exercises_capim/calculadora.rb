
loop do
    puts "Selecione um operador para calcular: "
    puts "1 - Soma."
    puts "2 - Subtração."
    puts "3 - Divisão."
    puts "4 - Multiplicação."
    puts "0 - Sair."
    print "Opção: "

    option = gets.chomp.to_i

    if option == 0
        break
    end

    num1 = "Digite o primeiro número: "
    num2 = "Digite o segundo número: "
    vfinal = "O resultado final é: "

    print "#{num1}"
    a = gets.chomp.to_f
    print "#{num2}"
    b = gets.chomp.to_f

    result = 0

    result = if option == 1
        result = a + b
        puts "#{vfinal} #{result}"
    elsif option == 2
        result = a - b
        puts "#{vfinal} #{result}"
    elsif option == 3
        result = a / b
        puts "#{vfinal} #{result}"
    elsif option == 4
        result = a * b
        puts "#{vfinal} #{result}"
    else
        puts 'Opção inválida.'
    end
end

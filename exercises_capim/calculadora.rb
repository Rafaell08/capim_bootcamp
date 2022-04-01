result = ""

loop do
    puts result
    puts "Selecione um operador para calculo: "
    puts "1 - Soma."
    puts "2 - Subtração."
    puts "3 - Divisão."
    puts "4 - Multiplicação."
    puts "0 - Sair."
    print "Opção: "

    option = gets.chomp.to_i

    num1 = "Digite o primeiro número: "
    num2 = "Digite o segundo número: "
    vfinal = "O resultado da"

    if option == 1
        print "#{num1}"
        a = gets.chomp.to_i
        print "#{num2}"
        b = gets.chomp.to_i
        result = "#{vfinal} soma é: #{a + b}"
    elsif option == 2
        print "#{num1}"
        a = gets.chomp.to_i
        print "#{num2}"
        b = gets.chomp.to_i
        result = "#{vfinal} subtração é: #{a - b}"
    elsif option == 3
        print "#{num1}"
        a = gets.chomp.to_i
        print "#{num2}"
        b = gets.chomp.to_i
        result = "#{vfinal} divisão é: #{a / b}"
    elsif option == 4
        print "#{num1}"
        a = gets.chomp.to_i
        print "#{num2}"
        b = gets.chomp.to_i
        result = "#{vfinal} multiplicação é: #{a * b}"
    elsif option == 0
        break
    else
        result = "Opção inválida."
    end
    # Limpar o terminal para ficar menos poluído
    system "clear"
end
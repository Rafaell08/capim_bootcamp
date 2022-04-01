s = "\n------------------"

# Uso do if, else, elsif, unless e case

# if
day0 = "Sunday"

if day0 == "Sunday"
    lunch = "special"
end

print "Lunch is #{lunch} today"
puts s

# else
day1 = "Saturday"

if day1 != "Saturday"
    lunch = "special"
else
    lunch = "normal"
end

print "Lunch is #{lunch} today"
puts s

# elsif
day2 = "Monday"

if day2 == "Saturday"
    lunch = "special"
elsif day2 == "Monday"
    lunch = "later"
else
    lunch = "normal"
end

print "Lunch is #{lunch} today"
puts s

# unless or if not
product_status = "closed"

unless product_status == "open"
    check_change = "can"
else
    check_change = "can not"
end

print "You #{check_change} change the product"
puts s

# case
print "Digite o número do mês que você nasceu: "

month = gets.chomp.to_i

case month
when 1..3
    print "Você nasceu no começo do ano."
when 9..12
    print "Você nasceu no final do ano."
when 4..6
    print "Você nasceu na primeira metade do ano."
when 7..9
    print "Você nasceu na segunda metade do ano."
else
    print "Não foi possível identificar."
end

puts s

# Estruturas de repetição for, while, times, do/while

# for
fruits = ["maçã, ", "uva e ", "morango"]

for fruit in fruits
    print fruit
end

puts s

count = 1

for x in fruits
    puts x
    puts count
    count += 1
end

puts s

# while
x = 1

while x <= 10
    puts x
    x += 1
end

puts s

# do/while or loop
count = 1

loop do
    puts count
    if count == 10 # or break if count == 10
        break
    end
    count += 1
end

puts s

# times

10.times do
    puts "Olá"
end

# Iteração mais condicional
result = ""

loop do
    puts result
    puts "Selecione uma das seguintes opções: "
    puts "1 - Descobrir a idade de uma pessoa."
    puts "0 - Sair."
    print "Opção: "

    option = gets.chomp.to_i

    if option == 1
        print "Digite o ano de nascimento: "
        year_of_birth = gets.chomp.to_i
        print "Digite o ano atual: "
        current_year = gets.chomp.to_i
        age = current_year - year_of_birth
        puts "\n------------------"
        result = "Quem nasceu no ano de #{year_of_birth}, tem #{age} anos em #{current_year}"
    elsif option == 0
        break if option == 0
    else
        result = "Opção inválida"
        puts "\n------------------"
    end
end

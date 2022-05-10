phone_number = /.?(\d+).? \d+-\d+/.match('(98) 99198-0364')

puts "Olá, tudo bem? Meu whatsapp é #{phone_number}"

# Para adicionar elementos especiais basta usar .?
s = "\n-----------------------"

# Métodos são uma forma de organizar instruções em um programa, permitindo que trechos de códigos sejam reutilizados.

# Parâmetros

# Ex 1:
def talk
    puts 'Olá, tudo bem?'
end

talk

puts s

def talk (first_name, last_name)
    puts "Olá #{first_name} #{last_name}, tudo bem?"
end

# Com ou sem
# first_name = 'Rafael'
# last_name = 'Cavassana'

talk('Rafael', 'Cavassana')

puts s

# Ex 2:

def signal(color = 'vermelho')
    puts "O sinal está #{color}"
end

signal

color = 'verde'
signal(color)

signal('amarelo')

puts s
# Retorno

# Para de executar quando encontra o return

def compare(a, b)
    a > b
end

a = 1
b = 2

result = compare(a, b)

puts "O resultado da comparação é: #{result}"

def compare(a, b)
    return false
    a > b
end

a = 2
b = 1

result = compare(a, b)

puts "Um teste usando return que no código esta retornando true: #{result}"

puts s

# Gems: é um pacote que oferece funcionalidades a fim de resolver uma necessidade específica de um programa Ruby.

require 'os'

def my_os
    if OS.windows?
        "Windows"
    elsif OS.linux?
        "Linux"
    elsif OS.mac?
        "Mac"
    else
        "Não consegui identificar"
    end
end

puts "Meu PC possui #{OS.cpu_count} cores, é #{OS.bits} bits e o sistema operacional é #{my_os}."

puts s

# Bundler: para ter controle sobre as dependências de um projeto contamos com uma ferramenta que procura e instala gems chamada Bundler. Foi criado um "Gemfile" como exemplo.

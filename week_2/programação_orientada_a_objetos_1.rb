s = "\n-------------------"

=begin
  POO: É um paradigma de programação criado para lidar com softwares grandes e complexos.

  Abstração: Ação de abstrair uma entidade do mundo real e transformá-la em uma classe.

  Encapsulamento: Ato de dividir um programa em diversas partes tornando-o flexível, fácil de modificar e incluir novas funcionalidades.

  Herança: Habilidade de criar uma classe com características de outra existente. A herança promove o reuso e reaproveitamento de código.

  Poliformismo: Capacidade de utilizar um método de diferentes formas para diferentes objetos.

=end

# Class 

class Computer
    def turn_on
        'turn on the computer'
    end

    def shutdown
        'shutdown the computer'
    end
end

computer = Computer.new

puts computer.turn_on
puts computer.shutdown

puts s

# Herança

class Animal
    def pular
        puts 'Toing! tóim! bóim! póim!'
    end

    def dormir
        puts 'ZzZzZzZzZzZz'
    end
end

class Cachorro < Animal
    def latir
        puts 'Au Au'
    end
end

class Gato < Animal
    def meow
        puts 'meow'
    end
end

cachorro = Cachorro.new
cachorro.pular
cachorro.dormir
cachorro.latir

puts s

gato = Gato.new
gato.meow
gato.pular
gato.dormir

puts s

# Polimorfismo

class Instrumento
    def escrever
        puts 'Escrevendo'
    end
end

class Teclado < Instrumento
    def escrever
        puts "tecladooooooo"
        super # Coloca em prioridade, sobrescrever.
    end
end

class Lapis < Instrumento
    def escrever
        puts 'Escrevendo à Lápis'
    end
end

class Caneta < Instrumento
    def escrever
        puts 'Escrevendo à Caneta'
    end
end

teclado = Teclado.new
lapis = Lapis.new
caneta = Caneta.new

puts "lapis:"
lapis.escrever
puts "caneta:"
caneta.escrever
puts "teclado:"
teclado.escrever

s = "\n-------------------------"

# Um bloco pode ser entendido como uma função anônima, ou seja, uma função sem nome.

# É definido entre do..end ou colchetes e da mesma forma que os métodos que você viu até agora, pode receber parâmetros para sua execução.

# Block simples

3.times { puts "Exec the block" }

puts s

# Block usando array, pode receber parâmentros

sum = 0
numbers = [5, 10, 5]
numbers.each { |number| sum += number }
puts sum

puts s

# Blocks de multiplas linhas, um conjunto de códigos

foo = {2 => 3, 4 => 5}

foo.each do |key, value|
    puts "key = #{key}"
    puts "value = #{value}"
    puts "key * value = #{key * value}"
    puts "----"
end

puts s

# Criar método que recebe um bloco como parâmetro

def foo
    # Call the block
    yield
    yield
end

foo { puts "Exec the block" }

foo do
    puts "Each"
    puts 123
end

puts s

# Verificar se o bloco foi dado então executa se não, não executa

def doo
    if block_given?
        # Call the block
        yield
    else
        puts "Sem parâmetro do tipo bloco"
    end
end

doo
doo { puts "Com parâmetro do tipo bloco" }

puts s

# Outra forma de receber bloco como parâmetro

def foo(name, &block)
    @name = name
    block.call
end

foo('Rafael') { puts "Hello #{@name}" }

puts s

# Passar um bloco que ocupa várias linhas como parâmetro

def foo(numbers, &block)
    if block_given?
        numbers.each do |key, value|
            block.call(key, value)
        end
    end
end

numbers = { 2 => 2, 3 => 3, 4 => 4 }

foo(numbers) do |key, value|
    puts "#{key} * #{value} = #{key * value}"
    puts "#{key} + #{value} = #{key + value}"
    puts "----"
end

puts s

# Lambda são similares aos blocks, mas podem ser salvas em variáveis para serem reutilizadas.

first_lambda = lambda { puts "my first lambda" }
first_lambda.call

puts s

# Abreviar o lambda

second_lambda = -> { puts "my second lambda" }
second_lambda.call

puts s

# Recebendo parâmetros no lambda

first_lambda = -> (names) { names.each { |name| puts name } }

names = ["João", "Maria", "Pedro"]

first_lambda.call(names)

puts s

# Em lambdas que ocupam várias linhas, não declare a lambda de forma abreviada e utilize o do..end

my_lambda = lambda do |numbers|
    index = 0
    puts 'Número atual + Próximo número'
    numbers.each do |number|
        return if numbers[index] == numbers.last
        puts "(#{numbers[index]}) + (#{numbers[index + 1]})"
        puts numbers[index] + numbers[index + 1]
        index += 1
    end
end

numbers = [1, 2, 3, 4]

my_lambda.call(numbers)

puts s

# É possível passar mais de uma lambda como argumentos de um método.

def foo(first_lambda, second_lambda)
    first_lambda.call
    second_lambda.call
end

first_lambda = lambda { puts "first lambda" }
second_lambda = lambda { puts "second lambda" }

foo(first_lambda, second_lambda)

puts s

# Modules serve para melhorar e agrupar o código.

# 1 - Namespace: Serve como um container para agrupar objetos relacionados(classes, constantes, métodos ou outros modules).

# 2 - Mixins: Serve para incluir funcionalidades extras as classes.

# Namespace

module ReverseWorld # Como se você estivesse dentro da pasta ReverseWorld e fosse usar os atributos que possue nela.
    def self.puts(text)
        print text.reverse.to_s
    end

    class Imprimir
        def call(text)
            print text
            print '-----Imprimir-----'
        end
    end
end

# module NormalWorld
#     def self.puts(text)
#         print text
#     end
# end

ReverseWorld::puts 'O resultado é'

imprimir = ReverseWorld::Imprimir.new
imprimir.call 'O resultado é:'

# NormalWorld::puts 'O resultado é:'

puts s

#Mixins esta dentro da pasta avançado

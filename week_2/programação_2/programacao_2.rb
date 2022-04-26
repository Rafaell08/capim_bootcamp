s = "\n-------------------------"

# Require: carregar gems ou arquivos escritos por você mesmo.

class Animal
    def pular
        puts 'Toing! tóim! bóim! póim!'
    end

    def dormir
        puts 'ZzZzZzZzZzZz'
    end
end

=begin 
    
    Escopo das variáveis: define onde a variável vai estar disponível dentro do programa. No ruby existem 4 tipos: 
    
    Variável local: declarada com a primeira letra de seu nome sendo uma letra minúscula ou sublinhado. Pode ser usado apenas onde foi criado.
    
    Variável global: declarado com o prefixo $. Vísivel em qualquer lugar do código e pode ser alterado(dificultando rastrear um bug).

    Variável de classe: é declarada com o prefixo @@. Pode ser acessada em qualquer lugar da classe onde foi declarada e seu valor é compartilhado entre todas as instâncias de sua classe.

    Variável de instância: seu nome começa com o símbolo @. Semelhante a variável de classe, tendo como única diferença o valor que não é compartilhado entre todas as instâncias de sua classe.

=end

# Variável local

def foo
    local = 'local é acessada apenas dentro deste método'
    print local
end

foo
# puts local > Erro pois esta sendo usada fora do método

puts s

# Variável Global

class Bar
    def foo
        $global = 0
        puts $global
    end
end

class Baz
    def qux
        $global += 1
        puts $global
    end
end

bar = Bar.new
baz = Baz.new
bar.foo
baz.qux
baz.qux
baz.qux
puts $global

$global = 1234

puts $global

puts s

# Variável de classe

class User
    @@user_count = 0
    def add(name)
        puts "User #{name} adicionado"
        @@user_count += 1
        puts @@user_count
    end
end

first_user = User.new
first_user.add('João')

second_user = User.new
second_user.add('Mario')

puts s

# Variável de instância

class User
    def add(name)
        @name = name
        puts "User adicionado"
        hello
    end

    def hello
        puts "Seja bem vindo, #{@name}!"
    end
end

user = User.new
user.add('João')

puts s

# Atributos(ou variáveis de instância) no Ruby são sempre privados e começam com @, eles só podem ser alterados pelos métodos de um objeto.

# class Dog
#     def name # O primeiro vai apenas ler uma variável de instância
#         @name
#     end

#     def name= name # O segundo vai escrever a variável de instância chamada 'name'
#         @name = name # Seta um valor
#     end
# end

class Dog
    attr_accessor :name, :age
end

dog = Dog.new
dog.name = 'Marlon'
puts dog.name

dog.age = '1 ano'
puts dog.age

puts s

# Construtores: toda vez que a instância de uma classe é criada, o Ruby procura por um método chamado initialize. Você pode criar este método para especificar valores padrões durante a construção do objeto.

class Person
    def initialize(name, age)
        @name = name
        @age = age
    end

    def check
        puts "Instância da classe iniciada com os valores:"
        puts "Nome = #{@name}"
        puts "Idade = #{@age}"
    end
end

person = Person.new('João', 19)
person.check

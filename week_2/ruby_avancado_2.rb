s = "-" * 20

# Regex: as expressões regulares são notações para representar padrões em strings, elas servem para validar entradas de dados ou fazer busca e extração de informações em textos.

# Formas possíveis de criar o regex:

puts /abcd/.class
puts %r{abcd}.class
puts Regexp.new('expressao').class

puts s

# Encontrar ou achar algo

puts /by/ =~ 'ruuuby'

puts s

# Método math

phrase = "Hello, how are you?"
match_data = /how/.match(phrase)
puts match_data

puts s

puts match_data.pre_match
puts match_data.post_match

puts s

puts /\?/.match('Tudo bem?')

puts s

# Character classes(delimitada por colchetes)

puts /[t]exto/.match('texto começando com t')
puts /[t]exto/.match('--texto começando com t')

puts s

# Você pode especificar um range com o símbolo

puts /[1-5]/.match('123')

puts s

puts /[a-z]/.match('Oi')
puts /A\d/.match('A4') # d = decimal

puts s

# Repetição

puts /[0-9][0-9]-[0-9]/.match('11-966640727') # Não tem repetição aqui
puts /[0-9]{2}-[0-9]{9}/.match('11-966640727')
puts /\d{2,}-\d{9,}/.match('1100-98769543700') # Caso colocar uma , depois da quantidade significa que pode ser 2 ou mais caracteres ou 9 ou mais caracteres.

puts s

# Time: representar datas e horas.

# Horário atual

time = Time.now
puts time
puts time.year
puts time.day

puts s

# Fazer uma formatação de uma data em uma forma específica.

puts time.strftime('%d/%m/%y')

puts time.saturday?

puts s

# Method Missing: utilizado para interceptar chamadas a métodos que não existem.

class Fish
    def method_missing(method_name)
        puts "Fish don't have #{method_name} behavior"
    end

    def swim
        puts 'Fish is swimming'
    end
end

fish = Fish.new
fish.swim
fish.walk
fish.run
fish.qualquercoisa

puts s

# Self: é uma variável especial que aponta para o objeto atual.

class Foo
    def bar
        puts self
    end
end

foo = Foo.new
puts foo
foo.bar

puts s

class Foo
    def self.bar
        puts self
    end
end

Foo.bar

puts s

class Pen
    attr_accessor :color, :color1
    def pen_color
        puts "The color is " + self.color
        puts "The color is " + self.color1
    end
end

pen = Pen.new
pen.color = "blue"
pen.color1 = "green"
pen.pen_color

puts s

# Métodos privados e protegidos: Por padrão, todos os métodos definidos são públicos. Isso significa que eles podem ser acessador por qualquer um. Além dos métodos públicos, existem outros dois tipos de métodos chamados private e protected.

# Private

class Foo
    def call_private
        bar
    end

    private

    def bar
        puts "private method"
    end
end

foo = Foo.new
foo.call_private
# foo.bar O método bar é privado, pode ser apenas chamado por um outro método não por uma instância

puts s

# Protected

class Foo
    def call_protected(instance)
        instance.bar
    end

    protected

    def bar
        puts "protected method"
    end
end

instance_1 = Foo.new
instance_2 = Foo.new

instance_1.call_protected(instance_1)
instance_1.call_protected(instance_2)


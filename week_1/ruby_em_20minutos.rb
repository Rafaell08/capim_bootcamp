s = "\n---------------"

=begin

Sobre algumas coisas que sei de git:
 Estudar os comandos mais avançados do git.

 git status: verificar quais arquivos foram alterados.
 git diff: verificar os códigos que foram alterados.
 git add . : adicionar todos as alterações para fazer commit.
 git add <nome_do_item> : adicionar apenas um item específico para fazer commit.
 git commit -m "Mensagem desejada": commitar um item, sempre importante usar alguns prefixos como "Add", "Fix", "Improve", "Change"...

=end

# Focar no ruby por enquanto.

puts "Olá mundo0"
# Puts é o comando básico para imprimir algo em Ruby.

puts s

# Calculando no Ruby.
x = 3+2
y = 3*2
z = 3**2
w = 4**2

puts x
puts y
puts z
puts Math.sqrt(9)
puts Math.sqrt(z+w)

puts s
=begin

    Olá sem cansar os dedos. Definindo um método!
    def para definir um método.

=end

def a
    puts "Olá Mundo1!"
end
puts a
# Pode rodar no terminal de duas formas, "h" ou "h()". Os parênteses vazios não são necessários.

def b(nome)
    puts "Olá #{nome}!"
end

puts b("Rafael")
puts b "João"

# A expressão #{name} é a forma de inserir alguma coisa numa string. Aquilo que esta entre chaves transforma-se numa string(se já não o for).

def c(nome = "Mundo2")
    puts "Olá #{nome.capitalize}!"
end

# "capitalize" coloca sempre a primeira letra em maiúsculo.

puts c "david"
puts c ("arnold")
puts c

puts s

=begin

    class. Ela define uma nova class chamada "Anfitriao" e alguns métodos para essa class.
    O @nome é uma variável de instância e está disponível para todos os métodos da classe.

=end

class Anfitriao
    def initialize(nome = "Mundo")
        @nome = nome
    end
    def diz_ola
        puts "Olá #{@nome}!"
    end
    def diz_adeus
        puts "Adeus #{@nome}, volte sempre."
    end
end

d = Anfitriao.new("João")

d.diz_ola
d.diz_adeus

# Como ver métodos disponíveis para os objetos "Anfitriao" Anfitriao.instance_methods.
q = Anfitriao.instance_methods
print "Outros métodos que podem ser usados também:\n #{q}"

puts s

puts d.respond_to?("nome")
puts d.respond_to?("diz_ola")
puts d.respond_to?("to_s")

puts s

# Modificando classes - nunca é tarde demais

class Anfitriao
    attr_accessor :nome
end

puts d = Anfitriao.new("Pedro")
puts d.respond_to?("nome")
puts d.respond_to?("nome=")
puts d.diz_ola
puts d.nome="Matilde"
puts d
puts d.nome
puts d.diz_ola

# O uso de "attr_accessor" definiu dois novos métodos para nós: "nome" para obter o valor e "nome=" para alterá-lo.

puts s

# Criando um MegaAnfitriao!

class MegaAnfitriao
  attr_accessor :nomes

  # Criar o objeto
    def initialize(nomes = "Mundo")
        @nomes = nomes
    end

    # Dizer ola a todos
    def diz_ola
        if @nomes.nil?
            puts "..."
        elsif @nomes.respond_to?("each")
            # @nomes é uma lista de algum tipo,
            # assim podemos iterar!
            @nomes.each do |nome| #A variável entre as barras é o parâmetro para este bloco.
                puts "Olá #{nome}"
            end
        else
            puts "Olá #{@nomes}"
        end
    end

    # Dizer adeus a todos
    def diz_adeus
        if @nomes.nil?
            puts "..."
        elsif @nomes.respond_to?("join")
            # Juntar os elementos à lista
            # usando a vírgula como separador
            puts "Adeus #{@nomes.join(", ")}. Voltem em breve."
        else
            puts "Adeus #{@nomes}. Volte em breve."
        end
    end
end

if __FILE__ == $0 
    # __FILE__ é uma variável que contém o nome do arquivo atual.
    # $0 é o nome do arquivo usado para iniciar o programa.
    
    ma = MegaAnfitriao.new
    ma.diz_ola
    ma.diz_adeus

    # Alterar o nome para "Diogo"
    ma.nomes = "Diogo"
    ma.diz_ola
    ma.diz_adeus

    # Alterar o nome para um vetor de nomes
    ma.nomes = ["Alberto", "Beatriz", "Carlos", "David", "Ernesto"]
    ma.diz_ola
    ma.diz_adeus

    # Alterar para nil
    ma.nomes = nil
    ma.diz_ola
    ma.diz_adeus
end

puts s


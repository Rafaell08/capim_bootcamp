s = "\n---------------------------"

=begin
    
    Criar três classes e em cada uma criar um método:
      1 - Esportista
            competir > Imprimir: "Participando de uma competição"
      2 - JogadorDeFutebol
            correr > Imprimir: "Correndo atrás da bola"
      3 - Maratonista
            correr > Imprimir: "Percorrendo o circuito"

    As classes JogadorDeFutebol e Maratonista devem herdar os comportamentos da classe Esportista. No final do programa execute os métodos 'competir' e 'correr' em objetos do tipo JogadorDeFutebol e Maratonista.

=end

class Esportista
    def competir
        puts 'Participando de uma competição'
    end
end

class JogadorDeFutebol < Esportista
    def correr
        puts 'Correndo atrás da bola'
    end
end

class Maratonista < Esportista
    def correr
        puts 'Percorrendo o circuito'
    end
end

esportista = Esportista.new
puts "Esportista:"
esportista.competir

puts s

jogador = JogadorDeFutebol.new
puts "Jogador:"
jogador.competir
jogador.correr

puts s

maratonista = Maratonista.new
puts "Maratonista:"
maratonista.competir
maratonista.correr

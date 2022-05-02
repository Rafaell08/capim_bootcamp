
class Market
    def initialize(product)
        @name = product.name
        @price = product.price
    end

    def purchase
        puts "Você comprou o produto #{@name} no valor de R$#{@price}."
    end
end

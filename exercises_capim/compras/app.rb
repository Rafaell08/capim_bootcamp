require_relative './produto.rb'
require_relative './mercado.rb'

product = Product.new
product.name = 'Livro'
product.price = 40.00

market = Market.new(product)
market.purchase

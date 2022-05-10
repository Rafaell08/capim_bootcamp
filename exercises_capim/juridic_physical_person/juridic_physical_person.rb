
module Person
    class Physical
        def initialize(name, cpf)
            @name = name
            @cpf = cpf
        end

        def add
            puts "Pessoa física adicionada!"
            puts "Nome: #{@name}"
            puts "CPF: #{@cpf}"
        end
    end

    class Juridic
        def initialize(company, cnpj)
            @company = company
            @cnpj = cnpj
        end

        def add
            puts "Pessoa jurídica adicionada!"
            puts "Empresa: #{@company}"
            puts "CNPJ: #{@cnpj}"
        end
    end
end

Person::Physical.new('Rafael', '123.123.123-12').add
puts "----------"
Person::Juridic.new('Empresa X', '0000.000/0001').add

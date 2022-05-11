
class Car
    def get_km(text)
        find_km(text)
    end

    private

    def find_km(text)
        puts /\d{2}[a-z]{2}\/[h]/.match(text)
    end
end

text = "Um fusca de cor amarela viaja a 80km/h"
car = Car.new
car.get_km(text)

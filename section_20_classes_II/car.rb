class Car
    def initialize(base_value, age,miles)
        @base_value = base_value
        @age = age
        @miles = miles
        age_deduction = age * 1000
        miles_deduction = miles / 10.0
        @value = base_value - age_deduction - miles_deduction
    end

    def compare_car_with(car)
        self.value > car.value ? "Your car is better" : "Your car is worse"
    end

    protected 

    def value
        @value
    end
end

car1 = Car.new(20000,5,10000)
car2 = Car.new(15000,7,90000)

p car1.compare_car_with(car2)
p car1.value
class Employee
    attr_reader :name
    attr_accessor :age
    
    def initialize(name,age)
        @name = name
        @age = age
    end
    
    def introduce
        "Hi, my name is #{name} and I am #{age} years old"
    end
end

class Manager < Employee
    attr_reader :rank
    def initialize(name, age, rank)
        super(name, age)
        @rank = rank
    end
    def introduce
        result = super
        result += ". I'm also a manager"
    end
end

joe = Employee.new('Joe', 25)
sally = Manager.new('Sally', 42, 'Senior Vice President')
# p joe.introduce
# p sally.introduce


class Car
    attr_reader :maker
    def initialize(maker)
        @maker = maker
    end

    def drive
        "Vroom Vroom"
    end
end

class Firetruck < Car
    attr_reader :sirens
    def initialize(maker,siren)
        super(maker)
        @siren = siren
    end

    def drive(speed)
        super() + " Beep Beep I'm driving at #{speed} MPH"
    end
end

car = Car.new('Ford')
truck = Firetruck.new('Chevy', 4)
p car
p truck.drive(45)
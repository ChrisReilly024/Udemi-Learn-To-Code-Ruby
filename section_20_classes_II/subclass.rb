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
p joe.introduce
p sally.introduce